import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repository/repository.dart';
import '../../../../widgets/widgets.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../common/widgets/widgets.dart';

@RoutePage()
class UserSettingsView extends ConsumerWidget {
  const UserSettingsView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userRepositoryProvider).value;
    final _theme = Theme.of(context);
    final t = Translations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        scaffoldKey: scaffoldKey,
        title: Text(t.common.profile),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: ref.read(userRepositoryProvider.notifier).getUser,
        child: PageNavigationListView(
          header: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 16),
            color: _theme.colorScheme.primaryContainer,
            child: Column(
              children: [
                // Profile Image
                SizedBox.square(
                  dimension: 72,
                  child: UserAvatarPicker(
                    image: user?.business?.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox.square(dimension: 8),

                // Business Name
                Text(
                  user?.business?.companyName ?? 'N/A',
                  style: _theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),

                // Active Plan
                Text(
                  user?.business?.enrolledPlan?.plan?.subscriptionName ?? "N/A",
                  style: _theme.textTheme.bodyLarge?.copyWith(
                    color: _theme.colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
          navTiles: [
            // User Profile
            PageNavigationNavTile(
              title: t.common.myProfile,
              svgIconPath: DAppSvgNavIcons.myProfile,
              route: const EditProfileRoute(),
            ),

            // Printing Option
            if (ref.can(PMKeys.printingOption))
              PageNavigationNavTile(
                title: t.common.printingOption,
                svgIconPath: DAppSvgNavIcons.printingOption,
                route: const PrintingOptionRoute(),
              ),

            // Language
            PageNavigationNavTile(
              title: t.common.language,
              svgIconPath: DAppSvgNavIcons.language,
              route: LanguageRoute(getBack: true),
            ),

            // Currency
            // Comentado epiob
            // // Monedas en app
            // if (ref.can(PMKeys.currency))
            //   PageNavigationNavTile(
            //     title: t.common.currency,
            //     svgIconPath: DAppSvgNavIcons.currency,
            //     route: const CurrencyRoute(),
            //   ),

            // Business Payment Method
            if (ref.can(PMKeys.paymentMethod))
              PageNavigationNavTile(
                title: t.common.paymentMethod,
                svgIconPath: DAppSvgNavIcons.paymentMethod,
                route: const BusinessPaymentMethodListRoute(),
              ),

            // User Role Permission
            if (ref.can(PMKeys.userRolePermission))
              PageNavigationNavTile(
                title: t.common.roleNPermission,
                svgIconPath: DAppSvgNavIcons.rolesPermissions,
                route: const UserRolePermissionListRoute(),
              ),

            // Rate Us
            /*
            PageNavigationNavTile(
              title: t.common.rateUs,
              svgIconPath: DAppSvgNavIcons.rateUs,
            ),
            */

            // Terms & Condition
            // Comentado epiob
            // Términos y condiciones
            // PageNavigationNavTile(
            //   title: t.common.termsAndConditions,
            //   svgIconPath: DAppSvgNavIcons.termsConditions,
            //   route: const TermsConditionsRoute(),
            // ),

            // Privacy & Policy
            // Comentado epiob
            // Política de privacidad
            // PageNavigationNavTile(
            //   title: t.pages.privacyPolicy.title,
            //   svgIconPath: DAppSvgNavIcons.privacyPolicy,
            //   route: const PrivacyNPolicyRoute(),
            // ),

            // About Us
            // Comentado epiob
            // Página sobre nosotros
            // PageNavigationNavTile(
            //   title: t.pages.aboutUs.title,
            //   svgIconPath: DAppSvgNavIcons.aboutUs,
            //   route: const AboutUsRoute(),
            // ),

            // Logout
            PageNavigationNavTile<String>(
              title: t.common.logout,
              svgIconPath: DAppSvgNavIcons.logOut,
              type: PageNavigationListTileType.function,
              value: 'log-out',
            ),
          ],
          onTap: (value) async {
            if (value.type == PageNavigationListTileType.navigation && value.route != null) {
              await context.router.push(value.route!);
            } else if (value.type == PageNavigationListTileType.function) {
              return await SharedWidgets.handleSignOut(context);
            }
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
