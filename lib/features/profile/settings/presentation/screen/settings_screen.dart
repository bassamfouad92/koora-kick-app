import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart' show KooraKickPageBuilder;
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:koora_kick/features/profile/settings/presentation/state/settings_state.dart';
import 'package:koora_kick/features/profile/settings/presentation/viewmodel/settings_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:koora_kick/app/provider/app_settings_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingsViewModelProvider);
    final viewModel = ref.read(settingsViewModelProvider.notifier);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            ProfileStrings.appPreferences.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .content(
          state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i < state.items.length; i++) ...[
                      _buildSettingItem(context, ref, state.items[i], viewModel),
                      if (i < state.items.length - 1)
                        Divider(color: context.colors.divider),
                    ],
                  ],
                ),
        )
        .withBottomContent(
          AppButton.primary(
            ProfileStrings.confirmSettings.localized(),
            onPressed: () async {
              await viewModel.saveSettings();
              if (context.mounted) {
                Navigator.pop(context);
              }
            },
          ).withSymmetricPadding(
            horizontal: context.dimensions.pagePadding,
            vertical: context.dimensions.mediumH,
          ),
        )
        .alignTo(CrossAxisAlignment.start);
  }

  Widget _buildSettingItem(
    BuildContext context,
    WidgetRef ref,
    SettingItem item,
    SettingsViewModel viewModel,
  ) {
    final settings = ref.watch(appSettingsNotifierProvider).valueOrNull;
    final isDark = settings?.themeMode == 'dark';

    return _SettingRow(
      icon: item.icon,
      label: item.label,
      child: CupertinoSlidingSegmentedControl<Object>(
        groupValue: item.currentValue,
        thumbColor: isDark ? context.colors.primary : context.colors.surface,
        children: {
          for (final option in item.options)
            option.value: Text(
              option.label,
              style: option.value != item.currentValue
                  ? context.typo.bodySmall.regular.copyWith(
                      color: isDark ? Colors.white : Colors.black,
                    )
                  : context.typo.bodySmall.semiBold.copyWith(
                      color: isDark ? Colors.white : Colors.black,
                    ),
            ),
        },
        onValueChanged: (val) {
          if (val != null) {
            viewModel.updateSetting(item.id, val);
          }
        },
      ),
    );
  }
}

class _SettingRow extends StatelessWidget {
  const _SettingRow({
    required this.icon,
    required this.label,
    required this.child,
  });

  final Widget icon;
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(vertical: context.dimensions.smallH),
    child: Row(
      children: [
        IconTheme(
          data: IconThemeData(color: context.colors.textPrimary),
          child: icon is AppImage
              ? (icon as AppImage).copyWith(color: context.colors.textPrimary)
              : icon,
        ),
        SizedBox(width: context.dimensions.medium),
        Expanded(
          child: Text(
            label,
            style: context.typo.bodyMedium.medium.copyWith(
              color: context.colors.textPrimary,
            ),
          ),
        ),
        SizedBox(width: context.dimensions.w(140), child: child),
      ],
    ),
  );
}
