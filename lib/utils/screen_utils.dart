import 'dart:typed_data';
import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:screenshot/screenshot.dart';

class ScreenUtils {

  static Future<bool> captureScreen(
    BuildContext context,
    ScreenshotController controller, {
    required String successMessage,
    required String errorMessage,
  }) async {
    try {
      final Uint8List? imageBytes = await controller.capture(
        delay: const Duration(milliseconds: 100),
      );

      if (imageBytes != null) {
        await Gal.putImageBytes(imageBytes);

        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(successMessage),
              backgroundColor: context.colors.primary,
            ),
          );
        }
        return true;
      }
      if (context.mounted) {
        _showErrorSnackBar(context, errorMessage);
      }
      return false;
    } catch (_) {
      if (context.mounted) {
        _showErrorSnackBar(context, errorMessage);
      }
      return false;
    }
  }

  static void _showErrorSnackBar(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        backgroundColor: context.colors.error,
      ),
    );
  }
}
