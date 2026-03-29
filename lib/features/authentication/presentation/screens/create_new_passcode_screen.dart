import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/widgets/screen/status_screen.dart';
import 'package:koora_kick/features/signup/create_account/create_account_strings.dart';
import 'package:koora_kick/features/authentication/presentation/states/create_new_passcode_state.dart';
import 'package:koora_kick/features/authentication/presentation/view_models/create_new_passcode_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';

class CreateNewPasscodeScreen extends ConsumerStatefulWidget {
  const CreateNewPasscodeScreen({super.key});

  @override
  ConsumerState<CreateNewPasscodeScreen> createState() =>
      _CreateNewPasscodeScreenState();
}

class _CreateNewPasscodeScreenState
    extends ConsumerState<CreateNewPasscodeScreen> {
  final _passcodeController = TextEditingController();
  final _confirmPasscodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(createNewPasscodeViewModelProvider);
    final viewModel = ref.read(createNewPasscodeViewModelProvider.notifier);

    final error = state.status.maybeWhen(error: (e) => e, orElse: () => null);

    final errorBanner = CustomBanner.danger(
      backgroundColor: context.colors.errorSubTitle,
      text: BannerText.subtextOnly(
        subtext: error?.generalMessage ?? '',
        subTextTitleColor: context.colors.error,
      ),
      leadingWidget: const AppImage(
        source: AppAssets.redWaring,
        type: ImageType.asset,
      ),
    );

    final Widget buildPasscodeField =
        PinField.otp(controller: _passcodeController)
            .withObscure(true)
            .withCodeLength(4)
            .withLabel(CreateAccountStrings.globalPasscode.localized())
            .withOnChanged(
              (passcode) => ref
                  .read(createNewPasscodeViewModelProvider.notifier)
                  .inputPasscode(passcode),
            )
            .withError(state.formErrors.passcode);

    final Widget buildConfirmPasscodeFieldSection =
        PinField.otp(controller: _confirmPasscodeController)
            .withObscure(true)
            .withCodeLength(4)
            .withLabel(CreateAccountStrings.globalConfirmPasscode.localized())
            .withOnChanged(
              (confirmPasscode) => ref
                  .read(createNewPasscodeViewModelProvider.notifier)
                  .inputConfirmPasscode(confirmPasscode),
            )
            .withError(state.formErrors.confirmPasscode);

    return KooraKickPageBuilder.withPinnedTitleAppBar(
          largeTitle: AuthStrings.createPasscodeTitle.localized(),
          pinnedTitle: AuthStrings.createPasscodeTitle.localized(),
        )
        .content(
          [
            if (error != null && error.generalMessage.isNotEmpty) errorBanner,
            buildPasscodeField,
            buildConfirmPasscodeFieldSection,
          ].column(spacing: context.dimensions.large),
        )
        .withBottomContent(
          AppButton.primary(
            AuthStrings.continueButton.localized(),
            onPressed: () =>
                ref.read(createNewPasscodeViewModelProvider.notifier).submit(),
          ),
        )
        .alignTo(CrossAxisAlignment.start)
        .listen<CreateNewPasscodeState>(createNewPasscodeViewModelProvider, (
          context,
          ref,
          prev,
          next,
        ) {
          next.status.when(
            initial: () {},
            loading: () => context.showLoader(),
            success: () {
              context.hideLoader();
              StatusRoute(
                StatusScreenViewHolder(
                  icon: AppImage(
                    source: AppAssets.icSuccess,
                    type: ImageType.asset,
                    width: context.dimensions.h(80),
                  ),
                  title: AuthStrings.successPasscodeTitle.localized(),
                  description: AuthStrings.successPasscodeDescription
                      .localized(),
                  buttonText: AuthStrings.continueButton.localized(),
                  onButtonPressed: () async {
                    await viewModel.logout();
                    const LoginRoute().go(context);
                  },
                ),
              ).push(context);
            },
            error: (error) {
              context.hideLoader();
            },
          );
        });
  }
}
