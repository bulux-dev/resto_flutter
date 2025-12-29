import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repository/repository.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../common/widgets/widgets.dart';
import '_order_card.dart';

class OrderListWidget extends ConsumerStatefulWidget {
  const OrderListWidget({super.key, this.status});
  final String? status;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends ConsumerState<OrderListWidget> with PaginatedControllerMixin<Sale> {
  final _filters = ValueNotifier<Map<String, dynamic>>({
    'date_filter': DropdownDateFilter.daily,
    'order_type': null,
    'payment_status': null,
  });
  late final searchController = TextEditingController();

  @override
  void initState() {
    initPaging();
    initRefreshListener();
    super.initState();
  }

  @override
  void dispose() {
    _apiEventSub?.cancel();
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return Column(
      children: [
        // Search Field
        ValueListenableBuilder(
          valueListenable: _filters,
          builder: (_, selectedFilters, __) {
            return CustomSearchField(
              controller: searchController,
              decoration: CustomSearchFieldDecoration(
                // hintText: 'Search invoice no',
                hintText: t.common.searchInvoiceNumber,
              ),
              appliedFilterCount: selectedFilters.entries.where((e) => e.value != null).length,
              onTapFilter: () async {
                return await showFilterModalSheet<String, dynamic>(
                  context: context,
                  selectedFilters: {...selectedFilters},
                  filters: [
                    FilterModalData.dateFilterDropdown(
                      key: 'date_filter',
                      // labelText: 'Date',
                      labelText: t.common.date,
                    ),
                    FilterModalData.dropdown(
                      key: 'order_type',
                      // labelText: 'Order Type',
                      labelText: t.pages.orderList.filters.orderType.label,
                      // hintText: 'Select Order Type',
                      hintText: t.pages.orderList.filters.orderType.hint,
                      items: [
                        ...[
                          // (label: 'All', value: null),
                          (label: t.common.all, value: null),
                          // (label: 'Dine In', value: 'dine_in'),
                          (label: t.enums.orderTypes.dineIn, value: 'dine_in'),
                          // (label: 'Pickup', value: 'pickup'),
                          (label: t.enums.orderTypes.pickUp, value: 'pickup'),
                          // (label: 'Delivery', value: 'delivery'),
                          (label: t.enums.orderTypes.delivery, value: 'delivery'),
                        ].map((entry) {
                          return CustomDropdownMenuItem<String?>(
                            value: entry.value,
                            label: TextSpan(text: entry.label),
                          );
                        })
                      ],
                      gridFlex: 6,
                    ),
                    FilterModalData.dropdown(
                      key: 'payment_status',
                      gridFlex: 6,
                      // labelText: 'Payment Status',
                      labelText: t.pages.orderList.filters.paymentStatus.label,
                      // hintText: 'Select Payment Status',
                      hintText: t.pages.orderList.filters.paymentStatus.hint,
                      items: [
                        ...[
                          // (label: 'All', value: null),
                          (label: t.common.all, value: null),
                          // (label: 'Paid', value: 'paid'),
                          (label: t.enums.paymentStatus.paid, value: 'paid'),
                          // (label: 'Unpaid', value: 'unpaid'),
                          (label: t.enums.paymentStatus.unpaid, value: 'unpaid'),
                        ].map((entry) {
                          return CustomDropdownMenuItem<String?>(
                            value: entry.value,
                            label: TextSpan(text: entry.label),
                          );
                        })
                      ],
                    ),
                  ],
                  onSave: (value) => _filters.value = value,
                );
              },
              onChanged: (_) => Future.delayed(Durations.medium3).whenComplete(
                pagingController.refresh,
              ),
            );
          },
        ).fMarginLTRB(16, 16, 16, 0),

        // Transaction List
        Expanded(
          child: RefreshIndicator.adaptive(
            onRefresh: () => Future.sync(pagingController.refresh),
            child: PagedListView<int, Sale>(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              pagingController: pagingController,
              builderDelegate: PagedChildBuilderDelegate<Sale>(
                itemBuilder: (c, sale, i) {
                  final _cardData = TransactionCardData(
                    cardType: OrderCardType.orderList(
                      status: sale.isPaymentPending
                          ? OrderCardTransactionStatus.pending
                          : OrderCardTransactionStatus.completed,
                      hasDue: sale.dueAmount != 0,
                    ),
                    invoiceNumber: sale.invoiceNumber ?? "N/A",
                    transactionDate: sale.saleDate,
                    primaryValue: sale.totalAmount ?? 0,
                    secondaryValue: sale.isPaymentPending
                        ? (sale.dueAmount ?? 0)
                        : sale.dueAmount == 0
                            ? (sale.totalAmount ?? 0) - (sale.dueAmount ?? 0)
                            : (sale.dueAmount ?? 0),
                    tableNumber: sale.kotTable?.name,
                  );
                  return OrderCard(
                    cardData: _cardData,
                    action: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (ref.can(PMKeys.sales, action: PermissionAction.update))
                          if (_cardData.cardType.status == OrderCardTransactionStatus.pending) ...[
                            SizedBox.square(
                              dimension: 24,
                              child: IconButton(
                                onPressed: () async {
                                  return _handleOrderPayment(
                                    context,
                                    sale.id!,
                                  );
                                },
                                style: IconButton.styleFrom(
                                  visualDensity: const VisualDensity(
                                    horizontal: VisualDensity.minimumDensity,
                                    vertical: VisualDensity.minimumDensity,
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                                icon: SvgPicture.asset(
                                  DAppDrawerIcons.expense.svgPath,
                                  colorFilter: ColorFilter.mode(
                                    DAppColors.kSuccess,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox.square(dimension: 4),
                          ],
                        PopupMenuButton<String>(
                          itemBuilder: (_) {
                            return [
                              ('view', t.common.view),
                              if (ref.can(PMKeys.sales, action: PermissionAction.update)) ...[
                                ('edit', t.common.edit),
                              ],
                              if (ref.can(PMKeys.sales, action: PermissionAction.delete)) ...[
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
                            return await switch (v) {
                              'view' => _handleViewDetails(context, sale.id!),
                              'edit' => _handleEdit(context, sale.id!),
                              'delete' => _handleDelete(context, sale.id!),
                              _ => null,
                            };
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: _theme.colorScheme.outline,
                          ),
                        )
                      ],
                    ),
                  );
                },
                noItemsFoundIndicatorBuilder: (context) {
                  return EmptyWidget(
                    replaceDefault: false,
                    emptyBuilder: (context) {
                      return RetryButtons.scrollView(
                        // 'No sale found!\n Please try adding a sale.',
                        t.exceptions.noSaleFoundPleaseTryAddingSale,
                        onRetry: pagingController.refresh,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _handleViewDetails(BuildContext ctx, int id) async {
    final _details = await _fetchSaleDetails(ctx, id);
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

  Future<void> _handleEdit(BuildContext ctx, int saleId) async {
    final _details = await _fetchSaleDetails(ctx, saleId);

    if (ctx.mounted && _details != null) {
      return await ctx.router.push<void>(
        EditOrderRoute(editModel: _details),
      );
    }
  }

  Future<void> _handleDelete(
    BuildContext ctx,
    int saleId,
  ) async {
    final _confirmation = await showDialog(
      context: ctx,
      builder: (popContext) => InfoDialog.confirmation(
        // title: 'Do you want to delete this sale?',
        title: Translations.of(context).exceptions.doYouWantToDeleteThisSale,
        onDecide: (value) => Navigator.of(popContext).pop(value),
      ),
    );
    if (_confirmation != true) return;

    if (ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref.read(saleRepoProvider).deleteSale(saleId),
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

  Future<void> _handleOrderPayment(BuildContext ctx, saleId) async {
    final _details = await _fetchSaleDetails(ctx, saleId);

    if (ctx.mounted && _details != null) {
      return ctx.router.push<void>(
        OrderPaymentRoute(
          saleData: _details.copyWith(isKOT: true),
        ),
      );
    }
  }

  Future<Sale?> _fetchSaleDetails(BuildContext ctx, int saleId) async {
    try {
      final _details = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => ref.read(saleRepoProvider).getSaleDetails(saleId),
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
  Future<PaginatedListModel<Sale>> fetchData(int page) {
    final _dateFilter = _filters.value['date_filter'] as DateFilterDropdownItem?;

    return ref.read(saleRepoProvider).getSaleList(
          page: page,
          search: searchController.text,
          fromDate: _dateFilter?.fromDate.dbFormat,
          toDate: _dateFilter?.toDate.dbFormat,
          status: widget.status,
          paymentStatus: _filters.value['payment_status'],
          salesType: _filters.value['order_type'],
        );
  }

  EventSub<SaleAE>? _apiEventSub;
  @override
  void initRefreshListener() {
    _filters.addListener(pagingController.refresh);

    _apiEventSub = ref.read(gEventListenerProvider).on<SaleAE>().listen((event) {
      pagingController.refresh();
    });
  }
}
