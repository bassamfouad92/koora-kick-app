import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';

/// "Create New Tag" sheet — tags aren't pre-registered server-side, they're
/// created implicitly the first time a thread uses them, so this just
/// validates a name and hands it back to the tag picker.
class CreateTagSheet extends StatefulWidget {
  const CreateTagSheet({super.key});

  static Future<String?> show(BuildContext context) => AppBottomSheet.show<String>(
        context: context,
        title: ChannelsStrings.createNewTagTitle.localized(),
        child: const CreateTagSheet(),
      );

  @override
  State<CreateTagSheet> createState() => _CreateTagSheetState();
}

class _CreateTagSheetState extends State<CreateTagSheet> {
  final _controller = TextEditingController();
  static const _maxLength = 30;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppInputField.text(
            controller: _controller,
            hintText: '#Ronaldo2026',
            labelText: ChannelsStrings.tagNameLabel.localized(),
            maxLength: _maxLength,
          ).withOnChanged((_) => setState(() {})),
          Text(
            ChannelsStrings.tagNameHelper.localized(),
            style: context.typo.bodySmall.copyWith(color: context.colors.textSecondary),
          ),
          SizedBox(height: context.dimensions.largeH),
          AppButton.primary(
            ChannelsStrings.createTag.localized(),
            onPressed: _controller.text.trim().isEmpty
                ? () {}
                : () => Navigator.of(context).pop(_controller.text.trim()),
          ).withDisabled(value: _controller.text.trim().isEmpty),
          SizedBox(height: context.dimensions.smallH),
          AppButton.text(
            text: ChannelsStrings.cancel.localized(),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );
}
