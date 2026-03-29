import 'package:flutter/material.dart';
import 'package:koora_kick/common/theme/app_colors.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';

class LerpedBackgrounds implements AppBackgrounds {
  const LerpedBackgrounds({
    required this.primary,
    required this.secondary,
    required this.scaffold,
    required this.surface,
    required this.splash,
    required this.overlay,
  });

  @override final AppBackgroundProperty primary;
  @override final AppBackgroundProperty secondary;
  @override final AppBackgroundProperty scaffold;
  @override final AppBackgroundProperty surface;
  @override final AppBackgroundProperty splash;
  @override final AppBackgroundProperty overlay;

  static AppBackgrounds lerp(AppBackgrounds? a, AppBackgrounds? b, double t) {
    if (a == null && b == null) {
      return const LerpedBackgrounds(
        primary: AppBackgroundProperty.solid(Colors.transparent),
        secondary: AppBackgroundProperty.solid(Colors.transparent),
        scaffold: AppBackgroundProperty.solid(Colors.transparent),
        surface: AppBackgroundProperty.solid(Colors.transparent),
        splash: AppBackgroundProperty.solid(Colors.transparent),
        overlay: AppBackgroundProperty.solid(Colors.transparent),
      );
    }
    if (a == null) {
      return b!;
    }
    if (b == null) {
      return a;
    }

    AppBackgroundProperty lerpProp(AppBackgroundProperty start, AppBackgroundProperty end, double t) {
      if (t < 0.5) {
        return start;
      }
      return start.maybeWhen(
        solid: (colorA) => end.maybeWhen(
          solid: (colorB) => AppBackgroundProperty.solid(Color.lerp(colorA, colorB, t)!),
          orElse: () => end,
        ),
        gradient: (gradA) => end.maybeWhen(
          gradient: (gradB) => AppBackgroundProperty.gradient(Gradient.lerp(gradA, gradB, t) ?? gradB),
          orElse: () => end,
        ),
        orElse: () => end,
      );
    }

    return LerpedBackgrounds(
      primary: lerpProp(a.primary, b.primary, t),
      secondary: lerpProp(a.secondary, b.secondary, t),
      scaffold: lerpProp(a.scaffold, b.scaffold, t),
      surface: lerpProp(a.surface, b.surface, t),
      splash: lerpProp(a.splash, b.splash, t),
      overlay: lerpProp(a.overlay, b.overlay, t),
    );
  }
}
