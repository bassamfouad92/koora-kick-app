import 'dart:convert';
import 'dart:io';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType {
  asset,
  network,
  file,
  memory, avatar,
}

class AppImage extends StatelessWidget {
  const AppImage({
    required this.source,
    required this.type,
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.borderRadius,
    this.color,
    this.semanticLabel,
    this.avatarRadius = 20,
    this.avatarBackgroundColor = AppColors.neutral300,
    this.avatarIconColor = AppColors.neutral600,
  });

  final String source;
  final ImageType type;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final String? semanticLabel;
  final double avatarRadius;
  final Color avatarBackgroundColor;
  final Color avatarIconColor;

  AppImage copyWith({
    String? source,
    ImageType? type,
    double? width,
    double? height,
    BoxFit? fit,
    Alignment? alignment,
    BorderRadiusGeometry? borderRadius,
    Color? color,
    String? semanticLabel,
    double? avatarRadius,
    Color? avatarBackgroundColor,
    Color? avatarIconColor,
  }) =>
      AppImage(
        source: source ?? this.source,
        type: type ?? this.type,
        width: width ?? this.width,
        height: height ?? this.height,
        fit: fit ?? this.fit,
        alignment: alignment ?? this.alignment,
        borderRadius: borderRadius ?? this.borderRadius,
        color: color ?? this.color,
        semanticLabel: semanticLabel ?? this.semanticLabel,
        avatarRadius: avatarRadius ?? this.avatarRadius,
        avatarBackgroundColor:
            avatarBackgroundColor ?? this.avatarBackgroundColor,
        avatarIconColor: avatarIconColor ?? this.avatarIconColor,
      );

  bool get _isSvg => source.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    final image = switch (type) {
      ImageType.avatar => CircleAvatar(
          radius: avatarRadius,
          backgroundColor: avatarBackgroundColor,
          child: source.isNotEmpty
              ? ClipOval(
                  child: Image.network(
                    source,
                    fit: BoxFit.cover,
                    width: avatarRadius * 2,
                    height: avatarRadius * 2,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      AppAssets.icAvatar,
                      fit: BoxFit.cover,
                      width: avatarRadius * 2,
                      height: avatarRadius * 2,
                    ),
                  ),
                )
              : ClipOval(
                  child: Image.asset(
                    AppAssets.icAvatar,
                    fit: BoxFit.cover,
                    width: avatarRadius * 2,
                    height: avatarRadius * 2,
                  ),
                ),
        ),
      ImageType.asset when _isSvg => SvgPicture.asset(
        source,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        color: color,
        semanticsLabel: semanticLabel,
      ),
      ImageType.asset => Image.asset(
        source,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        color: color,
      ),
      ImageType.network when _isSvg => SvgPicture.network(
        source,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        color: color,
        semanticsLabel: semanticLabel,
      ),
      ImageType.network => Image.network(
        source,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        errorBuilder: (context, error, stackTrace) => Image.asset(
          AppAssets.icAvatar,
          width: width,
          height: height,
          fit: fit,
          alignment: alignment,
        ),
      ),
      ImageType.file => Image.file(
        File(source),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      ),
      ImageType.memory => Image.memory(
        base64Decode(source),
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
      ),
    };
    if (borderRadius != null) {
      return ClipRRect(
        borderRadius: borderRadius!,
        child: image,
      );
    }

    return image;
  }
}
