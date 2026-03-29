import 'package:koora_kick/app/app_task_registrar.dart';
import 'package:koora_kick/config/env.dart';
import 'package:koora_kick/utils/logger/app_logger.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart' show EasyLocalization;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/app/app.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:koora_kick/common/storage/storage_providers.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLogger.instance.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // Enable runtime font fetching so Google Fonts can download Inter-Regular
  GoogleFonts.config.allowRuntimeFetching = true;
  await AppTaskRegistrar.registerAll();
  runApp(
    DevicePreview(
      enabled: Env.enableDevicePreview,
      builder: (context) => EasyLocalization(
        supportedLocales: AppLanguage.supportedLocales,
        path: 'assets/language',
        fallbackLocale: AppLanguage.english.locale,
        child: ProviderScope(
          overrides: [
            sharedPreferencesProvider.overrideWithValue(
              AppTaskRegistrar.sharedPreferences,
            ),
          ],
          child: const App(),
        ),
      ),
    ),
  );
}
