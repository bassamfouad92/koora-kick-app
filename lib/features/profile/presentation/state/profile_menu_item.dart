import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_menu_item.freezed.dart';

enum ProfileMenuItemType {
  language,
  appPreferences,
  helpSupport,
}

@freezed
sealed class ProfileMenuItem with _$ProfileMenuItem {
  const factory ProfileMenuItem({
    required Widget icon,
    required String title,
    required ProfileMenuItemType type,
    String? trailingText,
    Color? trailingTextColor,
    Color? trailingBackgroundColor,
  }) = _ProfileMenuItem;
}
