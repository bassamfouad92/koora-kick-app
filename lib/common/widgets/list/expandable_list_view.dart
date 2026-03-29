import 'package:flutter/material.dart';

class ExpandableListView extends StatefulWidget {
  const ExpandableListView({
    required this.headerBuilder,
    required this.itemBuilder,
    required this.itemCount,
    super.key,
    this.initialExpanded = true,
  });

  /// A function that returns the widget used as header.
  /// It receives [isExpanded] to allow changing the header's appearance based on state.
  final Widget Function(BuildContext context, bool isExpanded) headerBuilder;

  /// Builder for each list item.
  final IndexedWidgetBuilder itemBuilder;

  /// Number of items in the list.
  final int itemCount;

  /// Whether the list is initially expanded.
  final bool initialExpanded;

  @override
  State<ExpandableListView> createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView>
    with SingleTickerProviderStateMixin {
  late bool _isExpanded;
  late final AnimationController _expandController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initialExpanded;
    _expandController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      value: _isExpanded ? 1.0 : 0.0,
    );
    _animation = CurvedAnimation(
      parent: _expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _expandController.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _expandController.forward();
      } else {
        _expandController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: _handleTap,
          child: widget.headerBuilder(context, _isExpanded),
        ),
        SizeTransition(
          sizeFactor: _animation,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder,
          ),
        ),
      ],
    );
}
