import 'package:flutter/material.dart';

List<TextSpan> parseTaggedText(String text, {required TextStyle baseStyle, required TextStyle boldStyle}) {
  final List<TextSpan> spans = [];
  final RegExp regex = RegExp(r'<b>(.*?)</b>', caseSensitive: false);
  int lastIndex = 0;

  for (final Match match in regex.allMatches(text)) {

    if (match.start > lastIndex) {
      spans.add(TextSpan(
        text: text.substring(lastIndex, match.start),
        style: baseStyle,
      ));
    }

    final String? boldContent = match.group(1);
    if (boldContent != null) {
      spans.add(TextSpan(
        text: boldContent,
        style: boldStyle,
      ));
    }

    lastIndex = match.end;
  }

  if (lastIndex < text.length) {
    spans.add(TextSpan(
      text: text.substring(lastIndex),
      style: baseStyle,
    ));
  }

  return spans;
}