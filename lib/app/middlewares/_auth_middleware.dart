import 'package:auto_route/auto_route.dart';

import '../data/repository/repository.dart';
import '../routes/app_routes.gr.dart';

class AuthGuard extends AutoRouteGuard {
  const AuthGuard(this.ref);
  final WidgetRef ref;

  @override
  Future<void> onNavigation(resolver, router) async {
    final _prefs = ref.read(sharedPrefsProvider);
    
    // Marcar que ya se completó el tour la primera vez para evitar mostrar onboard
    if (_prefs.getBool(DAppSPrefsKeys.firstTour) ?? true) {
      await _prefs.setBool(DAppSPrefsKeys.firstTour, false);
    }

    final userState = await ref.read(userRepositoryProvider.future);

    if (userState == null) {
      resolver.redirectUntil(SignInRoute(), replace: true);
      return;
    }

    if (userState.business == null) {
      resolver.redirectUntil(SetupProfileRoute(), replace: true);
      return;
    }

    return router.replacePath<void>('/user-panel/bottom-nav');
  }
}
