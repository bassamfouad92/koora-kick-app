import 'package:flutter/cupertino.dart';

class BannerAction {
  const BannerAction(
      {required this.text, required this.onTap, this.alignment = Alignment.bottomCenter});

  final String text;
  final VoidCallback onTap;
  final Alignment alignment;
}