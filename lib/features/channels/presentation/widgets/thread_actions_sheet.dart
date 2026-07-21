import 'package:koora_kick/common/extensions/localization.dart';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/utils/snack_bar_utils.dart';
import 'package:koora_kick/common/widgets/bottom_sheet/app_bottom_sheet.dart';
import 'package:koora_kick/features/channels/channels_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// "..." menu on a thread: share/copy link (functional), save/mute
/// (persisted locally), report actions (acknowledged, no backend endpoint
/// exists for moderation yet).
class ThreadActionsSheet extends StatelessWidget {
  const ThreadActionsSheet({
    required this.threadId,
    required this.isSaved,
    required this.isMuted,
    required this.onToggleSave,
    required this.onToggleMute,
    super.key,
  });

  final String threadId;
  final bool isSaved;
  final bool isMuted;
  final VoidCallback onToggleSave;
  final VoidCallback onToggleMute;

  static Future<void> show(
    BuildContext context, {
    required String threadId,
    required bool isSaved,
    required bool isMuted,
    required VoidCallback onToggleSave,
    required VoidCallback onToggleMute,
  }) =>
      AppBottomSheet.show<void>(
        context: context,
        title: ChannelsStrings.thread.localized(),
        child: ThreadActionsSheet(
          threadId: threadId,
          isSaved: isSaved,
          isMuted: isMuted,
          onToggleSave: onToggleSave,
          onToggleMute: onToggleMute,
        ),
      );

  // Placeholder deep link until a real web/app-link domain is configured.
  String get _threadLink => 'koorakick://threads/$threadId';

  Future<void> _copyLink(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: _threadLink));
    if (context.mounted) {
      Navigator.of(context).pop();
      SnackBarUtils.showSuccess(ChannelsStrings.linkCopied.localized());
    }
  }

  void _reportSubmitted(BuildContext context) {
    Navigator.of(context).pop();
    SnackBarUtils.showSuccess(ChannelsStrings.reportSubmitted.localized());
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ActionTile(
            icon: Icons.ios_share_outlined,
            label: ChannelsStrings.shareThread.localized(),
            onTap: () => _copyLink(context),
          ),
          _ActionTile(
            icon: Icons.link,
            label: ChannelsStrings.copyLink.localized(),
            onTap: () => _copyLink(context),
          ),
          _ActionTile(
            icon: isSaved ? Icons.bookmark : Icons.bookmark_border,
            label: (isSaved ? ChannelsStrings.unsaveThread : ChannelsStrings.saveThread).localized(),
            onTap: () {
              onToggleSave();
              Navigator.of(context).pop();
            },
          ),
          _ActionTile(
            icon: Icons.flag_outlined,
            label: ChannelsStrings.reportThread.localized(),
            onTap: () => _reportSubmitted(context),
          ),
          _ActionTile(
            icon: Icons.notifications_off_outlined,
            label: ChannelsStrings.muteThread.localized(),
            trailing: Switch(value: isMuted, onChanged: (_) => onToggleMute()),
            onTap: onToggleMute,
          ),
          _ActionTile(
            icon: Icons.block,
            label: ChannelsStrings.reportAndBlock.localized(),
            isDestructive: true,
            onTap: () => _reportSubmitted(context),
          ),
        ],
      );
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({
    required this.icon,
    required this.label,
    required this.onTap,
    this.trailing,
    this.isDestructive = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Widget? trailing;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final color = isDestructive ? context.colors.error : context.colors.textPrimary;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: color),
      title: Text(label, style: context.typo.bodyMedium.copyWith(color: color)),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
