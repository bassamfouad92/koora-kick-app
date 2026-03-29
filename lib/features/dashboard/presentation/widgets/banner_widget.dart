import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/widgets/image/app_image.dart';
import 'package:koora_kick/features/dashboard/dashboard_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BannerWidget extends ConsumerWidget {
  final String message;
  const BannerWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimensions = context.dimensions;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(dimensions.medium),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                context.colors.gradientBlue,
                context.colors.gradientBlueLight
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(dimensions.radiusMedium),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: dimensions.small),
                child: AppImage(
                  source: AppAssets.icCoin,
                  type: ImageType.asset,
                  width: dimensions.xLarge,
                  height: dimensions.xLarge,
                ),
              ),
              SizedBox(width: dimensions.medium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(message,
                        style: context.typo.bodyMedium.bold
                            .copyWith(color: Colors.white)),
                    Text(
                      DashboardStrings.bannerTitle.localized(),
                      style: context.typo.bodySmall.regular
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(height: dimensions.xSmall),
                    SizedBox(
                      width: dimensions.w(90),
                      height: dimensions.h(30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colors.backgroundBlue,
                          foregroundColor: context.colors.textPrimary,
                          shape: const StadiumBorder(),
                          alignment: Alignment.centerLeft,
                          padding:
                              EdgeInsets.symmetric(horizontal: dimensions.w(12)),
                        ),
                        child: Text(DashboardStrings.applyNow.localized(),
                            maxLines: 1,
                            style: context.typo.bodySmall.medium),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}