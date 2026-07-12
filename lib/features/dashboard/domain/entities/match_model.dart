import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

/// Live-score payload of `GET /scores?date=YYYY-MM-DD`.
@freezed
sealed class ScoresSnapshot with _$ScoresSnapshot {
  const factory ScoresSnapshot({
    @Default([]) List<MatchModel> matches,
    DateTime? lastUpdated,
    // true = upstream API failed, serving last known data.
    @Default(false) bool stale,
  }) = _ScoresSnapshot;

  factory ScoresSnapshot.fromJson(Map<String, dynamic> json) =>
      _$ScoresSnapshotFromJson(json);
}

@freezed
sealed class MatchModel with _$MatchModel {
  const MatchModel._();

  const factory MatchModel({
    required int id,
    MatchCompetition? competition,
    DateTime? utcDate,
    // SCHEDULED | TIMED | IN_PLAY | PAUSED | FINISHED | SUSPENDED |
    // POSTPONED | CANCELLED | AWARDED
    @Default('') String status,
    int? matchday,
    String? stage,
    MatchTeam? homeTeam,
    MatchTeam? awayTeam,
    MatchScore? score,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(json);

  bool get isLive => status == 'IN_PLAY' || status == 'PAUSED';
  bool get isFinished => status == 'FINISHED';
}

@freezed
sealed class MatchCompetition with _$MatchCompetition {
  const factory MatchCompetition({
    @Default('') String name,
    String? code,
    String? emblem,
  }) = _MatchCompetition;

  factory MatchCompetition.fromJson(Map<String, dynamic> json) =>
      _$MatchCompetitionFromJson(json);
}

@freezed
sealed class MatchTeam with _$MatchTeam {
  const factory MatchTeam({
    int? id,
    @Default('') String name,
    String? shortName,
    String? crest,
  }) = _MatchTeam;

  factory MatchTeam.fromJson(Map<String, dynamic> json) =>
      _$MatchTeamFromJson(json);
}

@freezed
sealed class MatchScore with _$MatchScore {
  const factory MatchScore({
    // "HOME_TEAM" | "AWAY_TEAM" | "DRAW" | null
    String? winner,
    ScorePair? halfTime,
    ScorePair? fullTime,
  }) = _MatchScore;

  factory MatchScore.fromJson(Map<String, dynamic> json) =>
      _$MatchScoreFromJson(json);
}

@freezed
sealed class ScorePair with _$ScorePair {
  const factory ScorePair({
    int? home,
    int? away,
  }) = _ScorePair;

  factory ScorePair.fromJson(Map<String, dynamic> json) =>
      _$ScorePairFromJson(json);
}
