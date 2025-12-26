import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repository/repository.dart';
import '../../../widgets/widgets.dart';
import '../../../routes/app_routes.gr.dart';

@RoutePage()
class BottomNavView extends ConsumerStatefulWidget {
  const BottomNavView({super.key});

  @override
  ConsumerState<BottomNavView> createState() => _BottomNavViewState();
}

class _BottomNavViewState extends ConsumerState<BottomNavView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Durations.extralong4, _showSubscriptionDialogIfNeeded);

    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return BackButtonInvoker(
      showFloating: true,
      child: AutoTabsScaffold(
        scaffoldKey: scaffoldKey,
        animationDuration: Duration.zero,
        resizeToAvoidBottomInset: false,
        routes: [
          QuickOrderRoute(scaffoldKey: scaffoldKey),
          OrderListRoute(scaffoldKey: scaffoldKey),
          ItemListRoute(scaffoldKey: scaffoldKey),
          ReportListRoute(scaffoldKey: scaffoldKey),
          UserSettingsRoute(scaffoldKey: scaffoldKey),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Theme(
            data: _theme.copyWith(
              splashColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              backgroundColor: _theme.colorScheme.primaryContainer,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  // label: 'Sales',
                  label: t.common.sales,
                  icon: Icon(FontAwesome.cart_arrow_down_solid),
                ),
                BottomNavigationBarItem(
                  // label: 'Orders',
                  label: t.common.orders,
                  icon: Icon(IconlyBold.document),
                ),
                BottomNavigationBarItem(
                  // label: 'Items',
                  label: t.common.items,
                  icon: Icon(Bootstrap.box_seam_fill),
                ),
                BottomNavigationBarItem(
                  // label: 'Reports',
                  label: t.common.reports,
                  icon: Icon(IconlyBold.chart),
                ),
                BottomNavigationBarItem(
                  // label: 'Profile',
                  label: t.common.profile,
                  icon: Icon(Bootstrap.person_circle),
                ),
              ],
            ),
          );
        },
        drawer: Builder(
          builder: (drawerContext) {
            final _tabsRouter = AutoTabsRouter.of(drawerContext);
            return CustomNavigationDrawer(
              title: Text(AppConfig.appName),
              navigationTiles: [
                // Home / Quick Order
                NavDrawerTileItem(
                  //  title: "Home",
                  title: t.common.home,
                  svgIconPath: DAppDrawerIcons.home.svgPath,
                  tileType: NavDrawerTileType.bottomNav,
                  bottomNavIndex: 0,
                ),

                // Dashboard
                if (ref.can(PMKeys.dashboard))
                  NavDrawerTileItem(
                    // title: "Dashboard",
                    title: t.common.dashboard,
                    svgIconPath: DAppDrawerIcons.dashboard.svgPath,
                    route: DashboardRoute(),
                  ),

                // Parties
                if (ref.can(PMKeys.parties))
                  NavDrawerTileItem(
                    // title: "Parties",
                    title: t.common.parties,
                    svgIconPath: DAppDrawerIcons.parties.svgPath,
                    route: PartyListRoute(),
                  ),

                // Subscription Plan
                if (ref.can(PMKeys.planSubscription))
                  NavDrawerTileItem(
                    // title: "Subscription Plan",
                    title: t.common.subscriptionPlan,
                    svgIconPath: DAppDrawerIcons.subscriptionPlan.svgPath,
                    route: SubscriptionPlanListRoute(),
                  ),

                // Quotation List
                if (ref.can(PMKeys.quotations))
                  NavDrawerTileItem(
                    // title: "Quotation List",
                    title: t.common.quotationList,
                    svgIconPath: DAppDrawerIcons.quotationList.svgPath,
                    route: QuotationListRoute(),
                  ),

                // Purchase
                if (ref.canAny([PMKeys.purchases, PMKeys.ingreditents, PMKeys.units]))
                  NavDrawerTileItem(
                    // title: "Purchase",
                    title: t.common.purchase,
                    svgIconPath: DAppDrawerIcons.purchaseList.svgPath,
                    tileType: NavDrawerTileType.submenu,
                    submenu: [
                      // Purchase List
                      if (ref.can(PMKeys.purchases))
                        NavDrawerTileItem(
                          // title: "Purchase List",
                          title: t.common.purchaseList,
                          route: PurchaseListRoute(),
                        ),

                      // Ingredient List
                      if (ref.can(PMKeys.ingreditents))
                        NavDrawerTileItem(
                          // title: "Ingredient",
                          title: t.common.ingredient,
                          route: IngredientListRoute(),
                        ),

                      // Units
                      if (ref.can(PMKeys.units))
                        NavDrawerTileItem(
                          // title: "Unit",
                          title: t.common.unit,
                          route: UnitListRoute(),
                        ),
                    ],
                  ),

                // Due List
                if (ref.can(PMKeys.dueCollection))
                  NavDrawerTileItem(
                    title: t.common.dueList,
                    svgIconPath: DAppDrawerIcons.dueList.svgPath,
                    route: DueListRoute(),
                  ),

                // Items
                if (ref.canAny([
                  PMKeys.products,
                  PMKeys.menus,
                  PMKeys.categories,
                  PMKeys.modifierGroups,
                  PMKeys.itemModifiers,
                ]))
                  NavDrawerTileItem(
                    // title: "Items",
                    title: t.common.items,
                    svgIconPath: DAppDrawerIcons.itemList.svgPath,
                    tileType: NavDrawerTileType.submenu,
                    submenu: [
                      // Item Menus
                      if (ref.can(PMKeys.menus))
                        NavDrawerTileItem(
                          // title: "Menus",
                          title: t.common.menus,
                          route: MenuListRoute(),
                        ),

                      // Item Categories
                      if (ref.can(PMKeys.categories))
                        NavDrawerTileItem(
                          // title: "Categories",
                          title: t.common.category,
                          route: CategoryListRoute(),
                        ),

                      // Item List
                      if (ref.can(PMKeys.products))
                        NavDrawerTileItem(
                          // title: "Item List",
                          title: t.common.itemsList,
                          tileType: NavDrawerTileType.bottomNav,
                          bottomNavIndex: 2,
                        ),

                      // Modifier Groups
                      if (ref.can(PMKeys.modifierGroups))
                        NavDrawerTileItem(
                          // title: "Modifier Groups",
                          title: t.common.modifierGroups,
                          route: ModifierGroupListRoute(),
                        ),

                      // Item Modifiers
                      if (ref.can(PMKeys.itemModifiers))
                        NavDrawerTileItem(
                          // title: "Item Modifiers",
                          title: t.common.itemModifiers,
                          route: ItemModifierListRoute(),
                        ),
                    ],
                  ),

                // Table List
                if (ref.can(PMKeys.tables))
                  NavDrawerTileItem(
                    title: t.common.table,
                    svgIconPath: DAppDrawerIcons.table.svgPath,
                    route: TableListRoute(),
                  ),

                // Staff
                if (ref.can(PMKeys.staff))
                  NavDrawerTileItem(
                    // title: "Staff",
                    title: t.common.staff,
                    svgIconPath: DAppDrawerIcons.staff.svgPath,
                    route: StaffListRoute(),
                  ),

                // Money In
                if (ref.can(PMKeys.moneyIn))
                  NavDrawerTileItem(
                    // title: "Money In",
                    title: t.common.moneyInList,
                    svgIconPath: DAppDrawerIcons.moneyInList.svgPath,
                    route: MoneyInListRoute(),
                  ),

                // Money Out
                if (ref.can(PMKeys.moneyOut))
                  NavDrawerTileItem(
                    // title: "Money Out",
                    title: t.common.moneyOutList,
                    svgIconPath: DAppDrawerIcons.moneyOutList.svgPath,
                    route: MoneyOutListRoute(),
                  ),

                //  Transaction List
                if (ref.can(PMKeys.transactions))
                  NavDrawerTileItem(
                    // title: "Transaction List",
                    title: t.common.transactionList,
                    svgIconPath: DAppDrawerIcons.transactionList.svgPath,
                    route: TransactionListRoute(),
                  ),

                // Income
                if (ref.can(PMKeys.income))
                  NavDrawerTileItem(
                    // title: "Income",
                    title: t.common.income,
                    svgIconPath: DAppDrawerIcons.income.svgPath,
                    route: IncomeListRoute(),
                  ),

                // Expense
                if (ref.can(PMKeys.expense))
                  NavDrawerTileItem(
                    // title: "Expense",
                    title: t.common.expense,
                    svgIconPath: DAppDrawerIcons.expense.svgPath,
                    route: ExpenseListRoute(),
                  ),

                // Coupon
                if (ref.can(PMKeys.coupon))
                  NavDrawerTileItem(
                    // title: "Coupon",
                    title: t.common.coupon,
                    svgIconPath: DAppDrawerIcons.couponList.svgPath,
                    route: CouponListRoute(),
                  ),

                // VAT
                if (ref.can(PMKeys.vat))
                  NavDrawerTileItem(
                    // title: "VAT",
                    title: t.common.vat,
                    svgIconPath: DAppDrawerIcons.taxList.svgPath,
                    route: TaxListRoute(),
                  ),
              ],
              onTap: (tile) {
                scaffoldKey.currentState?.closeDrawer();

                if (tile.tileType == NavDrawerTileType.bottomNav) {
                  return _tabsRouter.setActiveIndex(tile.bottomNavIndex!);
                }

                if (tile.tileType == NavDrawerTileType.action) {
                  return;
                }

                if (tile.tileType == NavDrawerTileType.route && tile.route != null) {
                  context.router.push(tile.route!);
                  return;
                }
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> _showSubscriptionDialogIfNeeded() async {
    if (mounted) {
      if (ref.read(userRepositoryProvider).value?.isPlanExpired == true && context.mounted) {
        if (context.router.current.name != BottomNavRoute.name) {
          return;
        }

        return await showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (popContext) {
            final t = Translations.of(popContext);

            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              actionsPadding: const EdgeInsets.all(12),
              // title: const Text('Subscription Expired!'),
              title: Text(t.prompt.subscriptionExpired.title),
              // content: const Text('Please subscribe to continue.'),
              content: Text(t.prompt.subscriptionExpired.message),
              actions: [
                TextButton(
                  onPressed: () async {
                    Navigator.of(popContext).pop();
                    return context.router
                        .push<void>(const SubscriptionPlanListRoute())
                        .whenComplete(() => setState(() {}));
                  },
                  child: Text(t.prompt.subscriptionExpired.action),
                ),
              ],
            );
          },
        );
      }
    }
  }
}
