import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/app/provider/splash_provider.dart';
import 'package:koora_kick/common/deeplink/deeplink_manager.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:koora_kick/common/managers/firebase/manager/firebase_manager.dart';
import 'package:koora_kick/common/theme/theme_notifier.dart';
import 'package:koora_kick/config/env.dart';
import 'package:koora_kick/features/splash/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/common/extensions/app_connectivity_extension.dart';
import 'package:koora_kick/common/services/user_session_service.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:koora_kick/utils/platform_type.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {

  @override
  Widget build(BuildContext context) {
    ref.listen(languageNotifierProvider, (previous, next) {
      if (next is AsyncData<AppLanguage>) {
        final newLocale = next.value.asLocale;
        if (context.locale != newLocale) {
          context.setLocale(newLocale);
        }
      }
    });

    ref.watch(firebaseManagerProvider);
    ref.watch(deeplinkManagerProvider);
    ref.listenToConnectivity(context);

    final splashReady = ref.watch(splashDelayProvider);
    final userSession = ref.watch(userSessionServiceProvider);
    final localeAsync = ref.watch(languageNotifierProvider);
    final isRestarting = ref.watch(appRestartNotifierProvider);

    final showSplash = localeAsync.isLoading ||
        splashReady.isLoading ||
        userSession.isLoading ||
        isRestarting;

    return ScreenUtilInit(
      designSize: detectPlatformType().designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Consumer(
        builder: (consumerContext, ref, child) {
          final router = ref.watch(goRouterProvider);
          final theme = ref.watch(themeProvider);

          if (showSplash) {
            return _buildSplashApp(consumerContext, theme);
          }

          return _buildMainApp(consumerContext, router, theme, context.locale);
        },
      ),
    );
  }

  Widget _buildSplashApp(BuildContext context, ThemeData theme) => MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: theme,
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    scaffoldMessengerKey: SnackBarUtils.messengerKey,
    home: const SplashScreen(),
  );

  Widget _buildMainApp(
    BuildContext context,
    RouterConfig<Object> router,
    ThemeData theme,
    Locale locale,
  ) => MaterialApp.router(
    key: ValueKey('main_app_${locale.languageCode}'),
    title: Env.appName,
    theme: theme,
    routerConfig: router,
    locale: locale,
    scaffoldMessengerKey: SnackBarUtils.messengerKey,
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    builder: (context, child) {
      Widget appChild = DevicePreview.appBuilder(context, child);
      if (Env.isStaging) {
        return Stack(
          fit: StackFit.expand,
          children: [
            appChild,
            _buildStagingBanner(),
          ],
        );
      }
      return appChild;
    },
  );

  Widget _buildStagingBanner() => Material(
    type: MaterialType.transparency,
    child: Align(
      alignment: Alignment.topLeft,
      child: Banner(
        message: "STAGING",
        location: BannerLocation.topStart,
        color: Colors.orange.shade800,
      ),
    ),
  );
}