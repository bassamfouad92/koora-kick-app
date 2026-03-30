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
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingScreen extends ConsumerWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      body: Container(
        decoration: context.colors.backgrounds.splash.toBoxDecoration,
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: context.screenHeight -
                    MediaQuery
                        .of(context)
                        .padding
                        .top -
                    MediaQuery
                        .of(context)
                        .padding
                        .bottom,
              ),
              child: Stack(
                children: [
                  [
                    [
                      _buildLogoAndBanner(context),
                      Text(
                        LandingStrings.welcomeTitle.localized(),
                        style: context.typo.headingLarge,
                      ).withVerticalPadding(context.dimensions.largeH),
                      _buildJoinButton(context),
                      _buildLoginPromptRow(context),
                    ].column(crossAxisAlignment: CrossAxisAlignment.center),
                    _footerPrompt(context).withPadding(
                      EdgeInsets.only(top: context.dimensions.xLargeH),
                    ),
                  ].column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );

  Widget buildLanguageTab(BuildContext context, WidgetRef ref) {
    final language =
        ref.watch(languageNotifierProvider).valueOrNull ?? AppLanguage.english;

    return IntrinsicWidth(
      child: AppButton.outline(
        '',
        onPressed: () => _showLanguagePicker(context),
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

    Widget _buildLogoAndBanner(BuildContext context) => <Widget>[
      AppImage.asset(AppAssets.koorakickLogo)
          .setDimension(width: context.dimensions.w(120))
          .build()
          .withPadding(
            EdgeInsets.only(
              top: context.dimensions.largeH,
              left: context.dimensions.smallW,
              right: context.dimensions.smallH,
            ),
          ),
      AppImage.asset(AppAssets.landingBanner)
          .build()
          .withPadding(EdgeInsets.only(top: context.dimensions.h(52))),
    ].column(crossAxisAlignment: CrossAxisAlignment.start);

    Widget _buildJoinButton(BuildContext context) =>
        AppButton.primary(
          LandingStrings.joinToKick.localized(),
          onPressed: () => const SignupRoute().push(context),
        )
            .withRightIcon(
      AppImage.asset(AppAssets.rightArrow)
          .setStyle(AppImageStyle(color: context.colors.surface))
          .build(),
    )
            .withHorizontalPadding(context.dimensions.mediumW)
            .withPadding(EdgeInsets.only(bottom: context.dimensions.largeH));

    Widget _buildLoginPromptRow(BuildContext context) =>
        [
          Text(
            LandingStrings.alreadyHaveAnAccount.localized(),
            style: context.typo.bodySmall.copyWith(
              color: context.colors.textPrimary,
            ),
          ),
          Text(
            LandingStrings.login.localized(),
            style: context.typo.bodySmall.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colors.textPrimary,
            ),
          ).onTap(() => const LoginRoute().push(context)),
        ].row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.dimensions.smallW,
        );

    Widget _footerPrompt(BuildContext context) =>
        Text(
          LandingStrings.footerSubTitle.localized(),
          textAlign: TextAlign.center,
          style: context.typo.bodySmall.copyWith(
            color: context.colors.textSecondary,
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

