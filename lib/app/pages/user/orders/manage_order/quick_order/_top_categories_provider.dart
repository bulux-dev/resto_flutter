part of 'quick_order_view.dart';

/// Función para limpiar cache manualmente (útil para testing y actualizaciones inmediatas)
Future<void> refreshTopSalesData() async {
  await clearTopProductsCache();
  print('🔄 Cache de ventas top limpiado manualmente');
}

/// Provider que obtiene las categorías más populares basándose en la cantidad de productos disponibles
final topSellingCategoriesProvider = FutureProvider.autoDispose<List<TopSellingCategory>>((ref) async {
  
  try {
    // 💾 Intentar cargar desde cache persistente primero
    await _loadCacheFromStorage();
    
    final itemsRepo = ref.read(itemsRepoProvider);
    final saleRepo = ref.read(saleRepoProvider);

    // Obtener todas las categorías
    final categoriesData = await itemsRepo.getItemCategories(noPaging: true);
    final categoriesMap = <int, ItemCategory>{
      for (var category in categoriesData.data?.data ?? [])
        if (category.id != null) category.id!: category,
    };

    // 📊 OBTENER VENTAS REALES DE LA ÚLTIMA SEMANA
    final salesData = await saleRepo.getSalesForAnalysis();
    final categorySalesCount = <int, num>{}; // categoryId -> cantidad vendida
    
    // 🔥 ANÁLISIS REAL: Contar productos vendidos por categoría
    for (final sale in salesData.data?.data ?? []) {
      for (final saleItem in sale.details ?? []) {
        // Obtener categoryId del producto vendido
        int? categoryId = saleItem.product?.categoryId;
        
        if (categoryId != null && categoriesMap.containsKey(categoryId)) {
          final currentCount = categorySalesCount[categoryId] ?? 0;
          final quantitySold = saleItem.quantities ?? 0;
          categorySalesCount[categoryId] = currentCount + quantitySold;
        }
      }
    }

    // Si no hay ventas, usar fallback basado en cantidad de productos disponibles
    if (categorySalesCount.isEmpty) {
      print('⚠️ No hay ventas recientes, usando fallback por cantidad de productos');
      
      final productsData = await itemsRepo.getItemList(noPaging: true);
      for (final product in productsData.data?.data ?? []) {
        int? categoryId = product.categoryId ?? product.category?.id;
        if (categoryId != null && categoriesMap.containsKey(categoryId)) {
          final currentCount = categorySalesCount[categoryId] ?? 0;
          categorySalesCount[categoryId] = currentCount + 1;
        }
      }
    }

    // Si no hay categorías con ventas, usar todas las categorías disponibles
    if (categorySalesCount.isEmpty && categoriesMap.isNotEmpty) {
      var counter = 1;
      for (final categoryEntry in categoriesMap.entries) {
        categorySalesCount[categoryEntry.key] = counter++;
      }
    }

    // Ordenar categorías por cantidad vendida (ventas reales)
    final sortedCategories = categorySalesCount.entries
        .where((entry) => categoriesMap.containsKey(entry.key))
        .map((entry) => TopSellingCategory(
              category: categoriesMap[entry.key]!,
              totalSold: entry.value.toInt(),
            ))
        .toList()
      ..sort((a, b) => b.totalSold.compareTo(a.totalSold));

    // 🔍 DEBUG: Mostrar cantidades reales vendidas (temporal para verificación)
    final topCategories = <TopSellingCategory>[];
    for (int i = 0; i < sortedCategories.length && i < 5; i++) {
      final category = sortedCategories[i];
      topCategories.add(TopSellingCategory(
        category: category.category,
        totalSold: category.totalSold, // Mostrar cantidad real vendida para debug
      ));
    }
    

    return topCategories;
  } catch (e) {
    // Solo mostrar errores críticos
    print('Error calculando categorías top: $e');
    return <TopSellingCategory>[];
  }
});

/// Cache global para productos por categoría (persiste durante la sesión)
final _categoryProductsCache = <int, List<PItem>>{};
final _topProductsCache = <int, List<TopSellingProduct>>{};
DateTime? _lastCacheUpdate;

/// 💾 CACHE PERSISTENTE - Sobrevive a reinicios de la app
const String _CACHE_KEY_CATEGORIES = 'top_categories_cache';
const String _CACHE_KEY_PRODUCTS = 'top_products_cache';
const String _CACHE_KEY_TIMESTAMP = 'cache_timestamp';
const int _CACHE_DURATION_HOURS = 4; // Cache válido por 4 horas

/// Guardar cache en almacenamiento persistente
Future<void> _saveCacheToStorage() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    
    // Guardar timestamp
    await prefs.setString(_CACHE_KEY_TIMESTAMP, DateTime.now().toIso8601String());
    
    // Convertir y guardar cache de productos por categoría
    final categoryCache = <String, List<Map<String, dynamic>>>{};
    for (final entry in _categoryProductsCache.entries) {
      categoryCache[entry.key.toString()] = entry.value.map((product) => {
        'id': product.id,
        'productName': product.productName,
        'categoryId': product.categoryId,
        'category': product.category?.toJson(),
        // Solo guardamos los campos esenciales para no sobrecargar el storage
      }).toList();
    }
    await prefs.setString(_CACHE_KEY_CATEGORIES, jsonEncode(categoryCache));
    
    print('💾 Cache guardado en almacenamiento persistente');
  } catch (e) {
    print('❌ Error guardando cache: $e');
  }
}

/// Cargar cache desde almacenamiento persistente
Future<bool> _loadCacheFromStorage() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    
    // Verificar timestamp
    final timestampStr = prefs.getString(_CACHE_KEY_TIMESTAMP);
    if (timestampStr == null) return false;
    
    final cacheTime = DateTime.parse(timestampStr);
    final now = DateTime.now();
    
    // Si el cache tiene más de 4 horas, está expirado
    if (now.difference(cacheTime).inHours >= _CACHE_DURATION_HOURS) {
      await _clearStorageCache();
      return false;
    }
    
    // Cargar cache de categorías
    final categoryCacheStr = prefs.getString(_CACHE_KEY_CATEGORIES);
    if (categoryCacheStr != null) {
      final categoryCache = Map<String, List<dynamic>>.from(jsonDecode(categoryCacheStr));
      
      _categoryProductsCache.clear();
      for (final entry in categoryCache.entries) {
        final categoryId = int.parse(entry.key);
        final products = <PItem>[];
        
        for (final productData in entry.value) {
          // Recrear objetos PItem con datos básicos
          products.add(PItem(
            id: productData['id'],
            productName: productData['productName'],
            categoryId: productData['categoryId'],
            // category: productData['category'] != null ? ItemCategory.fromJson(productData['category']) : null,
          ));
        }
        
        _categoryProductsCache[categoryId] = products;
      }
      
      _lastCacheUpdate = cacheTime;
      print('✅ Cache cargado desde almacenamiento persistente');
      return true;
    }
    
    return false;
  } catch (e) {
    print('❌ Error cargando cache: $e');
    await _clearStorageCache();
    return false;
  }
}

/// Limpiar cache del almacenamiento
Future<void> _clearStorageCache() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_CACHE_KEY_CATEGORIES);
    await prefs.remove(_CACHE_KEY_PRODUCTS);
    await prefs.remove(_CACHE_KEY_TIMESTAMP);
    print('🗑️ Cache de almacenamiento limpiado');
  } catch (e) {
    print('❌ Error limpiando cache de almacenamiento: $e');
  }
}

/// Función utilitaria para limpiar cache cuando sea necesario
/// (por ejemplo, después de agregar/editar productos)
Future<void> clearTopProductsCache() async {
  _categoryProductsCache.clear();
  _topProductsCache.clear();
  _lastCacheUpdate = null;
  await _clearStorageCache();
  print('🧹 Cache completo limpiado (memoria + almacenamiento)');
}

/// Función para invalidar cache automáticamente cada día laboral
/// (llamar al inicio de cada jornada si se desea)
Future<void> refreshDailyCache() async {
  final prefs = await SharedPreferences.getInstance();
  final lastRefresh = prefs.getString('last_daily_refresh');
  final today = DateTime.now().toIso8601String().split('T')[0]; // Solo fecha
  
  if (lastRefresh != today) {
    await clearTopProductsCache();
    await prefs.setString('last_daily_refresh', today);
    print('🌅 Cache refrescado para nueva jornada');
  }
}

/// Provider que obtiene los productos más populares para una categoría específica
/// Basado en VENTAS REALES de los últimos 7 días + cache inteligente
final topSellingProductsProvider = FutureProvider.family<List<TopSellingProduct>, int>((ref, categoryId) async {
  try {
    final now = DateTime.now();
    
    // 🚀 PRIMER INTENTO: Cache en memoria
    final cacheIsValid = _lastCacheUpdate != null && 
        now.difference(_lastCacheUpdate!).inHours < _CACHE_DURATION_HOURS;

    if (cacheIsValid && _topProductsCache.containsKey(categoryId)) {
      return _topProductsCache[categoryId]!;
    }

    // 💾 SEGUNDO INTENTO: Cache persistente (sobrevive reinicios)
    if (_lastCacheUpdate == null || !cacheIsValid) {
      final loadedFromStorage = await _loadCacheFromStorage();
      if (loadedFromStorage && _topProductsCache.containsKey(categoryId)) {
        return _topProductsCache[categoryId]!;
      }
    }

    final itemsRepo = ref.read(itemsRepoProvider);
    final saleRepo = ref.read(saleRepoProvider);

    // 📊 OBTENER VENTAS REALES para análisis
    final salesData = await saleRepo.getSalesForAnalysis();
    final productSalesCount = <int, num>{}; // productId -> cantidad vendida
    
    // 🔥 CONTAR PRODUCTOS VENDIDOS (solo de la categoría específica)
    for (final sale in salesData.data?.data ?? []) {
      for (final saleItem in sale.details ?? []) {
        // Solo productos de la categoría que necesitamos
        if (saleItem.product?.categoryId == categoryId && saleItem.product?.id != null) {
          final productId = saleItem.product!.id!;
          final currentCount = productSalesCount[productId] ?? 0;
          final quantitySold = saleItem.quantities ?? 0;
          productSalesCount[productId] = currentCount + quantitySold;
        }
      }
    }

    // Obtener productos disponibles de la categoría
    List<PItem> categoryProducts;
    if (cacheIsValid && _categoryProductsCache.containsKey(categoryId)) {
      categoryProducts = _categoryProductsCache[categoryId]!;
    } else {
      final productsData = await itemsRepo.getItemList(noPaging: true);
      final allProducts = productsData.data?.data ?? [];
      
      // Filtrar solo productos de la categoría específica
      categoryProducts = allProducts.where((product) => product.categoryId == categoryId).toList();
      
      // Cachear para próximas llamadas
      _categoryProductsCache[categoryId] = categoryProducts;
      _lastCacheUpdate = now;
    }

    if (categoryProducts.isEmpty) {
      _topProductsCache[categoryId] = [];
      return <TopSellingProduct>[];
    }

    // � ORDENAR POR VENTAS REALES (o fallback por ID)
    final topProducts = <TopSellingProduct>[];
    final sortedProducts = List<PItem>.from(categoryProducts);
    
    if (productSalesCount.isNotEmpty) {
      // Ordenar por ventas reales (más vendidos primero)
      sortedProducts.sort((a, b) {
        final salesA = productSalesCount[a.id] ?? 0;
        final salesB = productSalesCount[b.id] ?? 0;
        return salesB.compareTo(salesA); // Descendente
      });
    } else {
      // Fallback: ordenar por ID (productos más nuevos primero)
      sortedProducts.sort((a, b) => (a.id ?? 999).compareTo(b.id ?? 999));
    }
    
    // Tomar los primeros 5 y asignar ranking
    for (int i = 0; i < sortedProducts.length && i < 5; i++) {
      final product = sortedProducts[i];
      
      topProducts.add(TopSellingProduct(
        product: product,
        ranking: i + 1,
      ));
    }

    // Cachear resultado en memoria
    _topProductsCache[categoryId] = topProducts;
    
    // 💾 Guardar cache en almacenamiento persistente para próximos reinicios
    await _saveCacheToStorage();
    
    return topProducts;
  } catch (e) {
    print('Error calculando productos top para categoría $categoryId: $e');
    return <TopSellingProduct>[];
  }
});

/// Modelo para representar una categoría con sus ventas
class TopSellingCategory {
  final ItemCategory category;
  final int totalSold;

  const TopSellingCategory({
    required this.category,
    required this.totalSold,
  });

  @override
  String toString() => 'TopSellingCategory(${category.categoryName}: $totalSold sold)';
}

/// Modelo para representar un producto con su ranking de popularidad
class TopSellingProduct {
  final PItem product;
  final int ranking;

  const TopSellingProduct({
    required this.product,
    required this.ranking,
  });

  @override
  String toString() => 'TopSellingProduct(${product.productName}: #$ranking)';
}
