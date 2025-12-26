import 'dart:ui';

import '../../core.dart' show SvgImageHolder;

abstract class DAppImages {
  static const String appIcon = 'assets/app/app_icon.png';
  static const String splashLogo = 'assets/app/app_splash_icon.png';

  // Shapes
  static const String userPlaceholder = 'assets/shapes/user_placeholder.png';
  static const String emptyScreenLogo = 'assets/shapes/emtpy_screen.png';
  static const String congratulationAvatar = 'assets/shapes/congratulation_avatar.png';
  static const String emptyImagePlaceholder = 'assets/shapes/image_placeholder.png';
  static String splashDrop({bool isSuccess = true}) =>
      'assets/shapes/splash_drop_${isSuccess ? 'success' : 'failed'}.png';
  static const String noInternet = 'assets/shapes/no_internet.png';

  static const String emptyPlaceholder = 'assets/shapes/empty_placeholder.png';
  static const String glowCheckIcon = 'assets/shapes/glow_check.svg';

  static String splashDropLottie({bool isSuccess = true}) {
    return 'assets/lottie/splash_drop_${isSuccess ? 'success' : 'failed'}.json';
  }
}

abstract class DAppDrawerIcons {
  static final SvgImageHolder home = (
    svgPath: 'assets/icons/drawer_icons/home.svg',
    baseColor: null,
  );
  static final SvgImageHolder dashboard = (
    svgPath: 'assets/icons/drawer_icons/dashboard.svg',
    baseColor: null,
  );
  static final SvgImageHolder parties = (
    svgPath: 'assets/icons/drawer_icons/parties.svg',
    baseColor: null,
  );
  static final SvgImageHolder subscriptionPlan = (
    svgPath: 'assets/icons/drawer_icons/subscription_plan.svg',
    baseColor: null,
  );
  static final SvgImageHolder salesList = (
    svgPath: 'assets/icons/drawer_icons/sales_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder quotationList = (
    svgPath: 'assets/icons/drawer_icons/estimate_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder purchaseList = (
    svgPath: 'assets/icons/drawer_icons/purchase_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder dueList = (
    svgPath: 'assets/icons/drawer_icons/due_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder itemList = (
    svgPath: 'assets/icons/drawer_icons/item_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder table = (
    svgPath: 'assets/icons/drawer_icons/table.svg',
    baseColor: null,
  );
  static final SvgImageHolder lossProfit = (
    svgPath: 'assets/icons/drawer_icons/loss_profit.svg',
    baseColor: null,
  );
  static final SvgImageHolder stocks = (
    svgPath: 'assets/icons/drawer_icons/stocks.svg',
    baseColor: null,
  );
  static final SvgImageHolder staff = (
    svgPath: 'assets/icons/drawer_icons/staff.svg',
    baseColor: null,
  );
  static final SvgImageHolder moneyInList = (
    svgPath: 'assets/icons/drawer_icons/money_in_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder moneyOutList = (
    svgPath: 'assets/icons/drawer_icons/money_out_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder transactionList = (
    svgPath: 'assets/icons/drawer_icons/transaction_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder income = (
    svgPath: 'assets/icons/drawer_icons/income_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder expense = (
    svgPath: 'assets/icons/drawer_icons/expense_list.svg',
    baseColor: null,
  );
  static final SvgImageHolder report = (
    svgPath: 'assets/icons/drawer_icons/repost.svg',
    baseColor: null,
  );
  static final SvgImageHolder couponList = (
    svgPath: 'assets/icons/drawer_icons/coupon.svg',
    baseColor: null,
  );
  static final SvgImageHolder taxList = (
    svgPath: 'assets/icons/drawer_icons/tax_list.svg',
    baseColor: null,
  );
}

abstract class DAppSvgNavIcons {
  // Settings Icons
  static SvgImageHolder myProfile = (
    svgPath: 'assets/icons/svg_icons/profile.svg',
    baseColor: const Color(0xff007AFF),
  );
  static SvgImageHolder printingOption = (
    svgPath: 'assets/icons/svg_icons/printing_option.svg',
    // baseColor: const Color(0xffFF66A5),
    baseColor: const Color(0xFFFF66A5),
  );
  static SvgImageHolder language = (
    svgPath: 'assets/icons/svg_icons/language.svg',
    baseColor: const Color(0xffAF52DE),
  );
  static SvgImageHolder currency = (
    svgPath: 'assets/icons/svg_icons/currency.svg',
    baseColor: const Color(0xff30B0C7),
  );
  static SvgImageHolder paymentMethod = (
    svgPath: 'assets/icons/svg_icons/payment_method.svg',
    baseColor: const Color(0xff5856D6),
  );
  static SvgImageHolder rolesPermissions = (
    svgPath: 'assets/icons/svg_icons/roles_permissions.svg',
    baseColor: const Color(0xff7500FD),
  );
  static SvgImageHolder rateUs = (
    svgPath: 'assets/icons/svg_icons/rate_us.svg',
    baseColor: const Color(0xffFF2D55),
  );
  static SvgImageHolder termsConditions = (
    svgPath: 'assets/icons/svg_icons/terms_conditions.svg',
    baseColor: const Color(0xff007AFF),
  );
  static SvgImageHolder privacyPolicy = (
    svgPath: 'assets/icons/svg_icons/privacy.svg',
    baseColor: const Color(0xff00C7BE),
  );
  static SvgImageHolder aboutUs = (
    svgPath: 'assets/icons/svg_icons/about_us.svg',
    baseColor: const Color(0xffAF52DE),
  );
  static SvgImageHolder logOut = (
    svgPath: 'assets/icons/svg_icons/logout.svg',
    baseColor: const Color(0xff2F5A76),
  );

  // Report Icons
  static SvgImageHolder salesReport = (
    svgPath: 'assets/icons/svg_icons/sales_report.svg',
    baseColor: const Color(0xff34C759),
  );
  static SvgImageHolder salesQuotation = (
    svgPath: 'assets/icons/svg_icons/sales_estimate.svg',
    // baseColor: const Color(0xffFF66A5),
    baseColor: const Color(0xFFFF66A5),
  );
  static SvgImageHolder purchaseReport = (
    svgPath: 'assets/icons/svg_icons/purchase_report.svg',
    baseColor: const Color(0xff029394),
  );
  static SvgImageHolder stockReport = (
    svgPath: 'assets/icons/svg_icons/stock_report.svg',
    baseColor: const Color(0xff007AFF),
  );
  static SvgImageHolder dueReport = (
    svgPath: 'assets/icons/svg_icons/due_report.svg',
    baseColor: const Color(0xff0094E8),
  );
  static SvgImageHolder dueCollectionReport = (
    svgPath: 'assets/icons/svg_icons/due_collection_report.svg',
    // baseColor: const Color(0xffFF66A5),
    baseColor: const Color(0xFFFF66A5),
  );
  static SvgImageHolder transactionReport = (
    svgPath: 'assets/icons/svg_icons/transation_report.svg',
    baseColor: const Color(0xffAF52DE),
  );

  static SvgImageHolder incomeReport = (
    svgPath: 'assets/icons/svg_icons/income_report.svg',
    baseColor: const Color(0xff18A538),
  );
  static SvgImageHolder expenseReport = (
    svgPath: 'assets/icons/svg_icons/expense_report.svg',
    baseColor: const Color(0xffC52127),
  );
}

abstract class DAppSvgIcons {
  static const SvgImageHolder pdf = (
    svgPath: 'assets/icons/svg_icons/pdf.svg',
    // baseColor: Color(0xffFF66A5),
    baseColor: Color(0xFFFF66A5),
  );

  static const SvgImageHolder diningTable = (
    svgPath: 'assets/icons/svg_icons/dining_table.svg',
    // baseColor: Color(0xffFF66A5),
    baseColor: Color(0xFFFF66A5),
  );

  static const SvgImageHolder basicStar = (
    svgPath: 'assets/icons/svg_icons/basic_star.svg',
    // baseColor: Color(0xffFF66A5),
    baseColor: Color(0xFFFF66A5),
  );
  static const SvgImageHolder clover = (
    svgPath: 'assets/icons/svg_icons/clover.svg',
    baseColor: Color(0xffFFFFFF),
  );
  static const SvgImageHolder petals = (
    svgPath: 'assets/icons/svg_icons/petals.svg',
    baseColor: Color(0xff007AFF),
  );

  static const SvgImageHolder octagonCheck = (
    svgPath: 'assets/icons/svg_icons/octagon_check.svg',
    baseColor: Color(0xff00932C),
  );
  static const SvgImageHolder closeCircle = (
    svgPath: 'assets/icons/svg_icons/close_circle.svg',
    baseColor: Color(0xffFF3B30),
  );
  static const SvgImageHolder sliders = (
    svgPath: 'assets/icons/svg_icons/sliders.svg',
    // baseColor: Color(0xffFF66A5),
    baseColor: Color(0xFFFF66A5),
  );
  static const SvgImageHolder discountFlag = (
    svgPath: 'assets/icons/svg_icons/discount_flag.svg',
    baseColor: Color(0xff00932C),
  );

  static const SvgImageHolder permissionDenied = (
    svgPath: 'assets/icons/svg_icons/permission_denied.svg',
    baseColor: null,
  );
}

abstract class PaymentMethodIcon {
  //payment method icon
  static SvgImageHolder flutterWaveIcon = (
    svgPath: 'assets/icons/payment_icons/flutter_wave.svg',
    baseColor: const Color(0xffEBA12A),
  );
  static SvgImageHolder payOnlineIcon = (
    svgPath: 'assets/icons/payment_icons/pay_online.svg',
    baseColor: const Color(0xff8DD100),
  );
  static SvgImageHolder paypalIcon = (
    svgPath: 'assets/icons/payment_icons/paypal.svg',
    baseColor: const Color(0xff179BD7),
  );
  static SvgImageHolder paytmIcon = (
    svgPath: 'assets/icons/payment_icons/paytm.svg',
    baseColor: const Color(0xff00BAF2),
  );
  static SvgImageHolder payStackIcon = (
    svgPath: 'assets/icons/payment_icons/paystack.svg',
    baseColor: const Color(0xff00C3F7),
  );
  static SvgImageHolder rezorpayIcon = (
    svgPath: 'assets/icons/payment_icons/rezorpay.svg',
    baseColor: const Color(0xff3395FF),
  );
  static SvgImageHolder ssslCommarzIcon = (
    svgPath: 'assets/icons/payment_icons/ssl_commarz.svg',
    baseColor: const Color(0xff295CAB),
  );
  static SvgImageHolder stripeIcon = (
    svgPath: 'assets/icons/payment_icons/stripe.svg',
    baseColor: const Color(0xff635BFF),
  );
}
