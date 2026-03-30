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
  final ImageType type;

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

enum ImageType { asset, network, file, memory, avatar }

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

abstract class AppImage extends StatelessWidget {
  const AppImage({super.key});

  String get source;
  ImageType get type;
  BoxFit get fit;
  double? get width;
  double? get height;
  Color? get color;
  AppImageShape get shape;
  BorderRadius get borderRadius;
  Widget? get placeholder;
  Widget? get errorWidget;

  static AppImageBuilder network(String url) =>
      AppImageBuilder._(AppImageSource.url(url), ImageType.network);

  static AppImageBuilder asset(String path) =>
      AppImageBuilder._(AppImageSource.path(path), ImageType.asset);

  static AppImageBuilder file(File file) =>
      AppImageBuilder._(AppImageSource.file(file), ImageType.file);

  static AppImageBuilder memory(Uint8List bytes) =>
      AppImageBuilder._(AppImageSource.memory(bytes), ImageType.memory);

  AppImage copyWith({
    String? source,
    ImageType? type,
    BoxFit? fit,
    double? width,
    double? height,
    Color? color,
    AppImageShape? shape,
    BorderRadius? borderRadius,
    Widget? placeholder,
    Widget? errorWidget,
  }) {
    final builder = switch (type ?? this.type) {
      ImageType.asset => AppImage.asset(source ?? this.source),
      ImageType.network => AppImage.network(source ?? this.source),
      ImageType.file => AppImage.file(File(source ?? this.source)),
      ImageType.memory => AppImage.memory(Uint8List(0)), // This is a bit tricky for memory
      ImageType.avatar => AppImage.asset(source ?? this.source),
    };
    
    return builder
        .setDimension(width: width ?? this.width, height: height ?? this.height)
        .setStyle(AppImageStyle(
          fit: fit ?? this.fit,
          color: color ?? this.color,
          shape: shape ?? this.shape,
          borderRadius: borderRadius ?? this.borderRadius,
        ))
        .setPlaceholder(widget: placeholder ?? this.placeholder)
        .setErrorWidget(errorWidget ?? this.errorWidget ?? const SizedBox.shrink())
        .build();
  }
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
  final ImageType type;
  @override
  final BoxFit fit;

  @override
  String get source => sourceData.stringSource;

  @override
  final double? width;
  @override
  final double? height;
  @override
  final Color? color;
  @override
  final AppImageShape shape;
  @override
  final BorderRadius borderRadius;
  @override
  final Widget? placeholder;
  @override
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
      ImageType.asset => buildAsset(context),
      ImageType.network => buildNetwork(context, ref),
      ImageType.file => buildFileImage(context),
      ImageType.memory => buildMemoryImage(context),
      ImageType.avatar => buildAsset(context), // Default to asset for now if it's an avatar type in legacy code
    };

    return buildClip(image);
  });
}