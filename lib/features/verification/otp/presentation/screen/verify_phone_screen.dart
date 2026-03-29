import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/authentication/presentation/widget/term_and_privacy_widget.dart';
import 'package:koora_kick/features/verification/otp/presentation/state/verify_phone_state.dart';
import 'package:koora_kick/features/verification/otp/presentation/view_model/verify_phone_view_model.dart';
import 'package:koora_kick/features/verification/verification_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class VerifyPhoneScreen extends ConsumerStatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  ConsumerState<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends ConsumerState<VerifyPhoneScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(verifyPhoneViewModelProvider);
    final vm = ref.read(verifyPhoneViewModelProvider.notifier);

    return KooraKickPageBuilder.withAppBar()
        .title(Text(
          VerificationStrings.verifyPhoneTitle.localized(),
          style: context.typo.headingMedium,
        ))
        .subtitle(
          AppRichTextBuilder(context)
              .add(VerificationStrings.sendCodeText.localized())
              .space()
              .link(state.phoneNumber.fullNumber, onTap: () {})
              .build(
                textAlign: TextAlign.center,
                baseStyle: context.typo.bodySmall.copyWith(
                  color: context.colors.textSecondary,
                ),
              )
              .withPadding(EdgeInsets.only(top: context.dimensions.small)),
        )
        .content(
          [
            PinField.otp()
                .withCodeLength(6)
                .withFieldSize(context.dimensions.h(60), context.dimensions.w(40))
                .withOnCompleted(vm.verifyCode)
                .withError(state.formError),
            _ResendSection(
              state: state,
              onResend: vm.resendCode,
            ),
          ].column().withPadding(
            EdgeInsets.only(top: context.dimensions.xxLarge),
          ),
        )
        .withBottomContent(
          [termAndPrivacy(context)].column(spacing: context.dimensions.medium),
        )
        .alignTo(CrossAxisAlignment.center)
        .listen<VerifyPhoneState>(
          verifyPhoneViewModelProvider,
          (context, ref, prev, next) {
            next.verifyStatus.when(
              initial: () {},
              sendOtpSuccess: () {
                context.hideLoader();
              },
              loading: () {
                context.showLoader();
              },
              verifyOtpSuccess: (isResetPasscode) {
                context.hideLoader();
                if (isResetPasscode) {
                  const CreateNewPasscodeRoute().pushReplacement(context);
                }
              },
              error: (error) {
                context.hideLoader();
              },
            );
          },
        );
  }
}

class _ResendSection extends StatelessWidget {
  const _ResendSection({required this.state, required this.onResend});

  final VerifyPhoneState state;
  final VoidCallback onResend;

  @override
  Widget build(BuildContext context) {
    final countdownText =
        [
              Text(
                VerificationStrings.resendCodeText.localized(),
                style: context.typo.bodyMedium,
              ),
              Text(
                '${state.secondsRemaining}s',
                style: context.typo.bodyMedium.copyWith(fontWeight: FontWeight.bold),
              ),
            ]
            .row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: context.dimensions.xSmall,
            )
            .withPadding(EdgeInsets.only(top: context.dimensions.medium));

    final resendCodeButton = AppButton.text(onPressed: onResend).withTextWidget(
      Text(
        VerificationStrings.resendCodeButton.localized(),
        style: context.typo.bodyMedium.copyWith(fontWeight: FontWeight.bold),
      ),
    );

    return state.canResend
        ? resendCodeButton.visible(true)
        : countdownText.visible(true);
  }
}
