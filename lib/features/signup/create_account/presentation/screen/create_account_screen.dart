import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';

import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';

import 'package:koora_kick/common/widgets/banner/banner_text.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/features/authentication/presentation/widget/social_login_buttons.dart';
import 'package:koora_kick/features/signup/create_account/create_account_strings.dart';
import 'package:koora_kick/features/signup/create_account/presentation/widget/city_bottom_sheet.dart';
import 'package:koora_kick/features/signup/create_account/presentation/widget/location_country_bottom_sheet.dart';
import 'package:koora_kick/utils/focus_helper.dart';
import 'package:koora_kick/features/signup/create_account/state/create_account_state.dart';
import 'package:koora_kick/features/signup/create_account/view_model/create_account_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  ConsumerState<CreateAccountScreen> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final createAccountState = ref.watch(createAccountViewModelProvider);
    final notifier = ref.read(createAccountViewModelProvider.notifier);

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
      leadingWidget: AppImage.asset(AppAssets.redWaring).build(),
    );

    final Widget buildNameField =
        AppInputField.text(
              controller: _nameController,
              hintText: CreateAccountStrings.fullNameHint.localized(),
              labelText: CreateAccountStrings.fullNameLabel.localized(),
              actionButton: InputFieldActionButton(
                icon: Icon(
                  Icons.person_outline,
                  color: context.colors.textSecondary,
                ),
                onTap: () {},
                isEnabled: false,
              ),
            )
            .withOnChanged(notifier.inputFullName)
            .withError(createAccountState.formErrors.name);

    final Widget buildEmailField =
        AppInputField.text(
              controller: _emailController,
              hintText: CreateAccountStrings.emailHint.localized(),
              labelText: CreateAccountStrings.emailLabel.localized(),
              keyboardType: TextInputType.emailAddress,
              actionButton: InputFieldActionButton(
                icon: Icon(
                  Icons.mail_outline,
                  color: context.colors.textSecondary,
                ),
                onTap: () {},
                isEnabled: false,
              ),
            )
            .withOnChanged(notifier.inputEmail)
            .withError(createAccountState.formErrors.email);

    final Widget buildCountryDropdown =
        AppInputField.itemPicker(
              itemPickerSelectedValue:
                  createAccountState.selectedLocationCountry?.name,
              hintText: CreateAccountStrings.selectYourCountry.localized(),
              labelText: CreateAccountStrings.countryLabel.localized(),
            )
            .withOnTap(() => _showLocationCountryPicker(context))
            .withError(createAccountState.formErrors.country);

    final Widget buildCityDropdown =
        AppInputField.itemPicker(
              itemPickerSelectedValue: createAccountState.selectedCity?.name,
              hintText: CreateAccountStrings.selectYourCity.localized(),
              labelText: CreateAccountStrings.cityLabel.localized(),
            )
            .withOnTap(() => _showCityPicker(context))
            .withError(createAccountState.formErrors.city);

    final Widget buildPasswordField =
        AppInputField.text(
              controller: _passwordController,
              hintText: CreateAccountStrings.passwordHint.localized(),
              labelText: CreateAccountStrings.passwordLabel.localized(),
              obscureText: _obscurePassword,
              actionButton: InputFieldActionButton(
                icon: Icon(
                  _obscurePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: context.colors.textSecondary,
                ),
                onTap: () =>
                    setState(() => _obscurePassword = !_obscurePassword),
              ),
            )
            .withOnChanged(notifier.inputPassword)
            .withError(createAccountState.formErrors.password);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            CreateAccountStrings.createYourAccountTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .subtitle(
          Text(
            CreateAccountStrings.createAccountSubtitle.localized(),
            style: context.typo.bodyMedium.copyWith(
              color: context.colors.textSecondary,
            ),
          ).withPadding(EdgeInsets.only(top: context.dimensions.smallH)),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (error != null && error.generalMessage.isNotEmpty)
                errorBanner.gapBottom(context.dimensions.large),
              [
                buildNameField,
                buildEmailField,
                buildCountryDropdown,
                buildCityDropdown,
                buildPasswordField,
              ].column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: context.dimensions.mediumH,
              ),
              _buildAgreeToTerms(context, createAccountState),
              AppButton.primary(
                CreateAccountStrings.signUpButton.localized(),
                onPressed: notifier.register,
              ).withPadding(EdgeInsets.only(top: context.dimensions.mediumH)),
              SocialLoginButtons(
                axis: Axis.horizontal,
                onPressed: notifier.socialLogin,
              ).withPadding(EdgeInsets.only(top: context.dimensions.xLargeH)),
            ],
          ),
        )
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
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
            },
            error: (error) {
              context.hideLoader();
            },
          );
        });
  }

  Widget _buildAgreeToTerms(
    BuildContext context,
    CreateAccountState state,
  ) {
    final notifier = ref.read(createAccountViewModelProvider.notifier);

    final agreeRow = [
      SizedBox(
        width: context.dimensions.iconSizeMedium,
        height: context.dimensions.iconSizeMedium,
        child: Checkbox(
          value: state.agreedToTerms,
          onChanged: (_) => notifier.toggleAgreedToTerms(),
          activeColor: context.colors.primary,
          checkColor: context.colors.buttonPrimaryText,
          side: BorderSide(color: context.colors.border),
        ),
      ),
      Expanded(
        child: AppRichTextBuilder(context)
            .add(CreateAccountStrings.agreePrefix.localized())
            .space()
            .link(
              'auth_termAndPrivacy_termTitle'.localized(),
              style: context.typo.bodySmall.semiBold.copyWith(
                color: context.colors.textLink,
              ),
              onTap: () {},
            )
            .space()
            .add('global_and'.localized())
            .space()
            .link(
              'auth_termAndPrivacy_privacyTitle'.localized(),
              style: context.typo.bodySmall.semiBold.copyWith(
                color: context.colors.textLink,
              ),
              onTap: () {},
            )
            .build(
              baseStyle: context.typo.bodySmall.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
      ),
    ].row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: context.dimensions.smallW,
    );

    return [
      agreeRow,
      if (state.formErrors.terms != null)
        Text(
          state.formErrors.terms!,
          style: context.typo.errorMessage,
        ).withPadding(EdgeInsets.only(top: context.dimensions.xSmallH)),
    ]
        .column(crossAxisAlignment: CrossAxisAlignment.start)
        .withPadding(EdgeInsets.only(top: context.dimensions.largeH));
  }

  void _showLocationCountryPicker(BuildContext context) {
    FocusHelper.unfocus(context);
    final state = ref.read(createAccountViewModelProvider);

    AppBottomSheet.show<void>(
      context: context,
      title: CreateAccountStrings.selectYourCountry.localized(),
      child: LocationCountryBottomSheet(
        selectedCountryId: state.selectedLocationCountry?.id,
        onCountrySelected:
            ref.read(createAccountViewModelProvider.notifier).inputLocationCountry,
      ),
    );
  }

  void _showCityPicker(BuildContext context) async {
    FocusHelper.unfocus(context);
    final state = ref.read(createAccountViewModelProvider);

    final selectedCountry = state.selectedLocationCountry;
    if (selectedCountry == null) {
      SnackBarUtils.showError(
        CreateAccountStrings.selectCountryFirst.localized(),
      );
      return;
    }

    await AppBottomSheet.show<void>(
      context: context,
      title: CreateAccountStrings.selectCity.localized(),
      child: CityBottomSheet(
        countryId: selectedCountry.id,
        selectedCityId: state.selectedCity?.id,
        onCitySelected: ref.read(createAccountViewModelProvider.notifier).inputCity,
      ),
    );
    if (context.mounted) {
      FocusHelper.unfocusWithDelay(context);
    }
  }
}
