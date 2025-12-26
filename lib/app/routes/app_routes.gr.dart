// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i86;
import 'package:flutter/material.dart' as _i87;
import 'package:restaurant_pos/app/data/repository/repository.dart' as _i88;
import 'package:restaurant_pos/app/pages/auth/forgot_password/forgot_password_view.dart'
    as _i16;
import 'package:restaurant_pos/app/pages/auth/onboard/onboard_view.dart'
    as _i52;
import 'package:restaurant_pos/app/pages/auth/otp_verification/otp_verification_view.dart'
    as _i56;
import 'package:restaurant_pos/app/pages/auth/reset_password/reset_password_view.dart'
    as _i70;
import 'package:restaurant_pos/app/pages/auth/sign_in/sign_in_view.dart'
    as _i73;
import 'package:restaurant_pos/app/pages/auth/sign_up/sign_up_view.dart'
    as _i74;
import 'package:restaurant_pos/app/pages/auth/splash/splash_view.dart' as _i75;
import 'package:restaurant_pos/app/pages/common/about_us/about_us_view.dart'
    as _i1;
import 'package:restaurant_pos/app/pages/common/congratulation/congratulation_view.dart'
    as _i5;
import 'package:restaurant_pos/app/pages/common/invoice_preview/invoice_preview_view.dart'
    as _i20;
import 'package:restaurant_pos/app/pages/common/language/language_view.dart'
    as _i24;
import 'package:restaurant_pos/app/pages/common/notifications/notification_details_view.dart'
    as _i50;
import 'package:restaurant_pos/app/pages/common/notifications/notification_list_view.dart'
    as _i51;
import 'package:restaurant_pos/app/pages/common/privacy_n_policy/privacy_n_policy_view.dart'
    as _i62;
import 'package:restaurant_pos/app/pages/common/subscription_plan/payment_method_list/payment_method_list_view.dart'
    as _i60;
import 'package:restaurant_pos/app/pages/common/subscription_plan/subscription_plan_list/subscription_plan_list_view.dart'
    as _i77;
import 'package:restaurant_pos/app/pages/common/terms_conditions/terms_conditions_view.dart'
    as _i80;
import 'package:restaurant_pos/app/pages/common/widgets/widgets.dart' as _i89;
import 'package:restaurant_pos/app/pages/user/bottom_nav/bottom_nav_view.dart'
    as _i2;
import 'package:restaurant_pos/app/pages/user/busness_payment_method/business_payment_method_list/business_payment_method_list_view.dart'
    as _i3;
import 'package:restaurant_pos/app/pages/user/busness_payment_method/manage_business_payment_method/manage_business_payment_method_view.dart'
    as _i25;
import 'package:restaurant_pos/app/pages/user/coupon/coupon_list/coupon_list_view.dart'
    as _i6;
import 'package:restaurant_pos/app/pages/user/coupon/manage_coupon/manage_coupon_view.dart'
    as _i27;
import 'package:restaurant_pos/app/pages/user/currency/currency_view.dart'
    as _i7;
import 'package:restaurant_pos/app/pages/user/dashboard/dashboard_view.dart'
    as _i8;
import 'package:restaurant_pos/app/pages/user/due/due_list/due_list_view.dart'
    as _i10;
import 'package:restaurant_pos/app/pages/user/due/manage_due_collection/manage_due_collection_view.dart'
    as _i28;
import 'package:restaurant_pos/app/pages/user/expense/expense_list/expense_list_view.dart'
    as _i14;
import 'package:restaurant_pos/app/pages/user/expense/manage_expense/manage_expense_view.dart'
    as _i30;
import 'package:restaurant_pos/app/pages/user/expense/manage_expense_category/manage_expense_category_view.dart'
    as _i29;
import 'package:restaurant_pos/app/pages/user/finance_overview/money_in_list/money_in_list_view.dart'
    as _i47;
import 'package:restaurant_pos/app/pages/user/finance_overview/money_out_list/money_out_list_view.dart'
    as _i48;
import 'package:restaurant_pos/app/pages/user/income/income_list/income_list_view.dart'
    as _i17;
import 'package:restaurant_pos/app/pages/user/income/manage_income/manage_income_view.dart'
    as _i32;
import 'package:restaurant_pos/app/pages/user/income/manage_income_category/manage_income_category_view.dart'
    as _i31;
import 'package:restaurant_pos/app/pages/user/items/category/category_list/category_list_view.dart'
    as _i4;
import 'package:restaurant_pos/app/pages/user/items/category/manage_category/manage_category_view.dart'
    as _i26;
import 'package:restaurant_pos/app/pages/user/items/item_details/item_details_view.dart'
    as _i21;
import 'package:restaurant_pos/app/pages/user/items/item_list/item_list_view.dart'
    as _i22;
import 'package:restaurant_pos/app/pages/user/items/item_modifier/item_modifier_list/item_modifier_list_view.dart'
    as _i23;
import 'package:restaurant_pos/app/pages/user/items/item_modifier/manage_item_modifier/manage_item_modifier_view.dart'
    as _i34;
import 'package:restaurant_pos/app/pages/user/items/manage_item/manage_item_view.dart'
    as _i35;
import 'package:restaurant_pos/app/pages/user/items/menu/manage_menu/manage_menu_view.dart'
    as _i36;
import 'package:restaurant_pos/app/pages/user/items/menu/menu_list/menu_list_view.dart'
    as _i45;
import 'package:restaurant_pos/app/pages/user/items/modifier_group/manage_modifier_group/manage_modifier_group_view.dart'
    as _i37;
import 'package:restaurant_pos/app/pages/user/items/modifier_group/modifier_group_list/modifier_group_list_view.dart'
    as _i46;
import 'package:restaurant_pos/app/pages/user/items/unit/manage_unit/manage_unit_view.dart'
    as _i43;
import 'package:restaurant_pos/app/pages/user/items/unit/unit_list/unit_list_view.dart'
    as _i83;
import 'package:restaurant_pos/app/pages/user/manage_profile/manage_user_profile.dart'
    as _i13;
import 'package:restaurant_pos/app/pages/user/mute_home/mute_home.dart' as _i49;
import 'package:restaurant_pos/app/pages/user/orders/manage_order/edit_order/edit_order_view.dart'
    as _i12;
import 'package:restaurant_pos/app/pages/user/orders/manage_order/quick_order/quick_order_view.dart'
    as _i66;
import 'package:restaurant_pos/app/pages/user/orders/order_details/order_details_view.dart'
    as _i53;
import 'package:restaurant_pos/app/pages/user/orders/order_list/order_list_view.dart'
    as _i54;
import 'package:restaurant_pos/app/pages/user/orders/order_payment/order_payment_view.dart'
    as _i55;
import 'package:restaurant_pos/app/pages/user/orders/quotation/manage_quotation/manage_quotation_view.dart'
    as _i40;
import 'package:restaurant_pos/app/pages/user/orders/quotation/quotation_item_list/quotation_item_list_view.dart'
    as _i67;
import 'package:restaurant_pos/app/pages/user/orders/quotation/quotation_list/quotation_list_view.dart'
    as _i68;
import 'package:restaurant_pos/app/pages/user/party/manage_party/manage_party_view.dart'
    as _i38;
import 'package:restaurant_pos/app/pages/user/party/party_details/party_details_view.dart'
    as _i57;
import 'package:restaurant_pos/app/pages/user/party/party_ledger_details/party_ledger_details_view.dart'
    as _i58;
import 'package:restaurant_pos/app/pages/user/party/party_list/party_list_view.dart'
    as _i59;
import 'package:restaurant_pos/app/pages/user/purchase/ingredient/ingredient_list/ingredient_list_view.dart'
    as _i19;
import 'package:restaurant_pos/app/pages/user/purchase/ingredient/manage_ingredient/manage_ingredient_view.dart'
    as _i33;
import 'package:restaurant_pos/app/pages/user/purchase/manage_purchase/manage_purchase_view.dart'
    as _i39;
import 'package:restaurant_pos/app/pages/user/purchase/purchase_list/purchase_list_view.dart'
    as _i63;
import 'package:restaurant_pos/app/pages/user/purchase/purchase_payment_receive/purchase_payment_receive_view.dart'
    as _i64;
import 'package:restaurant_pos/app/pages/user/reports/pages/due_report/due_collection_report/due_collection_report_list_view.dart'
    as _i9;
import 'package:restaurant_pos/app/pages/user/reports/pages/due_report/due_report_list/due_report_list_view.dart'
    as _i11;
import 'package:restaurant_pos/app/pages/user/reports/pages/expense_report/expense_report_list/expense_report_list_view.dart'
    as _i15;
import 'package:restaurant_pos/app/pages/user/reports/pages/income_report/income_report_list/income_report_list_view.dart'
    as _i18;
import 'package:restaurant_pos/app/pages/user/reports/pages/purchase_report/purchase_report_list/purchase_report_list_view.dart'
    as _i65;
import 'package:restaurant_pos/app/pages/user/reports/pages/sales_quotation_report/sales_quotation_report_list/sales_quotation_report_list_view.dart'
    as _i71;
import 'package:restaurant_pos/app/pages/user/reports/pages/sales_report/sales_report_list/sales_report_list_view.dart'
    as _i72;
import 'package:restaurant_pos/app/pages/user/reports/pages/transaction_report/transaction_report_list/transaction_report_list_view.dart'
    as _i82;
import 'package:restaurant_pos/app/pages/user/reports/reports_list/reports_list_view.dart'
    as _i69;
import 'package:restaurant_pos/app/pages/user/roles_permissions/manage_user_role_permission/manage_user_role_permission_view.dart'
    as _i44;
import 'package:restaurant_pos/app/pages/user/roles_permissions/user_role_permission_list/user_role_permission_list_view.dart'
    as _i84;
import 'package:restaurant_pos/app/pages/user/settings/printing_option/printing_option_view.dart'
    as _i61;
import 'package:restaurant_pos/app/pages/user/settings/user_settings/user_settings_view.dart'
    as _i85;
import 'package:restaurant_pos/app/pages/user/staff_list/staff_list_view.dart'
    as _i76;
import 'package:restaurant_pos/app/pages/user/table/table_list/table_list_view.dart'
    as _i78;
import 'package:restaurant_pos/app/pages/user/tax/manage_tax/manage_tax_view.dart'
    as _i42;
import 'package:restaurant_pos/app/pages/user/tax/manage_tax_group/manage_tax_group_view.dart'
    as _i41;
import 'package:restaurant_pos/app/pages/user/tax/tax_list/tax_list_view.dart'
    as _i79;
import 'package:restaurant_pos/app/pages/user/transaction/transaction_list/transaction_list_view.dart'
    as _i81;

/// generated route for
/// [_i1.AboutUsView]
class AboutUsRoute extends _i86.PageRouteInfo<void> {
  const AboutUsRoute({List<_i86.PageRouteInfo>? children})
      : super(AboutUsRoute.name, initialChildren: children);

  static const String name = 'AboutUsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutUsView();
    },
  );
}

/// generated route for
/// [_i2.BottomNavView]
class BottomNavRoute extends _i86.PageRouteInfo<void> {
  const BottomNavRoute({List<_i86.PageRouteInfo>? children})
      : super(BottomNavRoute.name, initialChildren: children);

  static const String name = 'BottomNavRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i2.BottomNavView();
    },
  );
}

/// generated route for
/// [_i3.BusinessPaymentMethodListView]
class BusinessPaymentMethodListRoute extends _i86.PageRouteInfo<void> {
  const BusinessPaymentMethodListRoute({List<_i86.PageRouteInfo>? children})
      : super(BusinessPaymentMethodListRoute.name, initialChildren: children);

  static const String name = 'BusinessPaymentMethodListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i3.BusinessPaymentMethodListView();
    },
  );
}

/// generated route for
/// [_i4.CategoryListView]
class CategoryListRoute extends _i86.PageRouteInfo<void> {
  const CategoryListRoute({List<_i86.PageRouteInfo>? children})
      : super(CategoryListRoute.name, initialChildren: children);

  static const String name = 'CategoryListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i4.CategoryListView();
    },
  );
}

/// generated route for
/// [_i5.CongratulationView]
class CongratulationRoute extends _i86.PageRouteInfo<CongratulationRouteArgs> {
  CongratulationRoute({
    _i87.Key? key,
    required _i86.PageRouteInfo<dynamic> nextRoute,
    bool replaceAll = false,
    String? title,
    _i87.TextSpan? description,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          CongratulationRoute.name,
          args: CongratulationRouteArgs(
            key: key,
            nextRoute: nextRoute,
            replaceAll: replaceAll,
            title: title,
            description: description,
          ),
          initialChildren: children,
        );

  static const String name = 'CongratulationRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CongratulationRouteArgs>();
      return _i5.CongratulationView(
        key: args.key,
        nextRoute: args.nextRoute,
        replaceAll: args.replaceAll,
        title: args.title,
        description: args.description,
      );
    },
  );
}

class CongratulationRouteArgs {
  const CongratulationRouteArgs({
    this.key,
    required this.nextRoute,
    this.replaceAll = false,
    this.title,
    this.description,
  });

  final _i87.Key? key;

  final _i86.PageRouteInfo<dynamic> nextRoute;

  final bool replaceAll;

  final String? title;

  final _i87.TextSpan? description;

  @override
  String toString() {
    return 'CongratulationRouteArgs{key: $key, nextRoute: $nextRoute, replaceAll: $replaceAll, title: $title, description: $description}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CongratulationRouteArgs) return false;
    return key == other.key &&
        nextRoute == other.nextRoute &&
        replaceAll == other.replaceAll &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      nextRoute.hashCode ^
      replaceAll.hashCode ^
      title.hashCode ^
      description.hashCode;
}

/// generated route for
/// [_i6.CouponListView]
class CouponListRoute extends _i86.PageRouteInfo<void> {
  const CouponListRoute({List<_i86.PageRouteInfo>? children})
      : super(CouponListRoute.name, initialChildren: children);

  static const String name = 'CouponListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i6.CouponListView();
    },
  );
}

/// generated route for
/// [_i7.CurrencyView]
class CurrencyRoute extends _i86.PageRouteInfo<void> {
  const CurrencyRoute({List<_i86.PageRouteInfo>? children})
      : super(CurrencyRoute.name, initialChildren: children);

  static const String name = 'CurrencyRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i7.CurrencyView();
    },
  );
}

/// generated route for
/// [_i8.DashboardView]
class DashboardRoute extends _i86.PageRouteInfo<void> {
  const DashboardRoute({List<_i86.PageRouteInfo>? children})
      : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i8.DashboardView();
    },
  );
}

/// generated route for
/// [_i9.DueCollectionReportListView]
class DueCollectionReportListRoute extends _i86.PageRouteInfo<void> {
  const DueCollectionReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(DueCollectionReportListRoute.name, initialChildren: children);

  static const String name = 'DueCollectionReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i9.DueCollectionReportListView();
    },
  );
}

/// generated route for
/// [_i10.DueListView]
class DueListRoute extends _i86.PageRouteInfo<void> {
  const DueListRoute({List<_i86.PageRouteInfo>? children})
      : super(DueListRoute.name, initialChildren: children);

  static const String name = 'DueListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i10.DueListView();
    },
  );
}

/// generated route for
/// [_i11.DueReportListView]
class DueReportListRoute extends _i86.PageRouteInfo<void> {
  const DueReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(DueReportListRoute.name, initialChildren: children);

  static const String name = 'DueReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i11.DueReportListView();
    },
  );
}

/// generated route for
/// [_i12.EditOrderView]
class EditOrderRoute extends _i86.PageRouteInfo<EditOrderRouteArgs> {
  EditOrderRoute({
    _i87.Key? key,
    required _i88.Sale editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          EditOrderRoute.name,
          args: EditOrderRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'EditOrderRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditOrderRouteArgs>();
      return _i12.EditOrderView(key: args.key, editModel: args.editModel);
    },
  );
}

class EditOrderRouteArgs {
  const EditOrderRouteArgs({this.key, required this.editModel});

  final _i87.Key? key;

  final _i88.Sale editModel;

  @override
  String toString() {
    return 'EditOrderRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EditOrderRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i13.EditProfileView]
class EditProfileRoute extends _i86.PageRouteInfo<void> {
  const EditProfileRoute({List<_i86.PageRouteInfo>? children})
      : super(EditProfileRoute.name, initialChildren: children);

  static const String name = 'EditProfileRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i13.EditProfileView();
    },
  );
}

/// generated route for
/// [_i14.ExpenseListView]
class ExpenseListRoute extends _i86.PageRouteInfo<void> {
  const ExpenseListRoute({List<_i86.PageRouteInfo>? children})
      : super(ExpenseListRoute.name, initialChildren: children);

  static const String name = 'ExpenseListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i14.ExpenseListView();
    },
  );
}

/// generated route for
/// [_i15.ExpenseReportListView]
class ExpenseReportListRoute extends _i86.PageRouteInfo<void> {
  const ExpenseReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(ExpenseReportListRoute.name, initialChildren: children);

  static const String name = 'ExpenseReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i15.ExpenseReportListView();
    },
  );
}

/// generated route for
/// [_i16.ForgotPasswordView]
class ForgotPasswordRoute extends _i86.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i86.PageRouteInfo>? children})
      : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i16.ForgotPasswordView();
    },
  );
}

/// generated route for
/// [_i17.IncomeListView]
class IncomeListRoute extends _i86.PageRouteInfo<void> {
  const IncomeListRoute({List<_i86.PageRouteInfo>? children})
      : super(IncomeListRoute.name, initialChildren: children);

  static const String name = 'IncomeListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i17.IncomeListView();
    },
  );
}

/// generated route for
/// [_i18.IncomeReportListView]
class IncomeReportListRoute extends _i86.PageRouteInfo<void> {
  const IncomeReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(IncomeReportListRoute.name, initialChildren: children);

  static const String name = 'IncomeReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i18.IncomeReportListView();
    },
  );
}

/// generated route for
/// [_i19.IngredientListView]
class IngredientListRoute extends _i86.PageRouteInfo<IngredientListRouteArgs> {
  IngredientListRoute({
    _i87.Key? key,
    bool purchaseSelector = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          IngredientListRoute.name,
          args: IngredientListRouteArgs(
            key: key,
            purchaseSelector: purchaseSelector,
          ),
          initialChildren: children,
        );

  static const String name = 'IngredientListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<IngredientListRouteArgs>(
        orElse: () => const IngredientListRouteArgs(),
      );
      return _i19.IngredientListView(
        key: args.key,
        purchaseSelector: args.purchaseSelector,
      );
    },
  );
}

class IngredientListRouteArgs {
  const IngredientListRouteArgs({this.key, this.purchaseSelector = false});

  final _i87.Key? key;

  final bool purchaseSelector;

  @override
  String toString() {
    return 'IngredientListRouteArgs{key: $key, purchaseSelector: $purchaseSelector}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! IngredientListRouteArgs) return false;
    return key == other.key && purchaseSelector == other.purchaseSelector;
  }

  @override
  int get hashCode => key.hashCode ^ purchaseSelector.hashCode;
}

/// generated route for
/// [_i20.InvoicePreviewView]
class InvoicePreviewRoute extends _i86.PageRouteInfo<InvoicePreviewRouteArgs> {
  InvoicePreviewRoute({
    _i87.Key? key,
    required _i89.InvoicePreviewType previewType,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          InvoicePreviewRoute.name,
          args: InvoicePreviewRouteArgs(key: key, previewType: previewType),
          initialChildren: children,
        );

  static const String name = 'InvoicePreviewRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<InvoicePreviewRouteArgs>();
      return _i20.InvoicePreviewView(
        key: args.key,
        previewType: args.previewType,
      );
    },
  );
}

class InvoicePreviewRouteArgs {
  const InvoicePreviewRouteArgs({this.key, required this.previewType});

  final _i87.Key? key;

  final _i89.InvoicePreviewType previewType;

  @override
  String toString() {
    return 'InvoicePreviewRouteArgs{key: $key, previewType: $previewType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! InvoicePreviewRouteArgs) return false;
    return key == other.key && previewType == other.previewType;
  }

  @override
  int get hashCode => key.hashCode ^ previewType.hashCode;
}

/// generated route for
/// [_i21.ItemDetailsView]
class ItemDetailsRoute extends _i86.PageRouteInfo<ItemDetailsRouteArgs> {
  ItemDetailsRoute({
    _i87.Key? key,
    required int itemId,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ItemDetailsRoute.name,
          args: ItemDetailsRouteArgs(key: key, itemId: itemId),
          initialChildren: children,
        );

  static const String name = 'ItemDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemDetailsRouteArgs>();
      return _i21.ItemDetailsView(key: args.key, itemId: args.itemId);
    },
  );
}

class ItemDetailsRouteArgs {
  const ItemDetailsRouteArgs({this.key, required this.itemId});

  final _i87.Key? key;

  final int itemId;

  @override
  String toString() {
    return 'ItemDetailsRouteArgs{key: $key, itemId: $itemId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ItemDetailsRouteArgs) return false;
    return key == other.key && itemId == other.itemId;
  }

  @override
  int get hashCode => key.hashCode ^ itemId.hashCode;
}

/// generated route for
/// [_i22.ItemListView]
class ItemListRoute extends _i86.PageRouteInfo<ItemListRouteArgs> {
  ItemListRoute({
    _i87.Key? key,
    _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ItemListRoute.name,
          args: ItemListRouteArgs(key: key, scaffoldKey: scaffoldKey),
          initialChildren: children,
        );

  static const String name = 'ItemListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemListRouteArgs>(
        orElse: () => const ItemListRouteArgs(),
      );
      return _i22.ItemListView(key: args.key, scaffoldKey: args.scaffoldKey);
    },
  );
}

class ItemListRouteArgs {
  const ItemListRouteArgs({this.key, this.scaffoldKey});

  final _i87.Key? key;

  final _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ItemListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ItemListRouteArgs) return false;
    return key == other.key && scaffoldKey == other.scaffoldKey;
  }

  @override
  int get hashCode => key.hashCode ^ scaffoldKey.hashCode;
}

/// generated route for
/// [_i23.ItemModifierListView]
class ItemModifierListRoute extends _i86.PageRouteInfo<void> {
  const ItemModifierListRoute({List<_i86.PageRouteInfo>? children})
      : super(ItemModifierListRoute.name, initialChildren: children);

  static const String name = 'ItemModifierListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i23.ItemModifierListView();
    },
  );
}

/// generated route for
/// [_i24.LanguageView]
class LanguageRoute extends _i86.PageRouteInfo<LanguageRouteArgs> {
  LanguageRoute({
    _i87.Key? key,
    bool getBack = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          LanguageRoute.name,
          args: LanguageRouteArgs(key: key, getBack: getBack),
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LanguageRouteArgs>(
        orElse: () => const LanguageRouteArgs(),
      );
      return _i24.LanguageView(key: args.key, getBack: args.getBack);
    },
  );
}

class LanguageRouteArgs {
  const LanguageRouteArgs({this.key, this.getBack = false});

  final _i87.Key? key;

  final bool getBack;

  @override
  String toString() {
    return 'LanguageRouteArgs{key: $key, getBack: $getBack}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LanguageRouteArgs) return false;
    return key == other.key && getBack == other.getBack;
  }

  @override
  int get hashCode => key.hashCode ^ getBack.hashCode;
}

/// generated route for
/// [_i25.ManageBusinessPaymentMethodView]
class ManageBusinessPaymentMethodRoute
    extends _i86.PageRouteInfo<ManageBusinessPaymentMethodRouteArgs> {
  ManageBusinessPaymentMethodRoute({
    _i87.Key? key,
    _i88.BusinessPaymentMethod? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageBusinessPaymentMethodRoute.name,
          args: ManageBusinessPaymentMethodRouteArgs(
            key: key,
            editModel: editModel,
          ),
          rawQueryParams: {'editModel': editModel},
          initialChildren: children,
        );

  static const String name = 'ManageBusinessPaymentMethodRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<ManageBusinessPaymentMethodRouteArgs>(
        orElse: () => ManageBusinessPaymentMethodRouteArgs(
          editModel: queryParams.get('editModel'),
        ),
      );
      return _i25.ManageBusinessPaymentMethodView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageBusinessPaymentMethodRouteArgs {
  const ManageBusinessPaymentMethodRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.BusinessPaymentMethod? editModel;

  @override
  String toString() {
    return 'ManageBusinessPaymentMethodRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageBusinessPaymentMethodRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i26.ManageCategoryView]
class ManageCategoryRoute extends _i86.PageRouteInfo<ManageCategoryRouteArgs> {
  ManageCategoryRoute({
    _i87.Key? key,
    _i88.ItemCategory? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageCategoryRoute.name,
          args: ManageCategoryRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageCategoryRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageCategoryRouteArgs>(
        orElse: () => const ManageCategoryRouteArgs(),
      );
      return _i26.ManageCategoryView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageCategoryRouteArgs {
  const ManageCategoryRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.ItemCategory? editModel;

  @override
  String toString() {
    return 'ManageCategoryRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageCategoryRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i27.ManageCouponView]
class ManageCouponRoute extends _i86.PageRouteInfo<ManageCouponRouteArgs> {
  ManageCouponRoute({
    _i87.Key? key,
    _i88.CouponModel? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageCouponRoute.name,
          args: ManageCouponRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageCouponRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageCouponRouteArgs>(
        orElse: () => const ManageCouponRouteArgs(),
      );
      return _i27.ManageCouponView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageCouponRouteArgs {
  const ManageCouponRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.CouponModel? editModel;

  @override
  String toString() {
    return 'ManageCouponRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageCouponRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i28.ManageDueCollectionView]
class ManageDueCollectionRoute
    extends _i86.PageRouteInfo<ManageDueCollectionRouteArgs> {
  ManageDueCollectionRoute({
    _i87.Key? key,
    required _i88.DueCollection collection,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageDueCollectionRoute.name,
          args: ManageDueCollectionRouteArgs(key: key, collection: collection),
          initialChildren: children,
        );

  static const String name = 'ManageDueCollectionRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageDueCollectionRouteArgs>();
      return _i28.ManageDueCollectionView(
        key: args.key,
        collection: args.collection,
      );
    },
  );
}

class ManageDueCollectionRouteArgs {
  const ManageDueCollectionRouteArgs({this.key, required this.collection});

  final _i87.Key? key;

  final _i88.DueCollection collection;

  @override
  String toString() {
    return 'ManageDueCollectionRouteArgs{key: $key, collection: $collection}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageDueCollectionRouteArgs) return false;
    return key == other.key && collection == other.collection;
  }

  @override
  int get hashCode => key.hashCode ^ collection.hashCode;
}

/// generated route for
/// [_i29.ManageExpenseCategoryView]
class ManageExpenseCategoryRoute
    extends _i86.PageRouteInfo<ManageExpenseCategoryRouteArgs> {
  ManageExpenseCategoryRoute({
    _i87.Key? key,
    _i88.ExpenseCategory? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageExpenseCategoryRoute.name,
          args: ManageExpenseCategoryRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageExpenseCategoryRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageExpenseCategoryRouteArgs>(
        orElse: () => const ManageExpenseCategoryRouteArgs(),
      );
      return _i29.ManageExpenseCategoryView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageExpenseCategoryRouteArgs {
  const ManageExpenseCategoryRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.ExpenseCategory? editModel;

  @override
  String toString() {
    return 'ManageExpenseCategoryRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageExpenseCategoryRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i30.ManageExpenseView]
class ManageExpenseRoute extends _i86.PageRouteInfo<ManageExpenseRouteArgs> {
  ManageExpenseRoute({
    _i87.Key? key,
    _i88.Expense? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageExpenseRoute.name,
          args: ManageExpenseRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageExpenseRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageExpenseRouteArgs>(
        orElse: () => const ManageExpenseRouteArgs(),
      );
      return _i30.ManageExpenseView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageExpenseRouteArgs {
  const ManageExpenseRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.Expense? editModel;

  @override
  String toString() {
    return 'ManageExpenseRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageExpenseRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i31.ManageIncomeCategoryView]
class ManageIncomeCategoryRoute
    extends _i86.PageRouteInfo<ManageIncomeCategoryRouteArgs> {
  ManageIncomeCategoryRoute({
    _i87.Key? key,
    _i88.IncomeCategory? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageIncomeCategoryRoute.name,
          args: ManageIncomeCategoryRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageIncomeCategoryRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageIncomeCategoryRouteArgs>(
        orElse: () => const ManageIncomeCategoryRouteArgs(),
      );
      return _i31.ManageIncomeCategoryView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageIncomeCategoryRouteArgs {
  const ManageIncomeCategoryRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.IncomeCategory? editModel;

  @override
  String toString() {
    return 'ManageIncomeCategoryRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageIncomeCategoryRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i32.ManageIncomeView]
class ManageIncomeRoute extends _i86.PageRouteInfo<ManageIncomeRouteArgs> {
  ManageIncomeRoute({
    _i87.Key? key,
    dynamic editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageIncomeRoute.name,
          args: ManageIncomeRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageIncomeRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageIncomeRouteArgs>(
        orElse: () => const ManageIncomeRouteArgs(),
      );
      return _i32.ManageIncomeView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageIncomeRouteArgs {
  const ManageIncomeRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final dynamic editModel;

  @override
  String toString() {
    return 'ManageIncomeRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageIncomeRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i33.ManageIngredientView]
class ManageIngredientRoute
    extends _i86.PageRouteInfo<ManageIngredientRouteArgs> {
  ManageIngredientRoute({
    _i87.Key? key,
    _i88.Ingredient? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageIngredientRoute.name,
          args: ManageIngredientRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageIngredientRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageIngredientRouteArgs>(
        orElse: () => const ManageIngredientRouteArgs(),
      );
      return _i33.ManageIngredientView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageIngredientRouteArgs {
  const ManageIngredientRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.Ingredient? editModel;

  @override
  String toString() {
    return 'ManageIngredientRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageIngredientRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i34.ManageItemModifierView]
class ManageItemModifierRoute
    extends _i86.PageRouteInfo<ManageItemModifierRouteArgs> {
  ManageItemModifierRoute({
    _i87.Key? key,
    _i88.ItemModifier? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageItemModifierRoute.name,
          args: ManageItemModifierRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageItemModifierRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageItemModifierRouteArgs>(
        orElse: () => const ManageItemModifierRouteArgs(),
      );
      return _i34.ManageItemModifierView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageItemModifierRouteArgs {
  const ManageItemModifierRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.ItemModifier? editModel;

  @override
  String toString() {
    return 'ManageItemModifierRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageItemModifierRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i35.ManageItemView]
class ManageItemRoute extends _i86.PageRouteInfo<ManageItemRouteArgs> {
  ManageItemRoute({
    _i87.Key? key,
    _i88.PItem? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageItemRoute.name,
          args: ManageItemRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageItemRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageItemRouteArgs>(
        orElse: () => const ManageItemRouteArgs(),
      );
      return _i35.ManageItemView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageItemRouteArgs {
  const ManageItemRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.PItem? editModel;

  @override
  String toString() {
    return 'ManageItemRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageItemRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i36.ManageMenuView]
class ManageMenuRoute extends _i86.PageRouteInfo<ManageMenuRouteArgs> {
  ManageMenuRoute({
    _i87.Key? key,
    _i88.ItemMenu? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageMenuRoute.name,
          args: ManageMenuRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageMenuRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageMenuRouteArgs>(
        orElse: () => const ManageMenuRouteArgs(),
      );
      return _i36.ManageMenuView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageMenuRouteArgs {
  const ManageMenuRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.ItemMenu? editModel;

  @override
  String toString() {
    return 'ManageMenuRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageMenuRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i37.ManageModifierGroupView]
class ManageModifierGroupRoute
    extends _i86.PageRouteInfo<ManageModifierGroupRouteArgs> {
  ManageModifierGroupRoute({
    _i87.Key? key,
    _i88.ItemModifierGroup? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageModifierGroupRoute.name,
          args: ManageModifierGroupRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageModifierGroupRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageModifierGroupRouteArgs>(
        orElse: () => const ManageModifierGroupRouteArgs(),
      );
      return _i37.ManageModifierGroupView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageModifierGroupRouteArgs {
  const ManageModifierGroupRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.ItemModifierGroup? editModel;

  @override
  String toString() {
    return 'ManageModifierGroupRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageModifierGroupRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i38.ManagePartyView]
class ManagePartyRoute extends _i86.PageRouteInfo<ManagePartyRouteArgs> {
  ManagePartyRoute({
    _i87.Key? key,
    _i88.Party? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManagePartyRoute.name,
          args: ManagePartyRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManagePartyRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManagePartyRouteArgs>(
        orElse: () => const ManagePartyRouteArgs(),
      );
      return _i38.ManagePartyView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManagePartyRouteArgs {
  const ManagePartyRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.Party? editModel;

  @override
  String toString() {
    return 'ManagePartyRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManagePartyRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i39.ManagePurchaseView]
class ManagePurchaseRoute extends _i86.PageRouteInfo<ManagePurchaseRouteArgs> {
  ManagePurchaseRoute({
    _i87.Key? key,
    _i88.Purchase? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManagePurchaseRoute.name,
          args: ManagePurchaseRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManagePurchaseRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManagePurchaseRouteArgs>(
        orElse: () => const ManagePurchaseRouteArgs(),
      );
      return _i39.ManagePurchaseView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManagePurchaseRouteArgs {
  const ManagePurchaseRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.Purchase? editModel;

  @override
  String toString() {
    return 'ManagePurchaseRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManagePurchaseRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i40.ManageQuotationView]
class ManageQuotationRoute
    extends _i86.PageRouteInfo<ManageQuotationRouteArgs> {
  ManageQuotationRoute({
    _i87.Key? key,
    bool isConverting = false,
    _i88.Quotation? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageQuotationRoute.name,
          args: ManageQuotationRouteArgs(
            key: key,
            isConverting: isConverting,
            editModel: editModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ManageQuotationRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageQuotationRouteArgs>(
        orElse: () => const ManageQuotationRouteArgs(),
      );
      return _i40.ManageQuotationView(
        key: args.key,
        isConverting: args.isConverting,
        editModel: args.editModel,
      );
    },
  );
}

class ManageQuotationRouteArgs {
  const ManageQuotationRouteArgs({
    this.key,
    this.isConverting = false,
    this.editModel,
  });

  final _i87.Key? key;

  final bool isConverting;

  final _i88.Quotation? editModel;

  @override
  String toString() {
    return 'ManageQuotationRouteArgs{key: $key, isConverting: $isConverting, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageQuotationRouteArgs) return false;
    return key == other.key &&
        isConverting == other.isConverting &&
        editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ isConverting.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i41.ManageTaxGroupView]
class ManageTaxGroupRoute extends _i86.PageRouteInfo<ManageTaxGroupRouteArgs> {
  ManageTaxGroupRoute({
    _i87.Key? key,
    _i88.TaxModel? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageTaxGroupRoute.name,
          args: ManageTaxGroupRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageTaxGroupRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageTaxGroupRouteArgs>(
        orElse: () => const ManageTaxGroupRouteArgs(),
      );
      return _i41.ManageTaxGroupView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageTaxGroupRouteArgs {
  const ManageTaxGroupRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.TaxModel? editModel;

  @override
  String toString() {
    return 'ManageTaxGroupRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageTaxGroupRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i42.ManageTaxView]
class ManageTaxRoute extends _i86.PageRouteInfo<ManageTaxRouteArgs> {
  ManageTaxRoute({
    _i87.Key? key,
    _i88.TaxModel? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageTaxRoute.name,
          args: ManageTaxRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageTaxRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageTaxRouteArgs>(
        orElse: () => const ManageTaxRouteArgs(),
      );
      return _i42.ManageTaxView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageTaxRouteArgs {
  const ManageTaxRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.TaxModel? editModel;

  @override
  String toString() {
    return 'ManageTaxRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageTaxRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i43.ManageUnitView]
class ManageUnitRoute extends _i86.PageRouteInfo<ManageUnitRouteArgs> {
  ManageUnitRoute({
    _i87.Key? key,
    _i88.ItemUnit? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageUnitRoute.name,
          args: ManageUnitRouteArgs(key: key, editModel: editModel),
          initialChildren: children,
        );

  static const String name = 'ManageUnitRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageUnitRouteArgs>(
        orElse: () => const ManageUnitRouteArgs(),
      );
      return _i43.ManageUnitView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageUnitRouteArgs {
  const ManageUnitRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.ItemUnit? editModel;

  @override
  String toString() {
    return 'ManageUnitRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageUnitRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i44.ManageUserRolePermissionView]
class ManageUserRolePermissionRoute
    extends _i86.PageRouteInfo<ManageUserRolePermissionRouteArgs> {
  ManageUserRolePermissionRoute({
    _i87.Key? key,
    _i88.PermittedStaff? editModel,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ManageUserRolePermissionRoute.name,
          args: ManageUserRolePermissionRouteArgs(
            key: key,
            editModel: editModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ManageUserRolePermissionRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageUserRolePermissionRouteArgs>(
        orElse: () => const ManageUserRolePermissionRouteArgs(),
      );
      return _i44.ManageUserRolePermissionView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class ManageUserRolePermissionRouteArgs {
  const ManageUserRolePermissionRouteArgs({this.key, this.editModel});

  final _i87.Key? key;

  final _i88.PermittedStaff? editModel;

  @override
  String toString() {
    return 'ManageUserRolePermissionRouteArgs{key: $key, editModel: $editModel}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ManageUserRolePermissionRouteArgs) return false;
    return key == other.key && editModel == other.editModel;
  }

  @override
  int get hashCode => key.hashCode ^ editModel.hashCode;
}

/// generated route for
/// [_i45.MenuListView]
class MenuListRoute extends _i86.PageRouteInfo<void> {
  const MenuListRoute({List<_i86.PageRouteInfo>? children})
      : super(MenuListRoute.name, initialChildren: children);

  static const String name = 'MenuListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i45.MenuListView();
    },
  );
}

/// generated route for
/// [_i46.ModifierGroupListView]
class ModifierGroupListRoute extends _i86.PageRouteInfo<void> {
  const ModifierGroupListRoute({List<_i86.PageRouteInfo>? children})
      : super(ModifierGroupListRoute.name, initialChildren: children);

  static const String name = 'ModifierGroupListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i46.ModifierGroupListView();
    },
  );
}

/// generated route for
/// [_i47.MoneyInListView]
class MoneyInListRoute extends _i86.PageRouteInfo<void> {
  const MoneyInListRoute({List<_i86.PageRouteInfo>? children})
      : super(MoneyInListRoute.name, initialChildren: children);

  static const String name = 'MoneyInListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i47.MoneyInListView();
    },
  );
}

/// generated route for
/// [_i48.MoneyOutListView]
class MoneyOutListRoute extends _i86.PageRouteInfo<void> {
  const MoneyOutListRoute({List<_i86.PageRouteInfo>? children})
      : super(MoneyOutListRoute.name, initialChildren: children);

  static const String name = 'MoneyOutListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i48.MoneyOutListView();
    },
  );
}

/// generated route for
/// [_i49.MuteHomeView]
class MuteHomeRoute extends _i86.PageRouteInfo<void> {
  const MuteHomeRoute({List<_i86.PageRouteInfo>? children})
      : super(MuteHomeRoute.name, initialChildren: children);

  static const String name = 'MuteHomeRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i49.MuteHomeView();
    },
  );
}

/// generated route for
/// [_i50.NotificationDetailsView]
class NotificationDetailsRoute extends _i86.PageRouteInfo<void> {
  const NotificationDetailsRoute({List<_i86.PageRouteInfo>? children})
      : super(NotificationDetailsRoute.name, initialChildren: children);

  static const String name = 'NotificationDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i50.NotificationDetailsView();
    },
  );
}

/// generated route for
/// [_i51.NotificationListView]
class NotificationListRoute extends _i86.PageRouteInfo<void> {
  const NotificationListRoute({List<_i86.PageRouteInfo>? children})
      : super(NotificationListRoute.name, initialChildren: children);

  static const String name = 'NotificationListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i51.NotificationListView();
    },
  );
}

/// generated route for
/// [_i52.OnboardView]
class OnboardRoute extends _i86.PageRouteInfo<void> {
  const OnboardRoute({List<_i86.PageRouteInfo>? children})
      : super(OnboardRoute.name, initialChildren: children);

  static const String name = 'OnboardRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i52.OnboardView();
    },
  );
}

/// generated route for
/// [_i53.OrderDetailsView]
class OrderDetailsRoute extends _i86.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i87.Key? key,
    required int orderId,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          OrderDetailsRoute.name,
          args: OrderDetailsRouteArgs(key: key, orderId: orderId),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderDetailsRouteArgs>();
      return _i53.OrderDetailsView(key: args.key, orderId: args.orderId);
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.orderId});

  final _i87.Key? key;

  final int orderId;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, orderId: $orderId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderDetailsRouteArgs) return false;
    return key == other.key && orderId == other.orderId;
  }

  @override
  int get hashCode => key.hashCode ^ orderId.hashCode;
}

/// generated route for
/// [_i54.OrderListView]
class OrderListRoute extends _i86.PageRouteInfo<OrderListRouteArgs> {
  OrderListRoute({
    _i87.Key? key,
    _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          OrderListRoute.name,
          args: OrderListRouteArgs(key: key, scaffoldKey: scaffoldKey),
          initialChildren: children,
        );

  static const String name = 'OrderListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderListRouteArgs>(
        orElse: () => const OrderListRouteArgs(),
      );
      return _i54.OrderListView(key: args.key, scaffoldKey: args.scaffoldKey);
    },
  );
}

class OrderListRouteArgs {
  const OrderListRouteArgs({this.key, this.scaffoldKey});

  final _i87.Key? key;

  final _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'OrderListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderListRouteArgs) return false;
    return key == other.key && scaffoldKey == other.scaffoldKey;
  }

  @override
  int get hashCode => key.hashCode ^ scaffoldKey.hashCode;
}

/// generated route for
/// [_i55.OrderPaymentView]
class OrderPaymentRoute extends _i86.PageRouteInfo<OrderPaymentRouteArgs> {
  OrderPaymentRoute({
    _i87.Key? key,
    required _i88.Sale saleData,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          OrderPaymentRoute.name,
          args: OrderPaymentRouteArgs(key: key, saleData: saleData),
          initialChildren: children,
        );

  static const String name = 'OrderPaymentRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OrderPaymentRouteArgs>();
      return _i55.OrderPaymentView(key: args.key, saleData: args.saleData);
    },
  );
}

class OrderPaymentRouteArgs {
  const OrderPaymentRouteArgs({this.key, required this.saleData});

  final _i87.Key? key;

  final _i88.Sale saleData;

  @override
  String toString() {
    return 'OrderPaymentRouteArgs{key: $key, saleData: $saleData}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderPaymentRouteArgs) return false;
    return key == other.key && saleData == other.saleData;
  }

  @override
  int get hashCode => key.hashCode ^ saleData.hashCode;
}

/// generated route for
/// [_i56.OtpVerificationView]
class OtpVerificationRoute
    extends _i86.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute({
    _i87.Key? key,
    required String email,
    required _i86.PageRouteInfo<dynamic> nextRoute,
    bool replaceAllRoutes = false,
    bool? saveToken = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          OtpVerificationRoute.name,
          args: OtpVerificationRouteArgs(
            key: key,
            email: email,
            nextRoute: nextRoute,
            replaceAllRoutes: replaceAllRoutes,
            saveToken: saveToken,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpVerificationRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpVerificationRouteArgs>();
      return _i56.OtpVerificationView(
        key: args.key,
        email: args.email,
        nextRoute: args.nextRoute,
        replaceAllRoutes: args.replaceAllRoutes,
        saveToken: args.saveToken,
      );
    },
  );
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs({
    this.key,
    required this.email,
    required this.nextRoute,
    this.replaceAllRoutes = false,
    this.saveToken = false,
  });

  final _i87.Key? key;

  final String email;

  final _i86.PageRouteInfo<dynamic> nextRoute;

  final bool replaceAllRoutes;

  final bool? saveToken;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key, email: $email, nextRoute: $nextRoute, replaceAllRoutes: $replaceAllRoutes, saveToken: $saveToken}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpVerificationRouteArgs) return false;
    return key == other.key &&
        email == other.email &&
        nextRoute == other.nextRoute &&
        replaceAllRoutes == other.replaceAllRoutes &&
        saveToken == other.saveToken;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      email.hashCode ^
      nextRoute.hashCode ^
      replaceAllRoutes.hashCode ^
      saveToken.hashCode;
}

/// generated route for
/// [_i57.PartyDetailsView]
class PartyDetailsRoute extends _i86.PageRouteInfo<PartyDetailsRouteArgs> {
  PartyDetailsRoute({
    _i87.Key? key,
    required int partyId,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          PartyDetailsRoute.name,
          args: PartyDetailsRouteArgs(key: key, partyId: partyId),
          rawPathParams: {'party_id': partyId},
          initialChildren: children,
        );

  static const String name = 'PartyDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PartyDetailsRouteArgs>(
        orElse: () =>
            PartyDetailsRouteArgs(partyId: pathParams.getInt('party_id')),
      );
      return _i57.PartyDetailsView(key: args.key, partyId: args.partyId);
    },
  );
}

class PartyDetailsRouteArgs {
  const PartyDetailsRouteArgs({this.key, required this.partyId});

  final _i87.Key? key;

  final int partyId;

  @override
  String toString() {
    return 'PartyDetailsRouteArgs{key: $key, partyId: $partyId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PartyDetailsRouteArgs) return false;
    return key == other.key && partyId == other.partyId;
  }

  @override
  int get hashCode => key.hashCode ^ partyId.hashCode;
}

/// generated route for
/// [_i58.PartyLedgerDetailsView]
class PartyLedgerDetailsRoute
    extends _i86.PageRouteInfo<PartyLedgerDetailsRouteArgs> {
  PartyLedgerDetailsRoute({
    _i87.Key? key,
    required _i88.Party party,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          PartyLedgerDetailsRoute.name,
          args: PartyLedgerDetailsRouteArgs(key: key, party: party),
          initialChildren: children,
        );

  static const String name = 'PartyLedgerDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PartyLedgerDetailsRouteArgs>();
      return _i58.PartyLedgerDetailsView(key: args.key, party: args.party);
    },
  );
}

class PartyLedgerDetailsRouteArgs {
  const PartyLedgerDetailsRouteArgs({this.key, required this.party});

  final _i87.Key? key;

  final _i88.Party party;

  @override
  String toString() {
    return 'PartyLedgerDetailsRouteArgs{key: $key, party: $party}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PartyLedgerDetailsRouteArgs) return false;
    return key == other.key && party == other.party;
  }

  @override
  int get hashCode => key.hashCode ^ party.hashCode;
}

/// generated route for
/// [_i59.PartyListView]
class PartyListRoute extends _i86.PageRouteInfo<void> {
  const PartyListRoute({List<_i86.PageRouteInfo>? children})
      : super(PartyListRoute.name, initialChildren: children);

  static const String name = 'PartyListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i59.PartyListView();
    },
  );
}

/// generated route for
/// [_i60.PaymentMethodListView]
class PaymentMethodListRoute extends _i86.PageRouteInfo<void> {
  const PaymentMethodListRoute({List<_i86.PageRouteInfo>? children})
      : super(PaymentMethodListRoute.name, initialChildren: children);

  static const String name = 'PaymentMethodListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i60.PaymentMethodListView();
    },
  );
}

/// generated route for
/// [_i61.PrintingOptionView]
class PrintingOptionRoute extends _i86.PageRouteInfo<void> {
  const PrintingOptionRoute({List<_i86.PageRouteInfo>? children})
      : super(PrintingOptionRoute.name, initialChildren: children);

  static const String name = 'PrintingOptionRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i61.PrintingOptionView();
    },
  );
}

/// generated route for
/// [_i62.PrivacyNPolicyView]
class PrivacyNPolicyRoute extends _i86.PageRouteInfo<void> {
  const PrivacyNPolicyRoute({List<_i86.PageRouteInfo>? children})
      : super(PrivacyNPolicyRoute.name, initialChildren: children);

  static const String name = 'PrivacyNPolicyRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i62.PrivacyNPolicyView();
    },
  );
}

/// generated route for
/// [_i63.PurchaseListView]
class PurchaseListRoute extends _i86.PageRouteInfo<void> {
  const PurchaseListRoute({List<_i86.PageRouteInfo>? children})
      : super(PurchaseListRoute.name, initialChildren: children);

  static const String name = 'PurchaseListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i63.PurchaseListView();
    },
  );
}

/// generated route for
/// [_i64.PurchasePaymentReceiveView]
class PurchasePaymentReceiveRoute extends _i86.PageRouteInfo<void> {
  const PurchasePaymentReceiveRoute({List<_i86.PageRouteInfo>? children})
      : super(PurchasePaymentReceiveRoute.name, initialChildren: children);

  static const String name = 'PurchasePaymentReceiveRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i64.PurchasePaymentReceiveView();
    },
  );
}

/// generated route for
/// [_i65.PurchaseReportListView]
class PurchaseReportListRoute extends _i86.PageRouteInfo<void> {
  const PurchaseReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(PurchaseReportListRoute.name, initialChildren: children);

  static const String name = 'PurchaseReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i65.PurchaseReportListView();
    },
  );
}

/// generated route for
/// [_i66.QuickOrderView]
class QuickOrderRoute extends _i86.PageRouteInfo<QuickOrderRouteArgs> {
  QuickOrderRoute({
    _i87.Key? key,
    _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          QuickOrderRoute.name,
          args: QuickOrderRouteArgs(key: key, scaffoldKey: scaffoldKey),
          initialChildren: children,
        );

  static const String name = 'QuickOrderRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuickOrderRouteArgs>(
        orElse: () => const QuickOrderRouteArgs(),
      );
      return _i66.QuickOrderView(key: args.key, scaffoldKey: args.scaffoldKey);
    },
  );
}

class QuickOrderRouteArgs {
  const QuickOrderRouteArgs({this.key, this.scaffoldKey});

  final _i87.Key? key;

  final _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'QuickOrderRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QuickOrderRouteArgs) return false;
    return key == other.key && scaffoldKey == other.scaffoldKey;
  }

  @override
  int get hashCode => key.hashCode ^ scaffoldKey.hashCode;
}

/// generated route for
/// [_i67.QuotationItemListView]
class QuotationItemListRoute
    extends _i86.PageRouteInfo<QuotationItemListRouteArgs> {
  QuotationItemListRoute({
    _i87.Key? key,
    bool getBack = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          QuotationItemListRoute.name,
          args: QuotationItemListRouteArgs(key: key, getBack: getBack),
          initialChildren: children,
        );

  static const String name = 'QuotationItemListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuotationItemListRouteArgs>(
        orElse: () => const QuotationItemListRouteArgs(),
      );
      return _i67.QuotationItemListView(key: args.key, getBack: args.getBack);
    },
  );
}

class QuotationItemListRouteArgs {
  const QuotationItemListRouteArgs({this.key, this.getBack = false});

  final _i87.Key? key;

  final bool getBack;

  @override
  String toString() {
    return 'QuotationItemListRouteArgs{key: $key, getBack: $getBack}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QuotationItemListRouteArgs) return false;
    return key == other.key && getBack == other.getBack;
  }

  @override
  int get hashCode => key.hashCode ^ getBack.hashCode;
}

/// generated route for
/// [_i68.QuotationListView]
class QuotationListRoute extends _i86.PageRouteInfo<void> {
  const QuotationListRoute({List<_i86.PageRouteInfo>? children})
      : super(QuotationListRoute.name, initialChildren: children);

  static const String name = 'QuotationListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i68.QuotationListView();
    },
  );
}

/// generated route for
/// [_i69.ReportListView]
class ReportListRoute extends _i86.PageRouteInfo<ReportListRouteArgs> {
  ReportListRoute({
    _i87.Key? key,
    _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ReportListRoute.name,
          args: ReportListRouteArgs(key: key, scaffoldKey: scaffoldKey),
          initialChildren: children,
        );

  static const String name = 'ReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReportListRouteArgs>(
        orElse: () => const ReportListRouteArgs(),
      );
      return _i69.ReportListView(key: args.key, scaffoldKey: args.scaffoldKey);
    },
  );
}

class ReportListRouteArgs {
  const ReportListRouteArgs({this.key, this.scaffoldKey});

  final _i87.Key? key;

  final _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ReportListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReportListRouteArgs) return false;
    return key == other.key && scaffoldKey == other.scaffoldKey;
  }

  @override
  int get hashCode => key.hashCode ^ scaffoldKey.hashCode;
}

/// generated route for
/// [_i70.ResetPasswordView]
class ResetPasswordRoute extends _i86.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i87.Key? key,
    required String email,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(key: key, email: email),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return _i70.ResetPasswordView(key: args.key, email: args.email);
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({this.key, required this.email});

  final _i87.Key? key;

  final String email;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ResetPasswordRouteArgs) return false;
    return key == other.key && email == other.email;
  }

  @override
  int get hashCode => key.hashCode ^ email.hashCode;
}

/// generated route for
/// [_i71.SalesQuotationReportListView]
class SalesQuotationReportListRoute extends _i86.PageRouteInfo<void> {
  const SalesQuotationReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(SalesQuotationReportListRoute.name, initialChildren: children);

  static const String name = 'SalesQuotationReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i71.SalesQuotationReportListView();
    },
  );
}

/// generated route for
/// [_i72.SalesReportListView]
class SalesReportListRoute extends _i86.PageRouteInfo<void> {
  const SalesReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(SalesReportListRoute.name, initialChildren: children);

  static const String name = 'SalesReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i72.SalesReportListView();
    },
  );
}

/// generated route for
/// [_i13.SetupProfileView]
class SetupProfileRoute extends _i86.PageRouteInfo<void> {
  const SetupProfileRoute({List<_i86.PageRouteInfo>? children})
      : super(SetupProfileRoute.name, initialChildren: children);

  static const String name = 'SetupProfileRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i13.SetupProfileView();
    },
  );
}

/// generated route for
/// [_i73.SignInView]
class SignInRoute extends _i86.PageRouteInfo<void> {
  const SignInRoute({List<_i86.PageRouteInfo>? children})
      : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i73.SignInView();
    },
  );
}

/// generated route for
/// [_i74.SignUpView]
class SignUpRoute extends _i86.PageRouteInfo<void> {
  const SignUpRoute({List<_i86.PageRouteInfo>? children})
      : super(SignUpRoute.name, initialChildren: children);

  static const String name = 'SignUpRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i74.SignUpView();
    },
  );
}

/// generated route for
/// [_i75.SplashView]
class SplashRoute extends _i86.PageRouteInfo<void> {
  const SplashRoute({List<_i86.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i75.SplashView();
    },
  );
}

/// generated route for
/// [_i76.StaffListView]
class StaffListRoute extends _i86.PageRouteInfo<void> {
  const StaffListRoute({List<_i86.PageRouteInfo>? children})
      : super(StaffListRoute.name, initialChildren: children);

  static const String name = 'StaffListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i76.StaffListView();
    },
  );
}

/// generated route for
/// [_i77.SubscriptionPlanListView]
class SubscriptionPlanListRoute extends _i86.PageRouteInfo<void> {
  const SubscriptionPlanListRoute({List<_i86.PageRouteInfo>? children})
      : super(SubscriptionPlanListRoute.name, initialChildren: children);

  static const String name = 'SubscriptionPlanListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i77.SubscriptionPlanListView();
    },
  );
}

/// generated route for
/// [_i78.TableListView]
class TableListRoute extends _i86.PageRouteInfo<void> {
  const TableListRoute({List<_i86.PageRouteInfo>? children})
      : super(TableListRoute.name, initialChildren: children);

  static const String name = 'TableListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i78.TableListView();
    },
  );
}

/// generated route for
/// [_i79.TaxListView]
class TaxListRoute extends _i86.PageRouteInfo<void> {
  const TaxListRoute({List<_i86.PageRouteInfo>? children})
      : super(TaxListRoute.name, initialChildren: children);

  static const String name = 'TaxListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i79.TaxListView();
    },
  );
}

/// generated route for
/// [_i80.TermsConditionsView]
class TermsConditionsRoute extends _i86.PageRouteInfo<void> {
  const TermsConditionsRoute({List<_i86.PageRouteInfo>? children})
      : super(TermsConditionsRoute.name, initialChildren: children);

  static const String name = 'TermsConditionsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i80.TermsConditionsView();
    },
  );
}

/// generated route for
/// [_i81.TransactionListView]
class TransactionListRoute extends _i86.PageRouteInfo<void> {
  const TransactionListRoute({List<_i86.PageRouteInfo>? children})
      : super(TransactionListRoute.name, initialChildren: children);

  static const String name = 'TransactionListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i81.TransactionListView();
    },
  );
}

/// generated route for
/// [_i82.TransactionReportListView]
class TransactionReportListRoute extends _i86.PageRouteInfo<void> {
  const TransactionReportListRoute({List<_i86.PageRouteInfo>? children})
      : super(TransactionReportListRoute.name, initialChildren: children);

  static const String name = 'TransactionReportListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i82.TransactionReportListView();
    },
  );
}

/// generated route for
/// [_i83.UnitListView]
class UnitListRoute extends _i86.PageRouteInfo<void> {
  const UnitListRoute({List<_i86.PageRouteInfo>? children})
      : super(UnitListRoute.name, initialChildren: children);

  static const String name = 'UnitListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i83.UnitListView();
    },
  );
}

/// generated route for
/// [_i84.UserRolePermissionListView]
class UserRolePermissionListRoute extends _i86.PageRouteInfo<void> {
  const UserRolePermissionListRoute({List<_i86.PageRouteInfo>? children})
      : super(UserRolePermissionListRoute.name, initialChildren: children);

  static const String name = 'UserRolePermissionListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i84.UserRolePermissionListView();
    },
  );
}

/// generated route for
/// [_i85.UserSettingsView]
class UserSettingsRoute extends _i86.PageRouteInfo<UserSettingsRouteArgs> {
  UserSettingsRoute({
    _i87.Key? key,
    _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey,
    List<_i86.PageRouteInfo>? children,
  }) : super(
          UserSettingsRoute.name,
          args: UserSettingsRouteArgs(key: key, scaffoldKey: scaffoldKey),
          initialChildren: children,
        );

  static const String name = 'UserSettingsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserSettingsRouteArgs>(
        orElse: () => const UserSettingsRouteArgs(),
      );
      return _i85.UserSettingsView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class UserSettingsRouteArgs {
  const UserSettingsRouteArgs({this.key, this.scaffoldKey});

  final _i87.Key? key;

  final _i87.GlobalKey<_i87.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'UserSettingsRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserSettingsRouteArgs) return false;
    return key == other.key && scaffoldKey == other.scaffoldKey;
  }

  @override
  int get hashCode => key.hashCode ^ scaffoldKey.hashCode;
}
