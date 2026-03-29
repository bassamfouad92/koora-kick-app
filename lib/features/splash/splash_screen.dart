import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: context.colors.backgrounds.splash.when(
          solid: (color) => ColoredBox(color: color, child: _buildContent()),
          gradient: (gradient) => DecoratedBox(
            decoration: BoxDecoration(gradient: gradient),
            child: _buildContent(),
          ),
          appImage: (bgImage) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bgImage.source),
                fit: BoxFit.cover,
              ),
            ),
            child: _buildContent(),
          ),
        ),
      );

  Widget _buildContent() => const Center(
        child: AppImage(
          source: AppAssets.koorakickLogo,
          type: ImageType.asset,
        ),
      );
}