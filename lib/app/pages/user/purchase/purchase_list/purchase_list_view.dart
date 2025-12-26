import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../widgets/widgets.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../common/widgets/widgets.dart';
import '../../../../data/repository/repository.dart';

part '_purchase_list_view_provider.dart';

@RoutePage()
class PurchaseListView extends ConsumerWidget {
  const PurchaseListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(purchaseListViewProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        controller.initRefreshListener();
      }
    });

    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(t.common.purchaseList),
        actions: [
          DropdownDateFilter(
            value: controller.selectedDateFilter,
            onChanged: controller.updateDateFilter,
          ).fMarginSymmetric(horizontal: 16, vertical: 10),
        ],
      ),
      body: Column(
        children: [
          // Search Field
          CustomSearchField(
            controller: controller.searchController,
            decoration: CustomSearchFieldDecoration(
              // hintText: 'Search invoice no',
              hintText: t.common.searchInvoiceNumber,
            ),
            appliedFilterCount: controller.filterCount,
            onTapFilter: () async {
              return await showFilterModalSheet<PurchaseListFilter, String>(
                context: context,
                selectedFilters: controller.filters,
                filters: [
                  FilterModalData.radioTiles(
                    key: PurchaseListFilter.paymentStatus,
                    items: [
                      RadioFilterModalData(
                        label: TransactionCardStatus.paid.label,
                        value: 'paid',
                      ),
                      RadioFilterModalData(
                        label: TransactionCardStatus.due.label,
                        value: 'due',
                      ),
                    ],
                  ),
                ],
                onSave: controller.handleFilter,
              );
            },
            onChanged: (_) => Future.delayed(Durations.medium3).whenComplete(
              controller.pagingController.refresh,
            ),
          ).fMarginLTRB(16, 16, 16, 0),

          // Transaction List
          Expanded(
            child: RefreshIndicator.adaptive(
              onRefresh: () => Future.sync(controller.pagingController.refresh),
              child: PagedListView<int, Purchase>(
                padding: const EdgeInsetsDirectional.only(
                  top: 16,
                  bottom: 72,
                ),
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                pagingController: controller.pagingController,
                builderDelegate: PagedChildBuilderDelegate<Purchase>(
                  itemBuilder: (c, purchase, i) {
                    final _hasDue = (purchase.dueAmount ?? 0) > 0;

                    final _cardData = TransactionCardData(
                      cardType: TransactionCardType.purchaseList(
                        status: _hasDue ? TransactionCardStatus.due : TransactionCardStatus.paid,
                      ),
                      invoiceNumber: purchase.invoiceNumber ?? "N/A",
                      paymentType: purchase.paymentMethod?.name,
                      primaryValue: purchase.totalAmount ?? 0,
                      secondaryValue: (_hasDue ? purchase.dueAmount : purchase.paidAmount) ?? 0,
                      transactionDate: purchase.purchaseDate,
                    );

                    return TransactionCard(
                      cardData: _cardData,
                      action: PopupMenuButton<String>(
                        itemBuilder: (_) {
                          return [
                            ('view', t.common.view),
                            if (ref.can(PMKeys.dueCollection) && _hasDue) ...[
                              ('received', t.common.received),
                            ],
                            if (ref.can(PMKeys.purchases, action: PermissionAction.update)) ...[
                              ('edit', t.common.edit),
                            ],
                            if (ref.can(PMKeys.purchases, action: PermissionAction.delete)) ...[
                              ('delete', t.common.delete),
                            ],
                          ].map((menu) {
                            return PopupMenuItem<String>(
                              value: menu.$1,
                              child: Text(menu.$2),
                            );
                          }).toList();
                        },
                        onSelected: (v) async {
                          return switch (v) {
                            "view" => _handleViewDetails(context, purchase.id!),
                            'received' => _handlePaymentReceive(context, purchase),
                            'edit' => _handleEdit(context, purchase.id!),
                            'delete' => _handleDelete(
                                context,
                                () => ref.read(purchaseRepoProvider).deletePurchase(purchase.id!),
                              ),
                            _ => null,
                          };
                        },
                        child: const Icon(Icons.more_vert),
                      ),
                    );
                  },
                  noItemsFoundIndicatorBuilder: (context) {
                    return EmptyWidget(
                      replaceDefault: false,
                      emptyBuilder: (context) {
                        return RetryButtons.scrollView(
                          t.exceptions.noItemFoundPleaseTryAddingItem,
                          onRetry: controller.pagingController.refresh,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 48,
        child: FloatingActionButton.extended(
          onPressed: () async {
            if (ref.canSnackbar(context, PMKeys.purchases, action: PermissionAction.create)) {
              return await context.router.push<void>(
                ManagePurchaseRoute(),
              );
            }
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          label: Text('+ ${t.common.addPurchase}'),
        ),
      ),
    ).unfocusPrimary();
  }

  Future<void> _handlePaymentReceive(
    BuildContext context,
    Purchase purchase,
  ) async {
    return await context.router.push<void>(
      ManageDueCollectionRoute(
        collection: DueCollection(
          party: purchase.party,
          partyId: purchase.partyId,
          dueAmountAfterPay: purchase.dueAmount,
          refInvoiceNumber: purchase.invoiceNumber,
        ),
      ),
    );
  }

  Future<void> _handleViewDetails(BuildContext ctx, int id) async {
    final ref = ProviderScope.containerOf(ctx);
    try {
      final _details = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => ref.read(purchaseRepoProvider).getPurchaseDetails(id),
      );

      if (ctx.mounted) {
        return ctx.router.push<void>(
          InvoicePreviewRoute(
            previewType: ThermalPreview(
              SalePurchaseThermalInvoiceData.fromPurchase(_details.data!),
            ),
          ),
        );
      }
    } catch (error) {
      if (ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(error.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
  }

  Future<void> _handleEdit(BuildContext ctx, int id) async {
    try {
      final _details = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => ProviderScope.containerOf(ctx).read(purchaseRepoProvider).getPurchaseDetails(id),
      );

      if (ctx.mounted) {
        return await ctx.router.push<void>(
          ManagePurchaseRoute(editModel: _details.data),
        );
      }
    } catch (error) {
      if (ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(error.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
  }

  Future<void> _handleDelete(
    BuildContext ctx,
    Future<Either<String, String>> Function() callback,
  ) async {
    final _confirmation = await showDialog(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        title: Translations.of(popContext).exceptions.doYouWantToDeleteThisPurchase,
        onDecide: (value) => Navigator.of(popContext).pop(value),
      ),
    );
    if (_confirmation != true) return;

    if (ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(callback),
      );

      if (ctx.mounted) {
        if (_result.isFailure) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }
      }
    }
  }
}
