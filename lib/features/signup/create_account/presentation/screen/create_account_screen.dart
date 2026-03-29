import 'package:koora_kick/common/cities/domain/entities/city_model.dart';
import 'package:koora_kick/common/constants/app_assets.dart';
import 'package:koora_kick/common/countries/domain/entities/country_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/null_check.dart';
import 'package:koora_kick/common/extensions/string.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';

import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/services/user_session_status.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';

import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/widgets/bottom_sheet/city_bottom_sheet.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/authentication/auth_strings.dart';
import 'package:koora_kick/features/authentication/presentation/widget/term_and_privacy_widget.dart';
import 'package:koora_kick/features/landing/landing_strings.dart';
import 'package:koora_kick/features/signup/create_account/create_account_strings.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_state.dart';
import 'package:koora_kick/features/signup/create_account/view_model/create_account_view_model.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:koora_kick/utils/focus_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  ConsumerState<CreateAccountScreen> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen> {
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _passcodeController = TextEditingController();
  final _confirmPasscodeController = TextEditingController();

  bool isCityError = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final createAccountState = ref.watch(createAccountViewModelProvider);

    final error = createAccountState.createAccountStatus.maybeWhen(
      error: (e) => e,
      orElse: () => null,
    );

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

    final Widget buildPhoneNumberField =
        AppInputField.phone(
              controller: _phoneController,
              country: createAccountState.country,
              hintText: createAccountState
                  .country
                  .exampleNumberMobileNational?.withoutLeadingZero??"",
            )
            .withOnTap(() => _showCountryPicker(context))
            .withOnChanged(
              (phoneNumber) => ref
                  .read(createAccountViewModelProvider.notifier)
                  .inputPhoneNumber(phoneNumber),
            )
            .withError(createAccountState.formErrors.phoneNumber);

    final Widget buildNameField =
        AppInputField.text(
              controller: _nameController,
              hintText: CreateAccountStrings.profileEnterFullName.localized(),
              labelText: CreateAccountStrings.globalName.localized(),
            )
            .withOnChanged(
              (fullName) => ref
                  .read(createAccountViewModelProvider.notifier)
                  .inputFullName(fullName),
            )
            .withError(createAccountState.formErrors.name);

    final Widget buildCityDropdown =
        AppInputField.itemPicker(
              itemPickerSelectedValue: createAccountState.selectedCity.name,
              hintText: CreateAccountStrings.profileSelectYourCity.localized(),
              labelText: CreateAccountStrings.globalCity.localized(),
            )
            .withOnTap(() => _showCityPicker(context))
            .withError(createAccountState.formErrors.city);

    final Widget buildPasswordField =
        AppInputField.text(
              controller: _passcodeController,
              hintText: CreateAccountStrings.globalPasscode.localized(),
              labelText: CreateAccountStrings.globalPasscode.localized(),
              obscureText: true,
            )
            .withOnChanged(
              (password) => ref
                  .read(createAccountViewModelProvider.notifier)
                  .inputPasscode(password),
            )
            .withError(createAccountState.formErrors.passcode);

    final Widget buildConfirmPasswordFieldSection =
        AppInputField.text(
              controller: _confirmPasscodeController,
              hintText: CreateAccountStrings.globalConfirmPasscode.localized(),
              labelText: CreateAccountStrings.globalConfirmPasscode.localized(),
              obscureText: true,
            )
            .withOnChanged(
              (confirmPassword) => ref
                  .read(createAccountViewModelProvider.notifier)
                  .inputConfirmPasscode(confirmPassword),
            )
            .withError(createAccountState.formErrors.confirmPasscode);

    return KooraKickPageBuilder.withPinnedTitleAppBar(
          largeTitle: CreateAccountStrings.createYourKooraKickAccountTitle // Should probably rename this string late
              .localized(),
          pinnedTitle: CreateAccountStrings.createAccountTitle.localized(),
        )
        .rightButton(LandingStrings.login.localized(), () {
          const LoginRoute().replace(context);
        })
        .content(
          [
            if (error != null && error.generalMessage.isNotEmpty) errorBanner,
            buildPhoneNumberField,
            buildPasswordField,
            buildConfirmPasswordFieldSection,
            buildNameField,
            buildCityDropdown,
          ].column(spacing: context.dimensions.mediumH),
        )
        .withBottomContent(
          [
            _buildCreateAccountButton(context),
            termAndPrivacy(context),
          ].column(spacing: context.dimensions.small),
        )
        .alignTo(CrossAxisAlignment.start)
        .listen<CreateAccountState>(createAccountViewModelProvider, (
          context,
          ref,
          prev,
          next,
        ) {
          next.createAccountStatus.when(
            initial: () {},
            loading: () => context.showLoader(),
            success: (userSessionStatus) {
              context.hideLoader();
              if (userSessionStatus  is UnverifiedStatus) {
                const VerifyRoute().pushReplacement(context);
              }
            },
            error: (error) {
              context.hideLoader();
            },
          );
        });
  }

  Widget _buildCreateAccountButton(BuildContext context) => AppButton.primary(
    CreateAccountStrings.createAccountButtonText.localized(),
    onPressed: () {
      ref.read(createAccountViewModelProvider.notifier).register();
    },
  );

  void _showCountryPicker(BuildContext context) async {
    final pickedCountry = await AppBottomSheet.show<CountryModel>(
      context: context,
      title: AuthStrings.selectCountryCodeTitle.localized(),
      child: const CountryBottomSheet(),
    );
    if (pickedCountry.isPresent) {
      ref
          .read(createAccountViewModelProvider.notifier)
          .inputCountry(pickedCountry!);
    }
  }

  void _showCityPicker(BuildContext context) async {
    FocusHelper.unfocus(context);
    final state = ref.read(createAccountViewModelProvider);

    if (state.cities.isEmpty && !state.isCitiesLoading) {
      SnackBarUtils.showError('No cities found');
      return;
    }

    final pickedCity = await AppBottomSheet.show<CityModel>(
      context: context,
      title: CreateAccountStrings.selectCity.localized(),
      child: const CityBottomSheet(),
    );
    if (pickedCity.isPresent) {
      ref.read(createAccountViewModelProvider.notifier).inputCity(pickedCity!);
      if (context.mounted) {
        FocusHelper.unfocusWithDelay(context);
      }
    }
  }
}
