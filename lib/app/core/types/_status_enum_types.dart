import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../core.dart';

enum TableStatus {
  hold(statusColor: Color(0xff5856D6)),
  empty(statusColor: DAppColors.kError);

  final Color? statusColor;
  const TableStatus({this.statusColor});

  String get label {
    return switch (this) {
      // TableStatus.hold => 'Hold',
      TableStatus.hold => t.common.hold,
      // TableStatus.empty => 'Empty',
      TableStatus.empty => t.common.empty,
    };
  }

  bool get isHold => this == TableStatus.hold;
  bool get isEmpty => this == TableStatus.empty;

  static TableStatus fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'empty' => TableStatus.empty,
      'booking' => TableStatus.hold,
      _ => TableStatus.empty,
    };
  }
}

enum ThermalPrinterPaperSize {
  mm803Inch,
  mm582Inch;

  static ThermalPrinterPaperSize? maybeFromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      '3_inch_80_mm' => mm803Inch,
      '2_inch_58_mm' => mm582Inch,
      _ => null,
    };
  }

  static ThermalPrinterPaperSize fromString(String? value) {
    return maybeFromString(value) ?? mm803Inch;
  }

  String get stringValue {
    return switch (this) {
      mm803Inch => '3_inch_80_mm',
      mm582Inch => '2_inch_58_mm',
    };
  }

  String label(BuildContext context) {
    return switch (this) {
      mm582Inch => '2Inch 58mm',
      mm803Inch => '3Inch 80mm',
    };
  }
}

//----------------------StaffType----------------------//
abstract class StaffTypeInterface {
  String label(BuildContext context);
  String get stringValue;
}

enum StaffTypeEnum implements StaffTypeInterface {
  manager,
  waiter,
  chefs,
  cleaner,
  driver,
  deliveryBoy;

  @override
  String label(BuildContext context) {
    final t = Translations.of(context);
    return switch (this) {
      // manager => 'Manager',
      manager => t.enums.staffTypes.manager,
      // waiter => 'Waiter',
      waiter => t.enums.staffTypes.waiter,
      // chefs => 'Chef',
      chefs => t.enums.staffTypes.chef,
      // cleaner => 'Cleaner',
      cleaner => t.enums.staffTypes.cleaner,
      // driver => 'Driver',
      driver => t.enums.staffTypes.driver,
      // deliveryBoy => 'Delivery Boy',
      deliveryBoy => t.enums.staffTypes.deliveryBoy,
    };
  }

  static StaffTypeEnum fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'manager' => StaffTypeEnum.manager,
      'waiter' => StaffTypeEnum.waiter,
      'chef' => StaffTypeEnum.chefs,
      'cleaner' => StaffTypeEnum.cleaner,
      'driver' => StaffTypeEnum.driver,
      'delivery_boy' => StaffTypeEnum.deliveryBoy,
      _ => StaffTypeEnum.waiter,
    };
  }

  @override
  String get stringValue {
    return switch (this) {
      manager => 'manager',
      waiter => 'waiter',
      chefs => 'chef',
      cleaner => 'cleaner',
      driver => 'driver',
      deliveryBoy => 'delivery_boy',
    };
  }
}
//----------------------StaffType----------------------//

// COMENTADO: Filtro de tipos de alimentos eliminado por no funcionar correctamente
// enum ItemFoodTypeEnum {
//   veg,
//   nonVeg,
//   egg,
//   drink,
//   others;
//   //epiob
//   String label(BuildContext context) {
//     return switch (this) {
//       // veg => 'Veg',
//       veg => t.enums.itemFoodTypes.veg,
//       // nonVeg => 'Non Veg',
//       nonVeg => t.enums.itemFoodTypes.nonVeg,
//       // egg => 'Egg',
//       egg => t.enums.itemFoodTypes.egg,
//       // drink => 'Drink',
//       drink => t.enums.itemFoodTypes.drink,
//       // others => 'Others',
//       others => t.enums.itemFoodTypes.others,
//     };
//   }

//   static ItemFoodTypeEnum fromString(String? value) {
//     return switch (value?.trim().toLowerCase()) {
//       'veg' => ItemFoodTypeEnum.veg,
//       'non_veg' => ItemFoodTypeEnum.nonVeg,
//       'egg' => ItemFoodTypeEnum.egg,
//       'drink' => ItemFoodTypeEnum.drink,
//       'others' => ItemFoodTypeEnum.others,
//       _ => ItemFoodTypeEnum.veg,
//     };
//   }

//   String get stringValue {
//     return switch (this) {
//       veg => 'veg',
//       nonVeg => 'non_veg',
//       egg => 'egg',
//       drink => 'drink',
//       others => 'others',
//     };
//   }
// }

enum ItemTypeEnum {
  single,
  variation;

  bool get isVariation => this == ItemTypeEnum.variation;

  String label(BuildContext context) {
    return switch (this) {
      // single => 'Single',
      single => t.enums.itemTypes.single,
      // variation => 'Variation',
      variation => t.enums.itemTypes.variation,
    };
  }

  static ItemTypeEnum fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'single' => ItemTypeEnum.single,
      'variation' => ItemTypeEnum.variation,
      _ => ItemTypeEnum.single,
    };
  }

  String get stringValue {
    return switch (this) {
      single => 'single',
      variation => 'variation',
    };
  }
}

enum UserRole {
  shopOwner,
  staff;

  static UserRole fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'shop-owner' => UserRole.shopOwner,
      'staff' => UserRole.staff,
      _ => UserRole.shopOwner,
    };
  }

  bool get isShopOwner => this == shopOwner;
}
