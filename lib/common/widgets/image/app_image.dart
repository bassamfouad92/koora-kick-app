import 'dart:io';
import 'dart:typed_data';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/services/connectivity_manager.dart';

enum AppImageShape { square, rounded, circular }

class AppImageStyle {
  const AppImageStyle({
    this.shape = AppImageShape.square,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.fit = BoxFit.cover,
    this.color,
  });

  const AppImageStyle.circular({BoxFit fit = BoxFit.cover, Color? color})
      : this(shape: AppImageShape.circular, fit: fit, color: color);

  const AppImageStyle.rounded({
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(8)),
    BoxFit fit = BoxFit.cover,
    Color? color,
  }) : this(
    shape: AppImageShape.rounded,
    borderRadius: borderRadius,
    fit: fit,
    color: color,
  );

  final AppImageShape shape;
  final BorderRadius borderRadius;
  final BoxFit fit;
  final Color? color;
}

class AppImageBuilder {
  AppImageBuilder._(this.source, this.type);

  final AppImageSource source;
  final AppImageType type;

  double? width;
  double? height;
  AppImageStyle style = const AppImageStyle();
  Widget? placeholder;
  Widget? errorWidget;

  AppImageBuilder setDimension({double? width, double? height}) {
    this.width = width;
    this.height = height;
    return this;
  }

  AppImageBuilder setStyle(AppImageStyle style) {
    this.style = style;
    return this;
  }

  AppImageBuilder setPlaceholder({String? assetPath, Widget? widget}) {
    if (widget != null) {
      placeholder = widget;
    } else if (assetPath != null) {
      placeholder = Image.asset(assetPath, width: width, height: height, fit: style.fit);
    }
    return this;
  }

  AppImageBuilder setErrorWidget(Widget widget) {
    errorWidget = widget;
    return this;
  }

  AppImage build() => _AppImage._(
    sourceData: source,
    type: type,
    width: width,
    height: height,
    fit: style.fit,
    color: style.color,
    shape: style.shape,
    borderRadius: style.borderRadius,
    placeholder: placeholder,
    errorWidget: errorWidget,
  );
}

enum AppImageType { asset, network, file, memory }

class AppImageSource {
  const AppImageSource.url(this.url)
      : path = null,
        file = null,
        bytes = null;

  const AppImageSource.path(this.path)
      : url = null,
        file = null,
        bytes = null;

  const AppImageSource.file(this.file)
      : url = null,
        path = null,
        bytes = null;

  const AppImageSource.memory(this.bytes)
      : url = null,
        path = null,
        file = null;

  final String? url;
  final String? path;
  final File? file;
  final Uint8List? bytes;

  String get stringSource => (url ?? path ?? file?.path ?? '');
  bool get isSvg => stringSource.toLowerCase().endsWith('.svg');
}

/// A robust image widget supporting multiple sources (network, asset, file, memory)
/// and a fluent builder pattern for styling.
///
/// ### Basic Examples:
/// ```dart
/// // Network Image
/// AppImage.network(url).build()
///
/// // Asset Image
/// AppImage.asset(path).build()
/// ```
///
/// ### Styling Examples:
/// ```dart
/// // Circular Image with specific dimensions
/// AppImage.network(url)
///   .setDimension(width: 50, height: 50)
///   .setStyle(const AppImageStyle.circular())
///   .build()
///
/// // Rounded corners with custom fit
/// AppImage.asset(path)
///   .setStyle(AppImageStyle.rounded(
///     borderRadius: BorderRadius.circular(12),
///     fit: BoxFit.contain,
///   ))
///   .build()
///
/// // Colored icon with dimension
/// AppImage.asset(AppAssets.icBack)
///   .setDimension(width: 24, height: 24)
///   .setStyle(AppImageStyle(color: Colors.blue))
///   .build()
/// ```
///
/// ### Utilities:
/// ```dart
/// // Custom Placeholder (Widget or Asset)
/// AppImage.network(url)
///   .setPlaceholder(widget: CircularProgressIndicator())
///   .build()
///
/// // Default Placeholder (Spinner)
/// AppImage.network(url)
///   .setPlaceholder()
///   .build()
///
/// // Custom Error Widget
/// AppImage.network(url)
///   .setErrorWidget(Icon(Icons.error))
///   .build()
/// ```
abstract class AppImage extends StatelessWidget {
  const AppImage({super.key});

  String get source;
  AppImageType get type;
  BoxFit get fit;

  static AppImageBuilder network(String url) =>
      AppImageBuilder._(AppImageSource.url(url), AppImageType.network);

  static AppImageBuilder asset(String path) =>
      AppImageBuilder._(AppImageSource.path(path), AppImageType.asset);

  static AppImageBuilder file(File file) =>
      AppImageBuilder._(AppImageSource.file(file), AppImageType.file);

  static AppImageBuilder memory(Uint8List bytes) =>
      AppImageBuilder._(AppImageSource.memory(bytes), AppImageType.memory);
}

class _AppImage extends AppImage {
  const _AppImage._({
    required this.sourceData,
    required this.type,
    required this.fit,
    required this.shape,
    required this.borderRadius,
    this.width,
    this.height,
    this.color,
    this.placeholder,
    this.errorWidget,
  }) : super();

  final AppImageSource sourceData;
  @override
  final AppImageType type;
  @override
  final BoxFit fit;

  @override
  String get source => sourceData.stringSource;

  final double? width;
  final double? height;
  final Color? color;
  final AppImageShape shape;
  final BorderRadius borderRadius;
  final Widget? placeholder;
  final Widget? errorWidget;


  Widget buildLoader() => SizedBox(
    width: width,
    height: height,
    child: const Center(
      child: CircularProgressIndicator.adaptive(),
    ),
  );

  Widget defaultError(BuildContext context) {
    if (errorWidget != null) return errorWidget!;
    final bool isSvg = AppAssets.warning.toLowerCase().endsWith('.svg');
    if (isSvg) {
      return SvgPicture.asset(AppAssets.warning,
          width: width, height: height, fit: fit);
    }
    return Image.asset(AppAssets.warning,
        width: width, height: height, fit: fit);
  }


  Widget buildClip(Widget child) => switch (shape) {
    AppImageShape.circular => ClipOval(child: child),
    AppImageShape.rounded =>
        ClipRRect(borderRadius: borderRadius, child: child),
    AppImageShape.square => child,
  };


  Widget buildAsset(BuildContext context) {
    if (sourceData.isSvg) {
      return SvgPicture.asset(
        sourceData.stringSource,
        width: width,
        height: height,
        fit: fit,
        colorFilter:
        color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      );
    }
    return Image.asset(
      sourceData.stringSource,
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }

  Widget buildNetwork(BuildContext context, WidgetRef ref) {
    final connectivity = ref.watch(connectivityManagerProvider);
    final imageKey = ValueKey('${sourceData.url}-${connectivity.hashCode}');

    if (sourceData.isSvg) {
      return SvgPicture.network(
        sourceData.url!,
        key: imageKey,
        width: width,
        height: height,
        fit: fit,
        placeholderBuilder: (_) => placeholder ?? buildLoader(),
        errorBuilder: (context, _, __) => defaultError(context),
      );
    }

    return CachedNetworkImage(
      imageUrl: sourceData.url!,
      key: imageKey,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) => placeholder ?? buildLoader(),
      errorWidget: (context, _, __) => defaultError(context),
    );
  }

  Widget buildFileImage(BuildContext context) => Image.file(
    sourceData.file!,
    width: width,
    height: height,
    fit: fit,
    color: color,
    errorBuilder: (context, _, __) => defaultError(context),
  );

  Widget buildMemoryImage(BuildContext context) => Image.memory(
    sourceData.bytes!,
    width: width,
    height: height,
    fit: fit,
    color: color,
    errorBuilder: (context, _, __) => defaultError(context),
  );

  @override
  Widget build(BuildContext context) => Consumer(builder: (context, ref, child) {
    final Widget image = switch (type) {
      AppImageType.asset => buildAsset(context),
      AppImageType.network => buildNetwork(context, ref),
      AppImageType.file => buildFileImage(context),
      AppImageType.memory => buildMemoryImage(context),
    };

    return buildClip(image);
  });
}