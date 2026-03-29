import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class _LoaderManager {
  factory _LoaderManager() => _instance;
  _LoaderManager._internal();
  static final _LoaderManager _instance = _LoaderManager._internal();

  OverlayEntry? _overlayEntry;

  void show(BuildContext context) {
    if (_overlayEntry != null) {
      return;
    }

    final overlayState = Overlay.of(context);

    _overlayEntry = OverlayEntry(
      builder: (context) => Material(
        color: Colors.black.withOpacity(0.5),
        child: const Center(
          child: SpinKitPulse(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
    );
    overlayState.insert(_overlayEntry!);
  }

  void hide() {
    try {
      _overlayEntry?.remove();
    } catch (e) {
      print("Hide Loader Error: $e");
    } finally {
      _overlayEntry = null;
    }
  }
}

extension LoaderExtension on BuildContext {
  void showLoader() {
    if (!mounted) {
      return;
    }
    _LoaderManager().show(this);
  }

  void hideLoader() {
    _LoaderManager().hide();
  }
}