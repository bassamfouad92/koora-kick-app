import 'package:koora_kick/common/extensions/theme_context_extension.dart';
import 'package:koora_kick/common/widgets/extension/position.dart';
import 'package:flutter/material.dart';

/// Represents the expansion state of the draggable sheet
enum SheetExpansionState {
  collapsed, // < 0.4
  minimal, // >= 0.4 (Basic info only)
  medium, // >= 0.5 (Basic info + Vehicle info)
  full, // >= 0.7 (All content including route)
}

/// A reusable draggable bottom sheet widget with consistent styling.
///
/// This widget provides:
/// - Automatic grabber/notch handling
/// - Optional scrollable content
/// - Customizable sizes, colors, and padding
/// - Built-in shadow and rounded corners
/// - Size-based conditional rendering
///
/// Example usage (basic):
/// ```dart
/// KooraKickDraggableSheet(
///   initialSize: 0.4,
///   minSize: 0.4,
///   maxSize: 0.85,
///   builder: (context) => YourContentWidget(),
///   scrollable: true,
/// )
/// ```
/// SheetExpansionState _getExpansionState(double size) => switch (size) {
///         >= 0.5 => SheetExpansionState.full,
///         >= 0.4 => SheetExpansionState.medium,
///         >= 0.38 => SheetExpansionState.minimal,
///         _ => SheetExpansionState.collapsed,
///       };
///
///
///
/// Example with size-based conditional rendering:
/// ```dart
/// KooraKickDraggableSheet(
///   initialSize: 0.4,
///   minSize: 0.4,
///   maxSize: 0.85,
///   builderWithSize: (context, size) {
///     return Column(
///       children: [
///         if (size >= 0.4) BasicInfoWidget(),
///         if (size >= 0.6) DetailsWidget(),
///         if (size >= 0.8) FullContentWidget(),
///       ],
///     );
///   },
///   scrollable: true,
/// )
/// ```
class KooraKickDraggableSheet extends StatefulWidget {
  const KooraKickDraggableSheet({
    super.key,
    this.initialSize = 0.5,
    this.minSize = 0.25,
    this.maxSize = 1.0,
    this.builder,
    this.builderWithSize,
    this.scrollable = false,
    this.controller,
    this.backgroundColor = Colors.white,
    this.borderRadius = 20.0,
    this.showGrabber = true,
    this.contentPadding = const EdgeInsets.all(20.0),
  }) : assert(
          builder != null || builderWithSize != null,
          'Either builder or builderWithSize must be provided',
        );

  /// Initial size of the sheet (0.0 to 1.0)
  final double initialSize;

  /// Minimum size of the sheet (0.0 to 1.0)
  final double minSize;

  /// Maximum size of the sheet (0.0 to 1.0)
  final double maxSize;

  /// Content builder without size parameter
  final Widget Function(BuildContext)? builder;

  /// Content builder with size parameter for conditional rendering
  /// The size parameter represents the current size of the sheet (0.0 to 1.0)
  final Widget Function(BuildContext, double)? builderWithSize;

  /// Whether the content should be scrollable
  final bool scrollable;

  /// Optional controller for the draggable sheet
  final DraggableScrollableController? controller;

  /// Background color of the sheet
  final Color backgroundColor;

  /// Border radius of the sheet
  final double borderRadius;

  /// Whether to show the grabber/notch
  final bool showGrabber;

  /// Content padding
  final EdgeInsets contentPadding;

  @override
  State<KooraKickDraggableSheet> createState() => _KooraKickDraggableSheetState();
}

class _KooraKickDraggableSheetState extends State<KooraKickDraggableSheet> {
  late ValueNotifier<double> _currentSizeNotifier;

  @override
  void initState() {
    super.initState();
    // Initialize with the current size from controller if available and attached,
    // otherwise use initialSize.
    double startSize = widget.initialSize;
    if (widget.controller != null && widget.controller!.isAttached) {
      startSize = widget.controller!.size;
    }
    _currentSizeNotifier = ValueNotifier<double>(startSize);
  }

  @override
  void dispose() {
    _currentSizeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DraggableScrollableSheet(
      controller: widget.controller,
      initialChildSize: widget.initialSize,
      minChildSize: widget.minSize,
      maxChildSize: widget.maxSize,
      builder: (context, scrollController) =>
          NotificationListener<DraggableScrollableNotification>(
        onNotification: (notification) {
          _currentSizeNotifier.value = notification.extent;
          return false;
        },
        child: ValueListenableBuilder<double>(
          valueListenable: _currentSizeNotifier,
          builder: (context, currentSize, child) => Container(
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(widget.borderRadius)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              children: [
                // Grabber/Notch
                if (widget.showGrabber) _buildGrabber(),

                // Content
                Expanded(
                  child: widget.scrollable
                      ? SingleChildScrollView(
                          controller: scrollController,
                          child: Padding(
                            padding: widget.contentPadding,
                            child: widget.builderWithSize != null
                                ? widget.builderWithSize!(context, currentSize)
                                : widget.builder!(context),
                          ),
                        )
                      : Padding(
                          padding: widget.contentPadding,
                          child: widget.builderWithSize != null
                              ? widget.builderWithSize!(context, currentSize)
                              : widget.builder!(context),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  Widget _buildGrabber() => Container(
      width: context.dimensions.w(32),
      height: context.dimensions.h(4),
      margin: EdgeInsets.symmetric(vertical: context.dimensions.w(12)),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(context.dimensions.w(2)),
      )).centered();
}
