import 'package:koora_kick/common/widgets/map/models/map_state.dart';
import 'package:koora_kick/common/widgets/map/models/map_widget_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class MapAdapter {
  Widget buildMap({
    required WidgetRef ref,
    required MapWidgetData config,
    required MapState mapState,
  });
}
