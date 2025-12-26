import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';

import 'app/core/theme/theme.dart';
import 'app/routes/app_routes.dart';
import 'app/services/services.dart';
import 'i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final _prefs = await SharedPreferences.getInstance();
  final httpClient = HTTPDioClient.initClient(prefs: _prefs);
  final appLocaleService = AppLocaleService(_prefs);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          sharedPrefsProvider.overrideWithValue(_prefs),
          httpDioClientProvider.overrideWithValue(httpClient),
          appLocaleServiceProvider.overrideWithValue(appLocaleService)
        ],
        child: const AcnooApp(),
      ),
    ),
  );
}

class AcnooApp extends ConsumerStatefulWidget {
  const AcnooApp({super.key});

  @override
  ConsumerState<AcnooApp> createState() => _AcnooAppState();
}

class _AcnooAppState extends ConsumerState<AcnooApp> {
  late final routes = AppRoutes(ref);

  ValueKey<String> appKey = ValueKey(DateTime.now().toIso8601String());
  void _updateAppKey() {
    setState(() => appKey = ValueKey(DateTime.now().toIso8601String()));
  }

  @override
  void initState() {
    currencyNotifier.addListener(_updateAppKey);
    ref.read(authStateListenerProvider).initListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appThemeProv = ref.watch(appThemeProvider);
    // final localeProvider = ref.watch(appServiceProvider);

    return DSizeUtils.init(
      context,
      builder: (context) => MaterialApp.router(
        key: appKey,
        debugShowCheckedModeBanner: false, // Oculta el banner DEBUG
        themeMode: appThemeProv.themeMode,
        theme: DAppTheme.kLightTheme,
        // darkTheme: DAppTheme.kDarkTheme,
        routerConfig: routes.config(),

        // Locale Config
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
      ),
    );
  }
}
