import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/errors/app_error.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/managers/loader_manager.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/common/widgets/screen/status_screen.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/state/create_thread_state.dart';
import 'package:koora_kick/features/channels/presentation/view_model/create_thread_view_model.dart';
import 'package:koora_kick/features/channels/presentation/widgets/selected_tag_chip.dart';
import 'package:koora_kick/features/channels/presentation/widgets/tag_picker_sheet.dart';
import 'package:koora_kick/routes/koorakick_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateThreadScreen extends ConsumerStatefulWidget {
  const CreateThreadScreen({required this.channelId, super.key});

  final String channelId;

  @override
  ConsumerState<CreateThreadScreen> createState() => _CreateThreadScreenState();
}

class _CreateThreadScreenState extends ConsumerState<CreateThreadScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = createThreadViewModelProvider(widget.channelId);
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);

    return KooraKickPageBuilder.withAppBar()
        .title(
          Text(
            ChannelsStrings.createThreadTitle.localized(),
            style: context.typo.headingLarge,
          ),
        )
        .content(
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppInputField.text(
                controller: _titleController,
                hintText: ChannelsStrings.threadTitleHint.localized(),
                labelText: ChannelsStrings.threadTitleLabel.localized(),
                maxLength: 100,
              ).withOnChanged(notifier.inputTitle).withError(state.formErrors.title),
              SizedBox(height: context.dimensions.mediumH),
              AppInputField.text(
                controller: _descriptionController,
                hintText: ChannelsStrings.descriptionHint.localized(),
                labelText: ChannelsStrings.descriptionLabel.localized(),
                maxLines: 5,
                minLines: 3,
                maxLength: 500,
              ).withOnChanged(notifier.inputDescription).withError(state.formErrors.description),
              SizedBox(height: context.dimensions.mediumH),
              Text(
                ChannelsStrings.tagsLabel.localized(),
                style: context.typo.label,
              ),
              SizedBox(height: context.dimensions.xSmallH),
              Wrap(
                spacing: context.dimensions.smallW,
                runSpacing: context.dimensions.smallH,
                children: [
                  for (final tag in state.tags)
                    SelectedTagChip(tag: tag, onRemove: () => notifier.removeTag(tag)),
                  OutlinedButton.icon(
                    onPressed: () => _openTagPicker(context, notifier, state),
                    icon: const Icon(Icons.add, size: 16),
                    label: Text(ChannelsStrings.addTags.localized()),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: context.colors.textPrimary,
                      side: BorderSide(color: context.colors.border),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(context.dimensions.radiusXLarge),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        .withBottomContent(
          AppButton.primary(
            ChannelsStrings.submitThread.localized(),
            onPressed: notifier.submit,
          ),
        )
        .alignTo(CrossAxisAlignment.start)
        .scrollable()
        .listen<CreateThreadState>(provider, (context, ref, prev, next) {
          next.status.when(
            initial: () {},
            submitting: () => context.showLoader(),
            submitted: (thread) {
              context.hideLoader();
              _showThreadSubmitted(context);
            },
            error: (error) {
              context.hideLoader();
              if (error.generalMessage.isNotEmpty) {
                SnackBarUtils.showError(error.generalMessage);
              }
            },
          );
        });
  }

  Future<void> _openTagPicker(
    BuildContext context,
    CreateThreadViewModel notifier,
    CreateThreadState state,
  ) async {
    final result = await TagPickerSheet.show(
      context,
      initialSelection: state.tags,
      popularTags: state.popularTags,
      onSearch: notifier.searchTags,
      maxTags: 5,
    );
    if (result != null) {
      notifier.setTags(result);
    }
  }

  void _showThreadSubmitted(BuildContext context) {
    StatusRoute(
      StatusScreenViewHolder(
        icon: Icon(Icons.check_circle, color: context.colors.success, size: 96),
        title: ChannelsStrings.threadSubmittedTitle.localized(),
        description: ChannelsStrings.threadSubmittedDescription.localized(),
        buttonText: ChannelsStrings.viewInPending.localized(),
        onButtonPressed: () => _backToChannel(context),
        secondaryButtonText: ChannelsStrings.backToThreads.localized(),
        onSecondaryButtonPressed: () => _backToChannel(context),
      ),
    ).push(context);
  }

  void _backToChannel(BuildContext context) {
    ChannelDetailRoute(channelId: widget.channelId).go(context);
  }
}
