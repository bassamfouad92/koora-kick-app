import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart' show KooraKickPageBuilder;
import 'package:koora_kick/features/profile/settings/presentation/state/settings_state.dart';
import 'package:koora_kick/features/profile/settings/presentation/viewmodel/settings_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(settingsViewModelProvider);
    final viewModel = ref.read(settingsViewModelProvider.notifier);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            'Settings',
            style: context.typo.headingLarge,
          ),
        )
        .content(
          state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i < state.sections.length; i++) ...[
                      _buildSection(context, state.sections[i], viewModel),
                      if (i < state.sections.length - 1)
                        SizedBox(height: context.dimensions.mediumH),
                    ]
                  ],
                ).withPadding(EdgeInsets.only(bottom: context.dimensions.largeH)),
        )
        .scrollable()
        .alignTo(CrossAxisAlignment.start);
  }

  Widget _buildSection(BuildContext context, SettingsSection section, SettingsViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section.title,
          style: context.typo.bodySmall.semiBold.copyWith(
            color: context.colors.textSecondary,
          ),
        ).withPadding(EdgeInsets.only(
          left: context.dimensions.smallW,
          bottom: context.dimensions.smallH,
        )),
        Container(
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: BorderRadius.circular(context.dimensions.medium),
            border: Border.all(color: context.colors.border, width: 1),
          ),
          child: Column(
            children: [
              for (var i = 0; i < section.items.length; i++) ...[
                _buildSettingItem(context, section.items[i], viewModel),
                if (i < section.items.length - 1)
                  Divider(
                    color: context.colors.divider,
                    height: 1,
                    indent: context.dimensions.xLargeW,
                  ),
              ],
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSettingItem(BuildContext context, SettingItem item, SettingsViewModel viewModel) {
    return InkWell(
      onTap: () => viewModel.onItemTapped(context, item.id),
      borderRadius: BorderRadius.circular(context.dimensions.medium),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dimensions.mediumW,
          vertical: context.dimensions.mediumH,
        ),
        child: Row(
          children: [
            IconTheme(
              data: IconThemeData(
                color: context.colors.textSecondary,
                size: context.dimensions.iconSizeMedium,
              ),
              child: item.icon,
            ),
            SizedBox(width: context.dimensions.mediumW),
            Expanded(
              child: Text(
                item.label,
                style: context.typo.bodyMedium.medium.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
            ),
            if (item.trailingText != null)
              Text(
                item.trailingText!,
                style: context.typo.bodySmall.copyWith(
                  color: context.colors.textSecondary,
                ),
              ).withPadding(EdgeInsets.only(right: context.dimensions.smallW)),
            Icon(
              Icons.chevron_right,
              color: context.colors.textSecondary,
              size: context.dimensions.iconSizeMedium,
            ),
          ],
        ),
      ),
    );
  }
}
