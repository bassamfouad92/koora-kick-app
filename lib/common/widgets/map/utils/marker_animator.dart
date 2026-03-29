import 'dart:async';
import 'package:koora_kick/common/widgets/map/models/map_models.dart';

class MarkerAnimator {
  static const _duration = Duration(milliseconds: 500);
  static Timer? _timer;
  static const int kAnimationSteps = 15;

  static void animate({
    required LatLng from,
    required LatLng to,
    required void Function(LatLng pos) onUpdate,
  }) {
    _timer?.cancel();

    int t = 0;

    _timer = Timer.periodic(
      Duration(milliseconds: _duration.inMilliseconds ~/ kAnimationSteps),
          (timer) {
        t++;
        final double percent = t / kAnimationSteps;

        final double lat = from.latitude + (to.latitude - from.latitude) * percent;
        final double lng = from.longitude + (to.longitude - from.longitude) * percent;

        onUpdate(LatLng(lat, lng));

        if (t >= kAnimationSteps) timer.cancel();
      },
    );
  }
}
