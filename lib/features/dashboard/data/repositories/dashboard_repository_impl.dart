import 'package:koora_kick/common/http/network_client.dart';
import 'package:koora_kick/common/http/response/result.dart';
import 'package:koora_kick/features/dashboard/data/requests/get_scores_request.dart';
import 'package:koora_kick/features/dashboard/domain/entities/match_model.dart';
import 'package:koora_kick/features/dashboard/domain/repositories/dashboard_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final dashboardRepositoryProvider =
    Provider<DashboardRepository>(DashboardRepositoryImpl.new);

class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl(this._ref);

  final Ref _ref;

  late final _networkClient = _ref.read(networkProvider);

  @override
  Future<Result<ScoresSnapshot>> getScores({DateTime? date}) async {
    final response = await _networkClient.execute(
      GetScoresRequest(
        date: date == null ? null : DateFormat('yyyy-MM-dd').format(date),
      ),
    );
    return response.when(
      success: (snapshot) => Result.success(snapshot),
      error: (exception) => Result.error(exception),
    );
  }
}
