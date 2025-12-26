import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/core.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class ReportListView extends ConsumerWidget {
  const ReportListView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        scaffoldKey: scaffoldKey,
        title: Text(t.common.reports),
      ),
      body: PermissionGate.canAny(
        moduleKeys: [
          PMKeys.salesReport,
          PMKeys.salesQuotationReport,
          PMKeys.purchaseReport,
          PMKeys.dueReport,
          PMKeys.dueCollectionReport,
          PMKeys.transactionReport,
          PMKeys.incomeReport,
          PMKeys.expenseReport,
        ],
        fallback: PermissionGate.imageFallback(),
        child: PageNavigationListView(
          onTap: (value) async {
            if (value.type == PageNavigationListTileType.navigation && value.route != null) {
              await context.router.push(value.route!);
            }
          },
          navTiles: [
            // Sales Report
            if (ref.can(PMKeys.salesReport))
              PageNavigationNavTile(
                title: t.common.salesReport,
                svgIconPath: DAppSvgNavIcons.salesReport,
                route: const SalesReportListRoute(),
              ),

            // Sales Quotation
            if (ref.can(PMKeys.salesQuotationReport))
              PageNavigationNavTile(
                // title: 'Sales Quotation',
                title: t.common.salesQuotationReport,
                svgIconPath: DAppSvgNavIcons.salesQuotation,
                route: const SalesQuotationReportListRoute(),
              ),

            // Purchase Report
            if (ref.can(PMKeys.purchaseReport))
              PageNavigationNavTile(
                title: t.common.purchaseReport,
                svgIconPath: DAppSvgNavIcons.purchaseReport,
                route: const PurchaseReportListRoute(),
              ),

            // Due Report
            if (ref.can(PMKeys.dueReport))
              PageNavigationNavTile(
                title: t.common.dueReport,
                svgIconPath: DAppSvgNavIcons.dueReport,
                route: const DueReportListRoute(),
              ),

            // Due Collection Report
            if (ref.can(PMKeys.dueCollectionReport))
              PageNavigationNavTile(
                title: t.common.dueCollectionReport,
                svgIconPath: DAppSvgNavIcons.dueCollectionReport,
                route: const DueCollectionReportListRoute(),
              ),

            // Transaction Report
            if (ref.can(PMKeys.transactionReport))
              PageNavigationNavTile(
                title: t.common.transactionReport,
                svgIconPath: DAppSvgNavIcons.transactionReport,
                route: const TransactionReportListRoute(),
              ),

            // Income Report
            if (ref.can(PMKeys.incomeReport))
              PageNavigationNavTile(
                title: t.common.incomeReport,
                svgIconPath: DAppSvgNavIcons.incomeReport,
                route: const IncomeReportListRoute(),
              ),

            // Expense Report
            if (ref.can(PMKeys.expenseReport))
              PageNavigationNavTile(
                title: t.common.expenseReport,
                svgIconPath: DAppSvgNavIcons.expenseReport,
                route: const ExpenseReportListRoute(),
              ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
