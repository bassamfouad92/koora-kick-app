import 'dart:math';
import 'dart:ui' as ui;

import 'package:koora_kick/common/widgets/map/models/map_models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
class CanvasMarkerBuilder {

  const CanvasMarkerBuilder(this.spec);
  final MapMarkerData spec;

  Future<ui.Image> loadImage() async {
    final bytes = (await rootBundle.load(spec.icon as String)).buffer
        .asUint8List();
    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    return frame.image;
  }

  Future<ui.Image> buildRotatedImage(ui.Image image) async {

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    const double devicePixelRatio = 3.5;
    final effectiveScale = spec.id == "live_vehicle_id" ? 12.0 : spec.scale * devicePixelRatio;

    final width = image.width * effectiveScale;
    final height = image.height * effectiveScale;

    _applyRotation(canvas, width, height);
    _drawBaseImage(canvas, image, width, height);

    if (spec.number != null) {
      _drawNumber(canvas, width, height, spec.number!, 24);
    }

    return recorder.endRecording().toImage(width.toInt(), height.toInt());
  }

  Future<Uint8List> toPngBytes(ui.Image image) async {
    final bd = await image.toByteData(format: ui.ImageByteFormat.png);
    return bd!.buffer.asUint8List();
  }

  Future<Uint8List> build() async {
    final source = await loadImage();
    final rotated = await buildRotatedImage(source);
    return toPngBytes(rotated);
  }

  // --------------------------------------------------------------
  // Helpers
  // --------------------------------------------------------------

  void _applyRotation(Canvas canvas, double width, double height) {
    final centerX = width / 2;
    final centerY = height / 2;
    canvas.translate(centerX, centerY);
    final radians = spec.rotation * (pi / 180);
    canvas.rotate(radians);
    canvas.translate(-centerX, -centerY);
  }

  void _drawBaseImage(
      Canvas canvas,
      ui.Image image,
      double width,
      double height,
      ) {
    canvas.drawImageRect(
      image,
      Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
      Rect.fromLTWH(0, 0, width, height),
      Paint(),
    );
  }

  void _drawNumber(
      Canvas canvas,
      double width,
      double height,
      int number,
      double scale,
      ) {
    final tp = TextPainter(
      text: TextSpan(
        text: '$number',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14 * scale,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    tp.paint(
      canvas,
      Offset(
        (width - tp.width) / 2,
        (height - tp.height) / 2,
      ),
    );
  }
}
