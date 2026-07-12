import 'package:koora_kick/common/http/http_types.dart';
import 'package:koora_kick/common/http/request/http_request.dart';
import 'package:koora_kick/common/mapper/data_mapper.dart';
import 'package:koora_kick/features/dashboard/data/mappers/scores_mapper.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';

/// `GET /scores?date=YYYY-MM-DD` (public). `date` defaults to today (UTC).
/// Served from server cache — poll every 30–60s while scores are visible.
class GetScoresRequest extends HttpRequest<ScoresSnapshot> {
  GetScoresRequest({this.date});

  /// Formatted `YYYY-MM-DD`.
  final String? date;

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get path => '/scores';

  @override
  Map<String, dynamic>? get queryParams => {
        if (date != null) 'date': date,
      };

  @override
  bool get requiresAuth => false;

  @override
  DataMapper<ScoresSnapshot> get mapper => ScoresSnapshotMapper();
}
