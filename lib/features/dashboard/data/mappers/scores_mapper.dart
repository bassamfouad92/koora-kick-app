import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';

class ScoresSnapshotMapper implements DataMapper<ScoresSnapshot> {
  @override
  ScoresSnapshot map(dynamic data) =>
      ScoresSnapshot.fromJson(data as Map<String, dynamic>);
}
