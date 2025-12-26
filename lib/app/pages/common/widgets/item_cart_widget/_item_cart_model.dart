part of 'item_cart_widget.dart';

class ItemCartModel {
  final int itemId;
  final int cartQuantity;
  final PItem item;
  final PItemVariation? variation;
  final Map<int, List<ModifierOption>>? modifierOptions;
  final String? instrctions;

  ItemCartModel({
    this.cartQuantity = 0,
    required this.item,
    this.variation,
    this.modifierOptions,
    this.instrctions,
  }) : itemId = item.id!;

  num get totalPrice {
    final _itemType = ItemTypeEnum.fromString(item.priceType);

    final basePrice = (_itemType.isVariation ? variation?.price : item.salesPrice) ?? 0;

    final optionsSum = modifierOptions?.values.fold<num>(
      0,
      (sumGroup, options) {
        final groupSum = options.fold<num>(
          0,
          (sumOpt, opt) => sumOpt + (opt.price ?? 0),
        );
        return sumGroup + groupSum;
      },
    );

    return (basePrice + (optionsSum ?? 0)) * cartQuantity;
  }

  ItemCartModel copyWith({
    int? cartQuantity,
    num? totalPrice,
    PItem? item,
    PItemVariation? variation,
    Map<int, List<ModifierOption>>? modifierOptions,
    String? instrctions,
  }) {
    return ItemCartModel(
      cartQuantity: cartQuantity ?? this.cartQuantity,
      item: item ?? this.item,
      variation: variation ?? this.variation,
      modifierOptions: modifierOptions ?? this.modifierOptions,
      instrctions: instrctions ?? this.instrctions,
    );
  }

  @override
  String toString() {
    return '''
      ItemCartModel(
      itemId: $itemId,
      cartQuantity: $cartQuantity,
      item: ${item.toString()},
      variation: ${variation.toString()},
      modifierOptions: ${modifierOptions.toString()},
      instrctions: $instrctions,
    )
''';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ItemCartModel &&
            runtimeType == other.runtimeType &&
            itemId == other.itemId &&
            // MODIFICADO: Comparar también variación y modificadores para permitir múltiples combinaciones
            variation?.id == other.variation?.id &&
            _compareModifierOptions(modifierOptions, other.modifierOptions);
  }

  @override
  int get hashCode => Object.hash(
    itemId, 
    variation?.id, 
    _generateModifierOptionsHash(modifierOptions)
  );

  // Método auxiliar para comparar opciones de modificadores
  bool _compareModifierOptions(
    Map<int, List<ModifierOption>>? options1, 
    Map<int, List<ModifierOption>>? options2
  ) {
    if (options1 == null && options2 == null) return true;
    if (options1 == null || options2 == null) return false;
    if (options1.length != options2.length) return false;
    
    for (var entry in options1.entries) {
      final key = entry.key;
      final list1 = entry.value;
      final list2 = options2[key];
      
      if (list2 == null || list1.length != list2.length) return false;
      
      // Comparar IDs de opciones (ordenados para evitar problemas de orden)
      final ids1 = list1.map((e) => e.id).toList()..sort();
      final ids2 = list2.map((e) => e.id).toList()..sort();
      
      for (int i = 0; i < ids1.length; i++) {
        if (ids1[i] != ids2[i]) return false;
      }
    }
    
    return true;
  }

  // Método auxiliar para generar hash de modificadores
  int _generateModifierOptionsHash(Map<int, List<ModifierOption>>? options) {
    if (options == null) return 0;
    
    var hash = 0;
    for (var entry in options.entries) {
      final sortedIds = entry.value.map((e) => e.id).toList()..sort();
      hash = Object.hash(hash, entry.key, Object.hashAll(sortedIds));
    }
    
    return hash;
  }
}

typedef CartAmountOverview = ({num totalAmount, int totalQuantity});
