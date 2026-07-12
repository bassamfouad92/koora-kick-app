import 'package:koora_kick/app/provider/language_provider.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:koora_kick/common/enum/app_language_enum.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/features/landing/landing_strings.dart';
import 'package:koora_kick/features/landing/presentation/widget/language_bottom_sheet.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:koora_kick/common/theme/app_background_property.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        body: Container(
          decoration: context.colors.backgrounds.splash.toBoxDecoration,
          child: Stack(
            children: [
              _buildBackground(context),
              SafeArea(
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: context.screenHeight -
                          MediaQuery.of(context).padding.top -
                          MediaQuery.of(context).padding.bottom,
                    ),
                    child: IntrinsicHeight(
                      child: Stack(
                        children: [
                          [
                            _buildBrandHeader(context),
                            const Spacer(),
                            [
                              _buildJoinButton(context),
                              _buildSignInButton(context),
                              _buildTermsAndPrivacy(context),
                            ].column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                            ),
                          ].column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                          Positioned.directional(
                            textDirection: Directionality.of(context),
                            top: context.dimensions.h(12),
                            end: context.dimensions.mediumW,
                            child: buildLanguageTab(context, ref),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildBackground(BuildContext context) => AppImage.asset(AppAssets.landingBackground)
        .setDimension(width: context.screenWidth)
        .build();

  Widget _buildBrandHeader(BuildContext context) => [
        AppImage.asset(AppAssets.koorakickLogo)
            .setDimension(width: context.dimensions.w(190))
            .build()
            .withPadding(EdgeInsets.only(top: context.dimensions.h(96))),
      ].column(crossAxisAlignment: CrossAxisAlignment.center);

  Widget buildLanguageTab(BuildContext context, WidgetRef ref) {
    final language =
        ref.watch(languageNotifierProvider).valueOrNull ?? AppLanguage.english;

    return IntrinsicWidth(
      child: AppButton.outline(
        '',
        onPressed: () => _showLanguagePicker(context),
        backgroundColor: Colors.transparent,
      )
          .copyWith(
            height: context.dimensions.h(36),
          )
          .withTextWidget(
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppImage.asset(AppAssets.icGlobe)
                    .setDimension(
                      width: context.dimensions.mediumW,
                      height: context.dimensions.mediumH,
                    )
                    .setStyle(AppImageStyle(color: context.colors.textPrimary))
                    .build(),
                SizedBox(width: context.dimensions.smallW),
                Text(
                  language.localizedLabel(),
                  style: context.typo.bodyMedium.copyWith(
                    color: context.colors.textPrimary,
                  ),
                ),
                SizedBox(width: context.dimensions.smallW),
                AppImage.asset(AppAssets.chevronDown)
                    .setDimension(
                      width: context.dimensions.mediumW,
                      height: context.dimensions.mediumH,
                    )
                    .setStyle(AppImageStyle(color: context.colors.textPrimary))
                    .build(),
              ],
            ).withHorizontalPadding(context.dimensions.smallW),
          ),
    );
  }

  Widget _buildJoinButton(BuildContext context) => AppButton.primary(
        LandingStrings.joinTheGame.localized(),
        onPressed: () => const SignupRoute().push(context),
      ).withHorizontalPadding(context.dimensions.mediumW);

  Widget _buildSignInButton(BuildContext context) => AppButton.outline(
        LandingStrings.signIn.localized(),
        onPressed: () => const LoginRoute().push(context),
        backgroundColor: Colors.transparent,
      )
          .withHorizontalPadding(context.dimensions.mediumW)
          .withPadding(EdgeInsets.only(top: context.dimensions.mediumH));

  Widget _buildTermsAndPrivacy(BuildContext context) => AppRichTextBuilder(context)
      .add('${LandingStrings.agreeText.localized()}\n')
      .link(
        LandingStrings.termsOfService.localized(),
        style: context.typo.bodySmall.semiBold.copyWith(
          color: context.colors.textLink,
        ),
        onTap: () {},
      )
      .space()
      .add(LandingStrings.and.localized())
      .space()
      .link(
        LandingStrings.privacyPolicy.localized(),
        style: context.typo.bodySmall.semiBold.copyWith(
          color: context.colors.textLink,
        ),
        onTap: () {},
      )
      .build(
        textAlign: TextAlign.center,
        baseStyle: context.typo.bodySmall.copyWith(
          color: context.colors.textSecondary,
          height: 1.6,
        ),
      )
      .withPadding(
        EdgeInsets.only(
          top: context.dimensions.largeH,
          bottom: context.dimensions.mediumH,
        ),
      );

  void _showLanguagePicker(BuildContext context) {
    AppBottomSheet.show(
      context: context,
      title: ProfileStrings.selectLanguage.localized(),
      child: const LanguageBottomSheet(),
    );
  }
}
