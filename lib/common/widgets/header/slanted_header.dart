import 'package:koora_kick/common/common.dart';
import 'package:flutter/material.dart';

class SlantedHeader extends StatelessWidget {
  final double height;
  final Gradient gradient;
  final Widget child;

  const SlantedHeader({
    super.key,
    required this.height,
    required this.gradient,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _SlantedClipper(),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(gradient: gradient),
        child: child,
      ),
    );
  }
}

class _SlantedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 40); // Left side slightly shorter
    path.lineTo(size.width, size.height); // Right side full height
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
