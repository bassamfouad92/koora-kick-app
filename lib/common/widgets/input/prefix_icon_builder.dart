import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/theme/app_colors.dart' as theme;
import 'package:koora_kick/common/theme/app_dimensions.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';

class PrefixIconBuilder {
  PrefixIconBuilder({
    required this.colors,
    required this.dimensions,
    required this.typo,
    this.iconPath,
    this.imageType = AppImageType.asset,
    String? text,
    this.textStyle,
  })  : textValue = text,
        _children = [SizedBox(width: dimensions.small)];

  final List<Widget> _children;
  final String? iconPath;
  final AppImageType imageType;
  final String? textValue;
  final TextStyle? textStyle;
  final theme.AppColors colors;
  final AppDimensions dimensions;
  final AppTypography typo;
  VoidCallback? _onTap;

  PrefixIconBuilder withIcon() {
    if (iconPath.isPresent) {
      _children.add(AppImage.asset(iconPath!).setDimension(width: dimensions.countryFlagWidth, height: dimensions.countryFlagHeight).build());
    }
    return this;
  }

  PrefixIconBuilder text() {
    if (textValue.isPresent) {
      _children.add(Text(
        textValue!,
        style: textStyle ?? typo.bodyMedium,
      ));
    }
    return this;
  }

  PrefixIconBuilder withDivider() {
    _children.add(
      VerticalDivider(
        thickness: 1,
        color: colors.border,
      ),
    );
    return this;
  }

  PrefixIconBuilder withChevronIcon() {
    _children.add(
        AppImage.asset(AppAssets.chevronDown).build());
    return this;
  }

  PrefixIconBuilder withOnTap(VoidCallback onTap) {
    _onTap = onTap;
    return this;
  }

  Widget build() => IntrinsicHeight(
        child: GestureDetector(
          onTap: _onTap,
          behavior: HitTestBehavior.translucent,
          child: _children.row(
            mainAxisSize: MainAxisSize.min,
            spacing: dimensions.small,
          ),
        ),
      );
}

