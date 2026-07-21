import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/koora_map/domain/entities/map_marker_model.dart';

class MapMarkerListMapper implements DataMapper<List<MapMarkerModel>> {
  @override
  List<MapMarkerModel> map(dynamic data) => (data as List)
      .map((json) => MapMarkerModel.fromJson(json as Map<String, dynamic>))
      .toList();
}
