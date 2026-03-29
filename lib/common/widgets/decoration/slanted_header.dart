import 'package:flutter/material.dart';

class SlantedHeader extends StatelessWidget {
  final Widget child;
  final double? height;
  final Gradient? gradient;
  final Color? color;
  final double slantHeight;

  const SlantedHeader({
    super.key,
    required this.child,
    this.height,
    this.gradient,
    this.color,
    this.slantHeight = 8,
  });

  @override
  Widget build(BuildContext context) {
    final background = ClipPath(
      clipper: _SlantClipper(slantHeight: slantHeight),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
        ),
      ),
    );

    if (height != null) {
      return Stack(
        children: [
          background,
          child,
        ],
      );
    }

    return IntrinsicHeight(
      child: Stack(
        children: [
          Positioned.fill(child: background),
          child,
        ],
      ),
    );
  }
}

class _SlantClipper extends CustomClipper<Path> {
  final double slantHeight;

  _SlantClipper({required this.slantHeight});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - slantHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
