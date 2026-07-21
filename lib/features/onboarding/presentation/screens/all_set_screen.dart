import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/storage/app_settings_store.dart';
import 'package:koora_kick/features/onboarding/onboarding_strings.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class AllSetScreen extends ConsumerStatefulWidget {
  const AllSetScreen({super.key});

  @override
  ConsumerState<AllSetScreen> createState() => _AllSetScreenState();
}

class _AllSetScreenState extends ConsumerState<AllSetScreen> {
  @override
  void initState() {
    super.initState();
    // Celebratory confirmation — pairs with the animation on entry.
    HapticFeedback.heavyImpact();
  }

  @override
  Widget build(BuildContext context) =>
      KooraKickPageBuilder.noAppBar()
          .centered()
          .content(
            [
              Lottie.asset(
                AppAssets.celebrationAnimation,
                width: context.screenWidth,
                fit: BoxFit.fill,
                repeat: true,
              ),
              Text(
                OnboardingStrings.allSetTitle.localized(),
                textAlign: TextAlign.center,
                style: context.typo.headingLarge,
              ).withPadding(EdgeInsets.only(top: context.dimensions.xLargeH)),
              Text(
                OnboardingStrings.allSetSubtitle.localized(),
                textAlign: TextAlign.center,
                style: context.typo.bodyMedium.copyWith(
                  color: context.colors.textSecondary,
                ),
              ).withPadding(EdgeInsets.only(top: context.dimensions.mediumH)),
            ].column(crossAxisAlignment: CrossAxisAlignment.center),
          )
          .withBottomContent(
            AppButton.primary(
              OnboardingStrings.goToHomeButton.localized(),
              onPressed: () => _goToHome(context, ref),
            ),
          );

  Future<void> _goToHome(BuildContext context, WidgetRef ref) async {
    HapticFeedback.heavyImpact();
    // Onboarding finished; next launches go straight to the dashboard.
    await ref.read(appSettingsStoreProvider).setFirstTimeLogin(false);
    if (context.mounted) {
      const DashboardRoute().go(context);
    }
  }
}
