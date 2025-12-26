import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:persistent_header_adaptive/persistent_header_adaptive.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../common/widgets/widgets.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../components/components.dart';
import '../manage_order_notifier_base.dart';
import '../../../../../data/repository/repository.dart';

part '_bottom_nav_action.dart';
part '_quick_order_view_provider.dart';
part '_top_categories_provider.dart';

@RoutePage()
class QuickOrderView extends ConsumerStatefulWidget {
  const QuickOrderView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuickOrderViewState();
}

class _QuickOrderViewState extends ConsumerState<QuickOrderView> {
  late final selectedOrderTypeNotifier = ValueNotifier<OrderTypeEnum>(
    OrderTypeEnum.dineIn,
  );

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userRepositoryProvider);
    final quickOrderController = ref.watch(quickOrderViewProvider);
    final orderCartProvider = ref.watch(quickOrderCartProvider);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            scaffoldKey: widget.scaffoldKey,
            title: Skeletonizer(
              enabled: user.isLoading,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(user.value?.business?.companyName ?? "N/A"),
                titleTextStyle: _theme.textTheme.titleMedium?.copyWith(
                  color: _theme.colorScheme.onPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                subtitle: Text(
                  user.value?.business?.enrolledPlan?.plan?.subscriptionName ?? "N/A",
                ),
                subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
                  color: _theme.colorScheme.onPrimary,
                ),
              ),
            ),
            actions: [
              // 🔄 Botón para refrescar cache de categorías top
              IconButton(
                onPressed: () async {
                  await showAsyncLoadingOverlay(
                    context,
                    asyncFunction: () async {
                      await clearTopProductsCache();
                      // Invalidar providers para forzar recarga
                      ref.invalidate(topSellingCategoriesProvider);
                      ref.invalidate(topSellingProductsProvider);
                      
                      if (context.mounted) {
                        showCustomSnackBar(
                          context,
                          content: const Text('🔄 Cache actualizado con ventas más recientes'),
                          customSnackBarType: CustomOverlayType.success,
                        );
                      }
                    },
                  );
                },
                icon: const Icon(Icons.refresh),
                tooltip: 'Actualizar datos de ventas',
              ),
            ],
          ),
          body: PermissionGate(
            moduleKey: PMKeys.sales,
            action: PermissionAction.create,
            fallback: PermissionGate.imageFallback(),
            child: Stack(
              children: [
                // Contenido principal
                RefreshIndicator.adaptive(
                  onRefresh: () => Future.sync(
                    orderCartProvider.pagingController.refresh,
                  ),
                  child: CustomScrollView(
                    slivers: [
                      // Quick Order Type Selector
                      AdaptiveHeightSliverPersistentHeader(
                        floating: true,
                        needRepaint: true,
                        child: ColoredBox(
                          color: _theme.colorScheme.primaryContainer,
                          child: ValueListenableBuilder(
                            valueListenable: selectedOrderTypeNotifier,
                            builder: (_, selected, __) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Quick Order Type Selector
                                  SizedBox.fromSize(
                                    size: const Size.fromHeight(kToolbarHeight),
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 8,
                                      ),
                                      itemCount: OrderTypeEnum.values.length,
                                      itemBuilder: (context, index) {
                                        final _orderType = OrderTypeEnum.values[index];
                                        return SelectedButton.outlined(
                                          isSelected: _orderType == selected,
                                          onPressed: () {
                                            return selectedOrderTypeNotifier.set(
                                              _orderType,
                                            );
                                          },
                                          child: Text(_orderType.label(context)),
                                        );
                                      },
                                      separatorBuilder: (_, __) {
                                        return const SizedBox.square(dimension: 8);
                                      },
                                    ),
                                  ),

                                  // Quick Order Action
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: selected.childBuilder(
                                      quickOrderViewProvider,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),

                      // Category Selector
                      AdaptiveHeightSliverPersistentHeader(
                        pinned: true,
                        child: Container(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          color: _theme.colorScheme.primaryContainer,
                          child: Consumer(
                            builder: (newCtx, newRef, __) {
                              final _itemCategoryListAsync = newRef.watch(itemCategoryDropdownProvider);
                              final _topCategoriesAsync = newRef.watch(topSellingCategoriesProvider);

                              return AsyncCustomDropdown<int, ItemCategoryList>(
                                asyncData: _itemCategoryListAsync,
                                decoration: InputDecoration(
                                  hintText: t.form.category.hint,
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                ),
                                value: orderCartProvider.filters[ItemFilterType.category],
                                items: _itemCategoryListAsync.when(
                                  data: (data) {
                                    final allCategories = data.data?.data ?? [];
                                    final topCategories = _topCategoriesAsync.valueOrNull ?? [];
                                    final topCategoryIds = topCategories.map((e) => e.category.id).toSet();

                                    return [
                                      // Opción "Todas las categorías"
                                      CustomDropdownMenuItem<int>(
                                        value: null,
                                        label: TextSpan(text: t.common.all),
                                      ),

                                      // Top categorías más vendidas
                                      ...topCategories.map((topCategory) {
                                        return CustomDropdownMenuItem<int>(
                                          value: topCategory.category.id,
                                          label: TextSpan(
                                            children: [
                                              const WidgetSpan(
                                                child: Icon(Icons.star, size: 16, color: Colors.orange),
                                              ),
                                              const WidgetSpan(child: SizedBox(width: 4)),
                                              TextSpan(text: topCategory.category.categoryName ?? "N/A"),
                                              TextSpan(
                                                text: ' (${topCategory.totalSold})',
                                                style: const TextStyle(fontSize: 12, color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        );
                                      }),

                                      // Divisor si hay categorías top
                                      if (topCategories.isNotEmpty)
                                        CustomDropdownMenuItem<int>.custom(
                                          value: -999, // Valor único que nunca será seleccionado
                                          enabled: false,
                                          child: const Divider(height: 1),
                                        ),

                                      // Resto de categorías (alfabéticamente, excluyendo las top)
                                      ...allCategories
                                          .where((category) => !topCategoryIds.contains(category.id))
                                          .map((category) {
                                        return CustomDropdownMenuItem<int>(
                                          value: category.id,
                                          label: TextSpan(text: category.categoryName ?? "N/A"),
                                        );
                                      }),
                                    ];
                                  },
                                  error: (_, __) => [
                                    CustomDropdownMenuItem<int>(
                                      value: null,
                                      label: TextSpan(text: t.common.all),
                                    ),
                                  ],
                                  loading: () => [],
                                ),
                                onChanged: (categoryId) async {
                                  // 🚀 OPTIMIZACIÓN: Feedback inmediato
                                  final newFilters = <ItemFilterType, dynamic>{
                                    ...orderCartProvider.filters,
                                    ItemFilterType.category: categoryId,
                                  };
                                  orderCartProvider.handleFilter(newFilters);
                                  
                                  // 🏎️ PRECARGA: Si seleccionamos una categoría, precargar sus productos top
                                  if (categoryId != null) {
                                    // Iniciar precarga en background (no bloqueante)
                                    newRef.read(topSellingProductsProvider(categoryId).future).catchError((e) {
                                      // Silenciar errores de precarga para no interrumpir UX
                                      print('Precarga de productos top falló para categoría $categoryId: $e');
                                      return <TopSellingProduct>[]; // Valor por defecto en caso de error
                                    });
                                  }
                                },
                                onRefresh: () {
                                  newRef.refresh(itemCategoryDropdownProvider);
                                  newRef.refresh(topSellingCategoriesProvider);
                                },
                              );
                            },
                          ),
                        ),
                      ),

                      // Item Cart
                      ItemCartWidget.sliverWidget(
                        controller: orderCartProvider,
                        padding:
                            const EdgeInsets.all(16).copyWith(top: 8, bottom: 80), // Espacio para el carrito flotante
                      )
                    ],
                  ),
                ),

                // Carrito flotante posicionado en la parte inferior
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: PermissionGate(
                    moduleKey: PMKeys.sales,
                    action: PermissionAction.create,
                    child: ValueListenableBuilder(
                      valueListenable: selectedOrderTypeNotifier,
                      builder: (_, selectedOrderType, __) {
                        return FloatingCartWidget(
                          controller: orderCartProvider,
                          onDetails: switch (selectedOrderType) {
                            OrderTypeEnum.orderQuotation => null,
                            _ => ref.canT(
                                PMKeys.sales,
                                input: () => showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  useSafeArea: true,
                                  constraints: BoxConstraints(
                                    maxHeight: MediaQuery.sizeOf(context).height * 0.75,
                                  ),
                                  builder: (modalContext) => BottomModalSheetWrapper(
                                    title: TextSpan(text: t.common.pendingOrders),
                                    child: const OrderListWidget(status: 'pending'),
                                  ),
                                ),
                              ),
                          },
                          onKOT: switch (selectedOrderType) {
                            OrderTypeEnum.orderQuotation => null,
                            _ => ref.canT(
                                PMKeys.sales,
                                action: PermissionAction.create,
                                input: () async {
                                  if (!ItemCartWidget.hasItems(context, orderCartProvider)) {
                                    return;
                                  }
                                  if (selectedOrderTypeNotifier.value == OrderTypeEnum.dineIn &&
                                      quickOrderController.dropdownValues['table_id'] == null) {
                                    showCustomSnackBar(
                                      context,
                                      content: Text(t.exceptions.pleaseSelectATableToCreateAKot),
                                      customSnackBarType: CustomOverlayType.info,
                                    );
                                    return;
                                  }
                                  return _handleKOTSubmit(context);
                                },
                              ),
                          },
                          onPayment: ref.canT(
                            PMKeys.sales,
                            action: PermissionAction.create,
                            input: () async {
                              if (ItemCartWidget.hasItems(context, orderCartProvider)) {
                                final _salesType = selectedOrderTypeNotifier.value.stringValue;

                                final _saleData = quickOrderController.prepSaleData().copyWith(salesType: _salesType);

                                final _result = await context.router.push(
                                  OrderPaymentRoute(saleData: _saleData),
                                );

                                if (_result != null) return _resetState();
                              }
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          resizeToAvoidBottomInset: false,
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleKOTSubmit(BuildContext ctx) async {
    final controller = ref.read(quickOrderViewProvider);

    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => controller.handleManageSale(
        Sale(
          isKOT: true,
          salesType: selectedOrderTypeNotifier.value.stringValue,
        ),
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

      if (ref.read(autoPrintStateProvider)) {
        ref.read(kotThermalInvoiceProvider(_result.right!.data!));
      }

      showCustomSnackBar(
        ctx,
        // content: Text("KOT saved successfully"),
        content: Text(Translations.of(ctx).prompt.extMsg.kotSavedSuccessfully),
        action: SnackBarAction(
          // label: "View",
          label: Translations.of(ctx).common.view,
          backgroundColor: Colors.white.withValues(alpha: 0.25),
          onPressed: () async {
            return ctx.router.push<void>(
              InvoicePreviewRoute(
                previewType: ThermalPreview(
                  SalePurchaseThermalInvoiceData.fromSale(_result.right!.data!),
                  isSale: true,
                ),
              ),
            );
          },
        ),
      );

      return _resetState();
    }
  }

  void _resetState() {
    ref.read(gEventListenerProvider).fire<ItemCartEvent>(QuickOrderCartEvent.clearCart);
    ref.invalidate(quickOrderViewProvider);
  }
}
