import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/default/default_colors.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';

class RamadanAppColors extends DefaultAppColors {
  @override
  Color get primary => const Color(0xFFD4AF37); // Gold for Ramadan
  
  @override
  AppBackgrounds get backgrounds => const _RamadanBackgrounds();
}

class _RamadanBackgrounds implements AppBackgrounds {
  const _RamadanBackgrounds();

  @override
  AppBackgroundProperty get primary => AppBackgroundProperty.appImage(
        AppImage.asset(AppAssets.splash)
            .setStyle(const AppImageStyle(fit: BoxFit.cover))
            .build(),
      ); // Image background for Ramadan

  @override
  AppBackgroundProperty get secondary => const AppBackgroundProperty.solid(Colors.white);

  @override
  AppBackgroundProperty get scaffold => const AppBackgroundProperty.solid(Color(0xFFFFFBE6)); // Warm background
  
  @override
  AppBackgroundProperty get surface => const AppBackgroundProperty.solid(Colors.white);

  @override
  AppBackgroundProperty get splash => AppBackgroundProperty.appImage(
        AppImage.asset(AppAssets.splash)
            .setStyle(const AppImageStyle(fit: BoxFit.cover))
            .build(),
      );

  @override
  AppBackgroundProperty get overlay => const AppBackgroundProperty.solid(Colors.black54);
}