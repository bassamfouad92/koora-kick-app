import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';

part 'app_background_property.freezed.dart';

@freezed
sealed class AppBackgroundProperty with _$AppBackgroundProperty {
  const factory AppBackgroundProperty.solid(Color color) = _Solid;
  const factory AppBackgroundProperty.gradient(Gradient gradient) = _Gradient;
  const factory AppBackgroundProperty.appImage(AppImage image) = _AppImage;
}

extension AppBackgroundPropertyX on AppBackgroundProperty {
  BoxDecoration? get toBoxDecoration => switch (this) {
    _Solid(color: final c) => BoxDecoration(color: c),
    _Gradient(gradient: final g) => BoxDecoration(gradient: g),
    _AppImage(image: final img) => _buildImageDecoration(img),
  };

  Color? get maybeColor => maybeWhen(
        solid: (color) => color,
        orElse: () => null,
      );

  BoxDecoration? _buildImageDecoration(AppImage image) {
    if (image.source.toLowerCase().endsWith('.svg')) {
      return const BoxDecoration(color: Colors.transparent);
    }

    final ImageProvider? provider = switch (image.type) {
      ImageType.asset => AssetImage(image.source),
      ImageType.network => NetworkImage(image.source),
      _ => null,
    };

    return provider?.let(
            (p) => BoxDecoration(
          image: DecorationImage(image: p, fit: image.fit),
        ),
        orElse: () => const BoxDecoration(color: Colors.transparent));
  }
}
