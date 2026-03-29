import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/extension/padding.dart';
import 'package:koora_kick/features/profile/language/presentation/state/language_state.dart';
import 'package:koora_kick/features/profile/language/presentation/viewmodel/language_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageBottomSheet extends ConsumerWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(languageViewModelProvider);
    final viewModel = ref.read(languageViewModelProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...state.languages.map((item) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: context.dimensions.mediumW,
              ),
              title: Text(
                item.label.localized(),
                style: context.typo.bodyMedium,
              ),
              trailing: switch (item) {
                SelectedLanguage() => Icon(Icons.check, color: context.colors.primary),
                UnselectedLanguage() => null,
              },
              onTap: () async {
                viewModel.selectLanguage(item.language);
                await viewModel.saveLanguage();
              },
            ),
          ],
        )),
        ],
    ).withPadding(EdgeInsets.only(bottom: context.dimensions.mediumH));
  }
}