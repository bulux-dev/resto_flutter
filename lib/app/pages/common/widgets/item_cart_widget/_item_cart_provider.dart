part of 'item_cart_widget.dart';

abstract class ItemCartNotifierBase extends ChangeNotifier with PaginatedControllerMixin<PItem> {
  ItemCartNotifierBase(this.ref) : repo = ref.read(itemsRepoProvider) {
    initPaging();
  }

  final Ref ref;
  final ItemsRepository repo;

  //---------------------Item  Filtering---------------------//
  late final searchController = TextEditingController();
  final filters = <ItemFilterType, dynamic>{};
  int get filterCount {
    return filters.entries.where((element) => element.value != null).length;
  }

  void handleFilter(Map<ItemFilterType, dynamic> newFilters) {
    if (mapEquals(newFilters, filters)) return;

    filters
      ..clear()
      ..addAll(newFilters);
    pagingController.refresh();
    notifyListeners();
  }
  //---------------------Item  Filtering---------------------//

  //---------------------Cart Items---------------------//
  final List<ItemCartModel> cartItems = [];
  CartAmountOverview get cartAmountOverview {
    final _totalAmount = cartItems.fold<num>(
      0,
      (p, eV) => p + eV.totalPrice,
    );
    final _totalQuantity = cartItems.fold<int>(
      0,
      (p, eV) => p + eV.cartQuantity,
    );

    return (totalAmount: _totalAmount, totalQuantity: _totalQuantity);
  }

  void handleCartItem(ItemCartModel item) {
    if (item.cartQuantity <= 0) {
      // MODIFICADO: Remover usando la nueva comparación que incluye variaciones y modificadores
      cartItems.removeWhere((element) => element == item);
    } else {
      // MODIFICADO: Buscar usando la nueva comparación completa (item + variación + modificadores)
      final _itemIndex = cartItems.indexWhere(
        (element) => element == item,
      );

      if (_itemIndex < 0) {
        // No existe esta combinación específica, agregar nueva
        cartItems.add(item);
      } else {
        // Ya existe esta combinación exacta, actualizar cantidad
        cartItems[_itemIndex] = item;
      }
    }

    notifyListeners();
  }

  void clearCart() {
    cartItems.clear();
    notifyListeners();
  }
  //---------------------Cart Items---------------------//

  @override
  void pageDispose() {
    cartItems.clear();
    searchController.dispose();
    super.pageDispose();
  }
}

class ItemCartNotifierImpl extends ItemCartNotifierBase {
  ItemCartNotifierImpl(super.ref);

  @override
  Future<PaginatedListModel<PItem>> fetchData(int page) async {
    // Obtener datos originales
    final originalData = await repo.getItemList(
      page: page,
      search: searchController.text,
      categoryId: filters[ItemFilterType.category],
      sortBy: filters[ItemFilterType.price],
    );

    // Si no hay filtro de categoría específica o es la primera página, no reorganizar
    final categoryId = filters[ItemFilterType.category] as int?;
    if (categoryId == null || page > 1) {
      return originalData;
    }

    // Obtener productos top para esta categoría
    try {
      final topProducts = await ref.read(topSellingProductsProvider(categoryId).future);
      final topProductIds = topProducts.map((tp) => tp.product.id).toSet();
      
      final allItems = originalData.data?.data ?? [];
      
      // Separar productos top y resto
      final topItems = <PItem>[];
      final regularItems = <PItem>[];
      
      for (final item in allItems) {
        if (topProductIds.contains(item.id)) {
          topItems.add(item);
        } else {
          regularItems.add(item);
        }
      }
      
      // Ordenar productos top según su ranking
      topItems.sort((a, b) {
        final rankingA = topProducts.firstWhereOrNull((tp) => tp.product.id == a.id)?.ranking ?? 999;
        final rankingB = topProducts.firstWhereOrNull((tp) => tp.product.id == b.id)?.ranking ?? 999;
        return rankingA.compareTo(rankingB);
      });
      
      // Ordenar resto alfabéticamente
      regularItems.sort((a, b) => (a.productName ?? '').compareTo(b.productName ?? ''));
      
      // Combinar listas: top primero, luego resto
      final reorderedItems = [...topItems, ...regularItems];
      
      // Crear nueva respuesta con items reordenados
      return PaginatedListModel<PItem>(
        data: PaginatedData<PItem>(data: reorderedItems),
        message: originalData.message,
      );
      
    } catch (e) {
      // En caso de error, retornar datos originales
      return originalData;
    }
  }

  @override
  void dispose() {
    _apiEventSub?.cancel();
    super.dispose();
  }

  EventSub<ItemsApiEvent>? _apiEventSub;
  @override
  void initRefreshListener() {
    _apiEventSub = ref.read(gEventListenerProvider).on<ItemsApiEvent>().listen((event) {
      if (event == ItemsApiEvent.item) {
        pagingController.refresh();
      }
    });
  }
}

abstract class ItemCartEvent {
  ItemCartEvent get clear;
}

enum QuickOrderCartEvent implements ItemCartEvent {
  clearCart;

  @override
  ItemCartEvent get clear => QuickOrderCartEvent.clearCart;
}

final quickOrderCartProvider = ChangeNotifierProvider<ItemCartNotifierBase>((ref) {
  final _provider = ItemCartNotifierImpl(ref);

  final _cartEventSub = ref.read(gEventListenerProvider).on<QuickOrderCartEvent>().listen((event) {
    if (event == QuickOrderCartEvent.clearCart) {
      _provider.clearCart();
    }
  });

  ref.onDispose(_cartEventSub.cancel);

  return _provider;
});

final editOrderCartProvider = ChangeNotifierProvider.autoDispose(
  ItemCartNotifierImpl.new,
);

final quotationCartProvider = ChangeNotifierProvider.autoDispose(
  ItemCartNotifierImpl.new,
);
