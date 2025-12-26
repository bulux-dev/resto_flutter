import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../common/widgets/widgets.dart';
import 'components/components.dart';
import '../../../../../core/core.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../../../../data/repository/repository.dart';

@RoutePage()
class QuotationListView extends ConsumerStatefulWidget {
  const QuotationListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuotationListViewState();
}

class _QuotationListViewState extends ConsumerState<QuotationListView> with PaginatedControllerMixin<Quotation> {
  late final searchController = TextEditingController();

  @override
  void initState() {
    initPaging();
    initRefreshListener();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    _apiEventSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Quotation List'),
        title: Text(t.common.quotationList),
      ),
      body: Column(
        children: [
          // Search Field
          CustomSearchField(
            controller: searchController,
            decoration: CustomSearchFieldDecoration(
              // hintText: 'Search for customer name...',
              hintText: t.common.searchHere,
            ),
            onChanged: (_) => Future.delayed(Durations.medium3).whenComplete(
              pagingController.refresh,
            ),
          ).fMarginLTRB(16, 16, 16, 0),

          // Items List
          Expanded(
            child: RefreshIndicator.adaptive(
              onRefresh: () => Future.sync(pagingController.refresh),
              child: PagedListView<int, Quotation>(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                pagingController: pagingController,
                builderDelegate: PagedChildBuilderDelegate<Quotation>(
                  itemBuilder: (c, quotation, i) {
                    return QuotationListTile(
                      data: QuotationListTileData(
                        partyName: quotation.party?.name ?? 'N/A',
                        quotationNumber: quotation.invoiceNumber ?? "N/A",
                        amount: quotation.totalAmount ?? 0,
                        status: QuotationStatus.open,
                        date: quotation.quotationDate!,
                      ),
                      onConvertSale: () async {
                        if (ref.canSnackbar(context, PMKeys.quotations, action: PermissionAction.update)) {
                          return _handleEditRoute(
                            context,
                            quotation.id!,
                            isConverting: true,
                          );
                        }
                      },
                      trailing: PopupMenuButton<String>(
                        itemBuilder: (context) {
                          return [
                            (t.common.view, 'view'),
                            if (ref.can(PMKeys.quotations, action: PermissionAction.update)) ...[
                              (t.common.edit, 'edit'),
                            ],
                            if (ref.can(PMKeys.quotations, action: PermissionAction.delete)) ...[
                              (t.common.delete, 'delete'),
                            ],
                          ].map((menu) {
                            return PopupMenuItem<String>(
                              value: menu.$2,
                              child: Text(menu.$1),
                            );
                          }).toList();
                        },
                        onSelected: (v) async {
                          return switch (v) {
                            'view' => _handleViewDetails(context, quotation.id!),
                            'edit' => _handleEditRoute(context, quotation.id!),
                            'delete' => _handleDelete(context, quotation.id!),
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
                          // 'No quotation found!\n Please try adding a quotation.',
                          t.exceptions.noQuotationFound,
                          onRetry: pagingController.refresh,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height: 48,
        child: FloatingActionButton.extended(
          onPressed: () async {
            if (ref.canSnackbar(context, PMKeys.quotations, action: PermissionAction.create)) {
              return await context.router.push<void>(
                QuotationItemListRoute(),
              );
            }
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          // label: const Text('+ Add Quotation'),
          label: Text('+ ${t.common.addQuotation}'),
        ),
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleViewDetails(BuildContext ctx, int id) async {
    final _details = await _fetchQuotationDetails(ctx, id);
    if (ctx.mounted && _details != null) {
      return ctx.router.push<void>(
        InvoicePreviewRoute(
          previewType: ThermalPreview(
            SalePurchaseThermalInvoiceData.fromSale(_details),
            isSale: true,
          ),
        ),
      );
    }
  }

  Future<void> _handleEditRoute(BuildContext ctx, int quotationId, {bool isConverting = false}) async {
    final _details = await _fetchQuotationDetails(ctx, quotationId);

    if (ctx.mounted && _details != null) {
      return ctx.router.push<void>(
        ManageQuotationRoute(
          editModel: _details,
          isConverting: isConverting,
        ),
      );
    }
  }

  Future<void> _handleDelete(
    BuildContext ctx,
    int quotationId,
  ) async {
    final _confirmation = await showDialog(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        // title: 'Do you want to delete this quotation?',
        title: t.prompt.deleteQuotation,
        onDecide: (value) => Navigator.of(popContext).pop(value),
      ),
    );
    if (_confirmation != true) return;

    if (ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref.read(saleRepoProvider).deleteQuotation(quotationId),
        ),
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

  Future<Quotation?> _fetchQuotationDetails(BuildContext ctx, int quotationId) async {
    try {
      final _details = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref.read(saleRepoProvider).getQuotationDetails(quotationId),
        ),
      );

      if (ctx.mounted && _details.data != null) {
        return _details.data;
      }
    } catch (e) {
      if (ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(e.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
    return null;
  }

  @override
  Future<PaginatedListModel<Quotation>> fetchData(int page) {
    return Future.microtask(
      () => ref.read(saleRepoProvider).getQuotationList(
            page: page,
            search: searchController.text,
          ),
    );
  }

  EventSub<QuotationAE>? _apiEventSub;
  @override
  void initRefreshListener() {
    _apiEventSub = ref.read(gEventListenerProvider).on<QuotationAE>().listen((event) {
      pagingController.refresh();
    });
  }
}
