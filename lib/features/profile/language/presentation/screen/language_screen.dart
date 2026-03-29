import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/page/koorakick_page_builder.dart';
import 'package:koora_kick/features/profile/language/presentation/state/language_state.dart';
import 'package:koora_kick/features/profile/language/presentation/viewmodel/language_view_model.dart';
import 'package:koora_kick/features/profile/profile_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageScreen extends ConsumerWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(languageViewModelProvider);
    final viewModel = ref.read(languageViewModelProvider.notifier);

    return KooraKickPageBuilder.withAppBar()
        .title(Text(
          ProfileStrings.selectLanguage.localized(),
          style: context.typo.headingLarge,
        ))
        .content(
          state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.languages.length,
                  separatorBuilder: (_, __) => Divider(color: context.colors.divider),
                  itemBuilder: (context, index) {
                    final item = state.languages[index];
                    return _buildLanguageItem(context, item, viewModel);
                  },
                ),
        )
        .withBottomContent(
          AppButton.primary(
            ProfileStrings.selectLanguageButton.localized(),
            onPressed: () async {
              await viewModel.saveLanguage();
            },
          ).withSymmetricPadding(
            horizontal: context.dimensions.pagePadding,
            vertical: context.dimensions.mediumH,
          ),
        )
        .alignTo(CrossAxisAlignment.start);
  }

  Widget _buildLanguageItem(
    BuildContext context,
    LanguageItemState item,
    LanguageViewModel viewModel,
  ) => ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        item.label.localized(),
        style: context.typo.bodyMedium
      ),
      trailing: switch (item) {
        SelectedLanguage() => Icon(Icons.check, color: context.colors.primary),
        UnselectedLanguage() => null,
      },
      onTap: () => viewModel.selectLanguage(item.language),
    );
}
