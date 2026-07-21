import 'dart:async';

import 'package:koora_kick/common/channels/domain/entities/hashtag_model.dart';
import 'package:koora_kick/common/common.dart';
import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/theme/app_typography.dart';
import 'package:koora_kick/common/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:koora_kick/features/channels/presentation/widgets/create_tag_sheet.dart';
import 'package:flutter/material.dart';

/// "Select Tags" sheet: search-as-you-type over `GET /hashtags?q=`, a
/// popular-tags fallback when the search is empty, and a way to mint a
/// brand-new tag. Pops with the final selected tag set.
class TagPickerSheet extends StatefulWidget {
  const TagPickerSheet({
    required this.initialSelection,
    required this.popularTags,
    required this.onSearch,
    required this.maxTags,
    super.key,
  });

  final List<String> initialSelection;
  final List<HashtagModel> popularTags;
  final Future<List<HashtagModel>> Function(String query) onSearch;
  final int maxTags;

  static Future<List<String>?> show(
    BuildContext context, {
    required List<String> initialSelection,
    required List<HashtagModel> popularTags,
    required Future<List<HashtagModel>> Function(String query) onSearch,
    required int maxTags,
  }) =>
      AppBottomSheet.show<List<String>>(
        context: context,
        title: ChannelsStrings.selectTags.localized(),
        child: TagPickerSheet(
          initialSelection: initialSelection,
          popularTags: popularTags,
          onSearch: onSearch,
          maxTags: maxTags,
        ),
      );

  @override
  State<TagPickerSheet> createState() => _TagPickerSheetState();
}

class _TagPickerSheetState extends State<TagPickerSheet> {
  final _searchController = TextEditingController();
  Timer? _debounce;
  List<HashtagModel>? _searchResults;
  bool _isSearching = false;
  late Set<String> _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialSelection.toSet();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  void _onQueryChanged(String query) {
    _debounce?.cancel();
    if (query.trim().isEmpty) {
      setState(() => _searchResults = null);
      return;
    }
    _debounce = Timer(const Duration(milliseconds: 300), () async {
      setState(() => _isSearching = true);
      final results = await widget.onSearch(query.trim());
      if (!mounted) return;
      setState(() {
        _searchResults = results;
        _isSearching = false;
      });
    });
  }

  void _toggle(String tag) {
    setState(() {
      if (_selected.contains(tag)) {
        _selected.remove(tag);
      } else if (_selected.length < widget.maxTags) {
        _selected.add(tag);
      }
    });
  }

  Future<void> _createNewTag() async {
    final newTag = await CreateTagSheet.show(context);
    if (newTag == null || !mounted) return;
    _toggle(newTag.replaceFirst(RegExp(r'^#'), '').toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    final displayedTags = _searchResults ?? widget.popularTags;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInputField.search(
          controller: _searchController,
          hintText: ChannelsStrings.searchTags.localized(),
        ).withOnChanged(_onQueryChanged),
        SizedBox(height: context.dimensions.mediumH),
        Text(
          _searchResults == null
              ? ChannelsStrings.popularTags.localized()
              : ChannelsStrings.searchTags.localized(),
          style: context.typo.headingExtraSmall,
        ),
        SizedBox(height: context.dimensions.smallH),
        Flexible(
          child: _isSearching
              ? Center(
                  child: CircularProgressIndicator(color: context.colors.primary)
                      .withPadding(EdgeInsets.all(context.dimensions.large)),
                )
              : SingleChildScrollView(
                  child: Wrap(
                    spacing: context.dimensions.smallW,
                    runSpacing: context.dimensions.smallH,
                    children: [
                      for (final tag in displayedTags)
                        _TagOption(
                          tag: tag.tag,
                          isSelected: _selected.contains(tag.tag),
                          onTap: () => _toggle(tag.tag),
                        ),
                    ],
                  ),
                ),
        ),
        SizedBox(height: context.dimensions.mediumH),
        AppButton.outline(
          ChannelsStrings.createNewTag.localized(),
          onPressed: _createNewTag,
        ),
        SizedBox(height: context.dimensions.smallH),
        AppButton.primary(
          ChannelsStrings.done.localized(),
          onPressed: () => Navigator.of(context).pop(_selected.toList()),
        ),
      ],
    );
  }
}

class _TagOption extends StatelessWidget {
  const _TagOption({required this.tag, required this.isSelected, required this.onTap});

  final String tag;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(context.dimensions.radiusXLarge);

    return Material(
      color: isSelected ? context.colors.primary : context.colors.surface,
      borderRadius: radius,
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.dimensions.mediumW,
            vertical: context.dimensions.smallH,
          ),
          child: Text(
            '#$tag',
            style: context.typo.bodyMedium.semiBold.copyWith(
              color: isSelected ? context.colors.buttonPrimaryText : context.colors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
