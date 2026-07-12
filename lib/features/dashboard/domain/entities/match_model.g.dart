// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScoresSnapshot _$ScoresSnapshotFromJson(Map<String, dynamic> json) =>
    _ScoresSnapshot(
      matches:
          (json['matches'] as List<dynamic>?)
              ?.map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      stale: json['stale'] as bool? ?? false,
    );

Map<String, dynamic> _$ScoresSnapshotToJson(_ScoresSnapshot instance) =>
    <String, dynamic>{
      'matches': instance.matches,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'stale': instance.stale,
    };

_MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => _MatchModel(
  id: (json['id'] as num).toInt(),
  competition: json['competition'] == null
      ? null
      : MatchCompetition.fromJson(json['competition'] as Map<String, dynamic>),
  utcDate: json['utcDate'] == null
      ? null
      : DateTime.parse(json['utcDate'] as String),
  status: json['status'] as String? ?? '',
  matchday: (json['matchday'] as num?)?.toInt(),
  stage: json['stage'] as String?,
  homeTeam: json['homeTeam'] == null
      ? null
      : MatchTeam.fromJson(json['homeTeam'] as Map<String, dynamic>),
  awayTeam: json['awayTeam'] == null
      ? null
      : MatchTeam.fromJson(json['awayTeam'] as Map<String, dynamic>),
  score: json['score'] == null
      ? null
      : MatchScore.fromJson(json['score'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MatchModelToJson(_MatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'competition': instance.competition,
      'utcDate': instance.utcDate?.toIso8601String(),
      'status': instance.status,
      'matchday': instance.matchday,
      'stage': instance.stage,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'score': instance.score,
    };

_MatchCompetition _$MatchCompetitionFromJson(Map<String, dynamic> json) =>
    _MatchCompetition(
      name: json['name'] as String? ?? '',
      code: json['code'] as String?,
      emblem: json['emblem'] as String?,
    );

Map<String, dynamic> _$MatchCompetitionToJson(_MatchCompetition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'emblem': instance.emblem,
    };

_MatchTeam _$MatchTeamFromJson(Map<String, dynamic> json) => _MatchTeam(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String? ?? '',
  shortName: json['shortName'] as String?,
  crest: json['crest'] as String?,
);

Map<String, dynamic> _$MatchTeamToJson(_MatchTeam instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortName': instance.shortName,
      'crest': instance.crest,
    };

_MatchScore _$MatchScoreFromJson(Map<String, dynamic> json) => _MatchScore(
  winner: json['winner'] as String?,
  halfTime: json['halfTime'] == null
      ? null
      : ScorePair.fromJson(json['halfTime'] as Map<String, dynamic>),
  fullTime: json['fullTime'] == null
      ? null
      : ScorePair.fromJson(json['fullTime'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MatchScoreToJson(_MatchScore instance) =>
    <String, dynamic>{
      'winner': instance.winner,
      'halfTime': instance.halfTime,
      'fullTime': instance.fullTime,
    };

_ScorePair _$ScorePairFromJson(Map<String, dynamic> json) => _ScorePair(
  home: (json['home'] as num?)?.toInt(),
  away: (json['away'] as num?)?.toInt(),
);

Map<String, dynamic> _$ScorePairToJson(_ScorePair instance) =>
    <String, dynamic>{'home': instance.home, 'away': instance.away};
