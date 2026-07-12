import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';

abstract interface class DashboardRepository {
  /// Live scores of [date] (defaults to today, UTC on the backend).
  Future<Result<ScoresSnapshot>> getScores({DateTime? date});
}
