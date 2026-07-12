// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScoresSnapshot {

 List<MatchModel> get matches; DateTime? get lastUpdated;// true = upstream API failed, serving last known data.
 bool get stale;
/// Create a copy of ScoresSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScoresSnapshotCopyWith<ScoresSnapshot> get copyWith => _$ScoresSnapshotCopyWithImpl<ScoresSnapshot>(this as ScoresSnapshot, _$identity);

  /// Serializes this ScoresSnapshot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoresSnapshot&&const DeepCollectionEquality().equals(other.matches, matches)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.stale, stale) || other.stale == stale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(matches),lastUpdated,stale);

@override
String toString() {
  return 'ScoresSnapshot(matches: $matches, lastUpdated: $lastUpdated, stale: $stale)';
}


}

/// @nodoc
abstract mixin class $ScoresSnapshotCopyWith<$Res>  {
  factory $ScoresSnapshotCopyWith(ScoresSnapshot value, $Res Function(ScoresSnapshot) _then) = _$ScoresSnapshotCopyWithImpl;
@useResult
$Res call({
 List<MatchModel> matches, DateTime? lastUpdated, bool stale
});




}
/// @nodoc
class _$ScoresSnapshotCopyWithImpl<$Res>
    implements $ScoresSnapshotCopyWith<$Res> {
  _$ScoresSnapshotCopyWithImpl(this._self, this._then);

  final ScoresSnapshot _self;
  final $Res Function(ScoresSnapshot) _then;

/// Create a copy of ScoresSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matches = null,Object? lastUpdated = freezed,Object? stale = null,}) {
  return _then(_self.copyWith(
matches: null == matches ? _self.matches : matches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,stale: null == stale ? _self.stale : stale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ScoresSnapshot].
extension ScoresSnapshotPatterns on ScoresSnapshot {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScoresSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScoresSnapshot() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScoresSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _ScoresSnapshot():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScoresSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _ScoresSnapshot() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MatchModel> matches,  DateTime? lastUpdated,  bool stale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScoresSnapshot() when $default != null:
return $default(_that.matches,_that.lastUpdated,_that.stale);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MatchModel> matches,  DateTime? lastUpdated,  bool stale)  $default,) {final _that = this;
switch (_that) {
case _ScoresSnapshot():
return $default(_that.matches,_that.lastUpdated,_that.stale);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MatchModel> matches,  DateTime? lastUpdated,  bool stale)?  $default,) {final _that = this;
switch (_that) {
case _ScoresSnapshot() when $default != null:
return $default(_that.matches,_that.lastUpdated,_that.stale);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScoresSnapshot implements ScoresSnapshot {
  const _ScoresSnapshot({final  List<MatchModel> matches = const [], this.lastUpdated, this.stale = false}): _matches = matches;
  factory _ScoresSnapshot.fromJson(Map<String, dynamic> json) => _$ScoresSnapshotFromJson(json);

 final  List<MatchModel> _matches;
@override@JsonKey() List<MatchModel> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
}

@override final  DateTime? lastUpdated;
// true = upstream API failed, serving last known data.
@override@JsonKey() final  bool stale;

/// Create a copy of ScoresSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScoresSnapshotCopyWith<_ScoresSnapshot> get copyWith => __$ScoresSnapshotCopyWithImpl<_ScoresSnapshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScoresSnapshotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScoresSnapshot&&const DeepCollectionEquality().equals(other._matches, _matches)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.stale, stale) || other.stale == stale));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_matches),lastUpdated,stale);

@override
String toString() {
  return 'ScoresSnapshot(matches: $matches, lastUpdated: $lastUpdated, stale: $stale)';
}


}

/// @nodoc
abstract mixin class _$ScoresSnapshotCopyWith<$Res> implements $ScoresSnapshotCopyWith<$Res> {
  factory _$ScoresSnapshotCopyWith(_ScoresSnapshot value, $Res Function(_ScoresSnapshot) _then) = __$ScoresSnapshotCopyWithImpl;
@override @useResult
$Res call({
 List<MatchModel> matches, DateTime? lastUpdated, bool stale
});




}
/// @nodoc
class __$ScoresSnapshotCopyWithImpl<$Res>
    implements _$ScoresSnapshotCopyWith<$Res> {
  __$ScoresSnapshotCopyWithImpl(this._self, this._then);

  final _ScoresSnapshot _self;
  final $Res Function(_ScoresSnapshot) _then;

/// Create a copy of ScoresSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matches = null,Object? lastUpdated = freezed,Object? stale = null,}) {
  return _then(_ScoresSnapshot(
matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,lastUpdated: freezed == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,stale: null == stale ? _self.stale : stale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MatchModel {

 int get id; MatchCompetition? get competition; DateTime? get utcDate;// SCHEDULED | TIMED | IN_PLAY | PAUSED | FINISHED | SUSPENDED |
// POSTPONED | CANCELLED | AWARDED
 String get status; int? get matchday; String? get stage; MatchTeam? get homeTeam; MatchTeam? get awayTeam; MatchScore? get score;
/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchModelCopyWith<MatchModel> get copyWith => _$MatchModelCopyWithImpl<MatchModel>(this as MatchModel, _$identity);

  /// Serializes this MatchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.competition, competition) || other.competition == competition)&&(identical(other.utcDate, utcDate) || other.utcDate == utcDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.matchday, matchday) || other.matchday == matchday)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.homeTeam, homeTeam) || other.homeTeam == homeTeam)&&(identical(other.awayTeam, awayTeam) || other.awayTeam == awayTeam)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,competition,utcDate,status,matchday,stage,homeTeam,awayTeam,score);

@override
String toString() {
  return 'MatchModel(id: $id, competition: $competition, utcDate: $utcDate, status: $status, matchday: $matchday, stage: $stage, homeTeam: $homeTeam, awayTeam: $awayTeam, score: $score)';
}


}

/// @nodoc
abstract mixin class $MatchModelCopyWith<$Res>  {
  factory $MatchModelCopyWith(MatchModel value, $Res Function(MatchModel) _then) = _$MatchModelCopyWithImpl;
@useResult
$Res call({
 int id, MatchCompetition? competition, DateTime? utcDate, String status, int? matchday, String? stage, MatchTeam? homeTeam, MatchTeam? awayTeam, MatchScore? score
});


$MatchCompetitionCopyWith<$Res>? get competition;$MatchTeamCopyWith<$Res>? get homeTeam;$MatchTeamCopyWith<$Res>? get awayTeam;$MatchScoreCopyWith<$Res>? get score;

}
/// @nodoc
class _$MatchModelCopyWithImpl<$Res>
    implements $MatchModelCopyWith<$Res> {
  _$MatchModelCopyWithImpl(this._self, this._then);

  final MatchModel _self;
  final $Res Function(MatchModel) _then;

/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? competition = freezed,Object? utcDate = freezed,Object? status = null,Object? matchday = freezed,Object? stage = freezed,Object? homeTeam = freezed,Object? awayTeam = freezed,Object? score = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,competition: freezed == competition ? _self.competition : competition // ignore: cast_nullable_to_non_nullable
as MatchCompetition?,utcDate: freezed == utcDate ? _self.utcDate : utcDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,matchday: freezed == matchday ? _self.matchday : matchday // ignore: cast_nullable_to_non_nullable
as int?,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String?,homeTeam: freezed == homeTeam ? _self.homeTeam : homeTeam // ignore: cast_nullable_to_non_nullable
as MatchTeam?,awayTeam: freezed == awayTeam ? _self.awayTeam : awayTeam // ignore: cast_nullable_to_non_nullable
as MatchTeam?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as MatchScore?,
  ));
}
/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchCompetitionCopyWith<$Res>? get competition {
    if (_self.competition == null) {
    return null;
  }

  return $MatchCompetitionCopyWith<$Res>(_self.competition!, (value) {
    return _then(_self.copyWith(competition: value));
  });
}/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchTeamCopyWith<$Res>? get homeTeam {
    if (_self.homeTeam == null) {
    return null;
  }

  return $MatchTeamCopyWith<$Res>(_self.homeTeam!, (value) {
    return _then(_self.copyWith(homeTeam: value));
  });
}/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchTeamCopyWith<$Res>? get awayTeam {
    if (_self.awayTeam == null) {
    return null;
  }

  return $MatchTeamCopyWith<$Res>(_self.awayTeam!, (value) {
    return _then(_self.copyWith(awayTeam: value));
  });
}/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchScoreCopyWith<$Res>? get score {
    if (_self.score == null) {
    return null;
  }

  return $MatchScoreCopyWith<$Res>(_self.score!, (value) {
    return _then(_self.copyWith(score: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchModel].
extension MatchModelPatterns on MatchModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchModel value)  $default,){
final _that = this;
switch (_that) {
case _MatchModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchModel value)?  $default,){
final _that = this;
switch (_that) {
case _MatchModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  MatchCompetition? competition,  DateTime? utcDate,  String status,  int? matchday,  String? stage,  MatchTeam? homeTeam,  MatchTeam? awayTeam,  MatchScore? score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchModel() when $default != null:
return $default(_that.id,_that.competition,_that.utcDate,_that.status,_that.matchday,_that.stage,_that.homeTeam,_that.awayTeam,_that.score);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  MatchCompetition? competition,  DateTime? utcDate,  String status,  int? matchday,  String? stage,  MatchTeam? homeTeam,  MatchTeam? awayTeam,  MatchScore? score)  $default,) {final _that = this;
switch (_that) {
case _MatchModel():
return $default(_that.id,_that.competition,_that.utcDate,_that.status,_that.matchday,_that.stage,_that.homeTeam,_that.awayTeam,_that.score);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  MatchCompetition? competition,  DateTime? utcDate,  String status,  int? matchday,  String? stage,  MatchTeam? homeTeam,  MatchTeam? awayTeam,  MatchScore? score)?  $default,) {final _that = this;
switch (_that) {
case _MatchModel() when $default != null:
return $default(_that.id,_that.competition,_that.utcDate,_that.status,_that.matchday,_that.stage,_that.homeTeam,_that.awayTeam,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchModel extends MatchModel {
  const _MatchModel({required this.id, this.competition, this.utcDate, this.status = '', this.matchday, this.stage, this.homeTeam, this.awayTeam, this.score}): super._();
  factory _MatchModel.fromJson(Map<String, dynamic> json) => _$MatchModelFromJson(json);

@override final  int id;
@override final  MatchCompetition? competition;
@override final  DateTime? utcDate;
// SCHEDULED | TIMED | IN_PLAY | PAUSED | FINISHED | SUSPENDED |
// POSTPONED | CANCELLED | AWARDED
@override@JsonKey() final  String status;
@override final  int? matchday;
@override final  String? stage;
@override final  MatchTeam? homeTeam;
@override final  MatchTeam? awayTeam;
@override final  MatchScore? score;

/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchModelCopyWith<_MatchModel> get copyWith => __$MatchModelCopyWithImpl<_MatchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.competition, competition) || other.competition == competition)&&(identical(other.utcDate, utcDate) || other.utcDate == utcDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.matchday, matchday) || other.matchday == matchday)&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.homeTeam, homeTeam) || other.homeTeam == homeTeam)&&(identical(other.awayTeam, awayTeam) || other.awayTeam == awayTeam)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,competition,utcDate,status,matchday,stage,homeTeam,awayTeam,score);

@override
String toString() {
  return 'MatchModel(id: $id, competition: $competition, utcDate: $utcDate, status: $status, matchday: $matchday, stage: $stage, homeTeam: $homeTeam, awayTeam: $awayTeam, score: $score)';
}


}

/// @nodoc
abstract mixin class _$MatchModelCopyWith<$Res> implements $MatchModelCopyWith<$Res> {
  factory _$MatchModelCopyWith(_MatchModel value, $Res Function(_MatchModel) _then) = __$MatchModelCopyWithImpl;
@override @useResult
$Res call({
 int id, MatchCompetition? competition, DateTime? utcDate, String status, int? matchday, String? stage, MatchTeam? homeTeam, MatchTeam? awayTeam, MatchScore? score
});


@override $MatchCompetitionCopyWith<$Res>? get competition;@override $MatchTeamCopyWith<$Res>? get homeTeam;@override $MatchTeamCopyWith<$Res>? get awayTeam;@override $MatchScoreCopyWith<$Res>? get score;

}
/// @nodoc
class __$MatchModelCopyWithImpl<$Res>
    implements _$MatchModelCopyWith<$Res> {
  __$MatchModelCopyWithImpl(this._self, this._then);

  final _MatchModel _self;
  final $Res Function(_MatchModel) _then;

/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? competition = freezed,Object? utcDate = freezed,Object? status = null,Object? matchday = freezed,Object? stage = freezed,Object? homeTeam = freezed,Object? awayTeam = freezed,Object? score = freezed,}) {
  return _then(_MatchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,competition: freezed == competition ? _self.competition : competition // ignore: cast_nullable_to_non_nullable
as MatchCompetition?,utcDate: freezed == utcDate ? _self.utcDate : utcDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,matchday: freezed == matchday ? _self.matchday : matchday // ignore: cast_nullable_to_non_nullable
as int?,stage: freezed == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as String?,homeTeam: freezed == homeTeam ? _self.homeTeam : homeTeam // ignore: cast_nullable_to_non_nullable
as MatchTeam?,awayTeam: freezed == awayTeam ? _self.awayTeam : awayTeam // ignore: cast_nullable_to_non_nullable
as MatchTeam?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as MatchScore?,
  ));
}

/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchCompetitionCopyWith<$Res>? get competition {
    if (_self.competition == null) {
    return null;
  }

  return $MatchCompetitionCopyWith<$Res>(_self.competition!, (value) {
    return _then(_self.copyWith(competition: value));
  });
}/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchTeamCopyWith<$Res>? get homeTeam {
    if (_self.homeTeam == null) {
    return null;
  }

  return $MatchTeamCopyWith<$Res>(_self.homeTeam!, (value) {
    return _then(_self.copyWith(homeTeam: value));
  });
}/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchTeamCopyWith<$Res>? get awayTeam {
    if (_self.awayTeam == null) {
    return null;
  }

  return $MatchTeamCopyWith<$Res>(_self.awayTeam!, (value) {
    return _then(_self.copyWith(awayTeam: value));
  });
}/// Create a copy of MatchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchScoreCopyWith<$Res>? get score {
    if (_self.score == null) {
    return null;
  }

  return $MatchScoreCopyWith<$Res>(_self.score!, (value) {
    return _then(_self.copyWith(score: value));
  });
}
}


/// @nodoc
mixin _$MatchCompetition {

 String get name; String? get code; String? get emblem;
/// Create a copy of MatchCompetition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchCompetitionCopyWith<MatchCompetition> get copyWith => _$MatchCompetitionCopyWithImpl<MatchCompetition>(this as MatchCompetition, _$identity);

  /// Serializes this MatchCompetition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchCompetition&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.emblem, emblem) || other.emblem == emblem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,emblem);

@override
String toString() {
  return 'MatchCompetition(name: $name, code: $code, emblem: $emblem)';
}


}

/// @nodoc
abstract mixin class $MatchCompetitionCopyWith<$Res>  {
  factory $MatchCompetitionCopyWith(MatchCompetition value, $Res Function(MatchCompetition) _then) = _$MatchCompetitionCopyWithImpl;
@useResult
$Res call({
 String name, String? code, String? emblem
});




}
/// @nodoc
class _$MatchCompetitionCopyWithImpl<$Res>
    implements $MatchCompetitionCopyWith<$Res> {
  _$MatchCompetitionCopyWithImpl(this._self, this._then);

  final MatchCompetition _self;
  final $Res Function(MatchCompetition) _then;

/// Create a copy of MatchCompetition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = freezed,Object? emblem = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,emblem: freezed == emblem ? _self.emblem : emblem // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchCompetition].
extension MatchCompetitionPatterns on MatchCompetition {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchCompetition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchCompetition() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchCompetition value)  $default,){
final _that = this;
switch (_that) {
case _MatchCompetition():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchCompetition value)?  $default,){
final _that = this;
switch (_that) {
case _MatchCompetition() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? code,  String? emblem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchCompetition() when $default != null:
return $default(_that.name,_that.code,_that.emblem);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? code,  String? emblem)  $default,) {final _that = this;
switch (_that) {
case _MatchCompetition():
return $default(_that.name,_that.code,_that.emblem);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? code,  String? emblem)?  $default,) {final _that = this;
switch (_that) {
case _MatchCompetition() when $default != null:
return $default(_that.name,_that.code,_that.emblem);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchCompetition implements MatchCompetition {
  const _MatchCompetition({this.name = '', this.code, this.emblem});
  factory _MatchCompetition.fromJson(Map<String, dynamic> json) => _$MatchCompetitionFromJson(json);

@override@JsonKey() final  String name;
@override final  String? code;
@override final  String? emblem;

/// Create a copy of MatchCompetition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchCompetitionCopyWith<_MatchCompetition> get copyWith => __$MatchCompetitionCopyWithImpl<_MatchCompetition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchCompetitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchCompetition&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.emblem, emblem) || other.emblem == emblem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,emblem);

@override
String toString() {
  return 'MatchCompetition(name: $name, code: $code, emblem: $emblem)';
}


}

/// @nodoc
abstract mixin class _$MatchCompetitionCopyWith<$Res> implements $MatchCompetitionCopyWith<$Res> {
  factory _$MatchCompetitionCopyWith(_MatchCompetition value, $Res Function(_MatchCompetition) _then) = __$MatchCompetitionCopyWithImpl;
@override @useResult
$Res call({
 String name, String? code, String? emblem
});




}
/// @nodoc
class __$MatchCompetitionCopyWithImpl<$Res>
    implements _$MatchCompetitionCopyWith<$Res> {
  __$MatchCompetitionCopyWithImpl(this._self, this._then);

  final _MatchCompetition _self;
  final $Res Function(_MatchCompetition) _then;

/// Create a copy of MatchCompetition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = freezed,Object? emblem = freezed,}) {
  return _then(_MatchCompetition(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,emblem: freezed == emblem ? _self.emblem : emblem // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchTeam {

 int? get id; String get name; String? get shortName; String? get crest;
/// Create a copy of MatchTeam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchTeamCopyWith<MatchTeam> get copyWith => _$MatchTeamCopyWithImpl<MatchTeam>(this as MatchTeam, _$identity);

  /// Serializes this MatchTeam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchTeam&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.crest, crest) || other.crest == crest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,shortName,crest);

@override
String toString() {
  return 'MatchTeam(id: $id, name: $name, shortName: $shortName, crest: $crest)';
}


}

/// @nodoc
abstract mixin class $MatchTeamCopyWith<$Res>  {
  factory $MatchTeamCopyWith(MatchTeam value, $Res Function(MatchTeam) _then) = _$MatchTeamCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String? shortName, String? crest
});




}
/// @nodoc
class _$MatchTeamCopyWithImpl<$Res>
    implements $MatchTeamCopyWith<$Res> {
  _$MatchTeamCopyWithImpl(this._self, this._then);

  final MatchTeam _self;
  final $Res Function(MatchTeam) _then;

/// Create a copy of MatchTeam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? shortName = freezed,Object? crest = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,crest: freezed == crest ? _self.crest : crest // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchTeam].
extension MatchTeamPatterns on MatchTeam {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchTeam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchTeam() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchTeam value)  $default,){
final _that = this;
switch (_that) {
case _MatchTeam():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchTeam value)?  $default,){
final _that = this;
switch (_that) {
case _MatchTeam() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String? shortName,  String? crest)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchTeam() when $default != null:
return $default(_that.id,_that.name,_that.shortName,_that.crest);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String? shortName,  String? crest)  $default,) {final _that = this;
switch (_that) {
case _MatchTeam():
return $default(_that.id,_that.name,_that.shortName,_that.crest);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String? shortName,  String? crest)?  $default,) {final _that = this;
switch (_that) {
case _MatchTeam() when $default != null:
return $default(_that.id,_that.name,_that.shortName,_that.crest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchTeam implements MatchTeam {
  const _MatchTeam({this.id, this.name = '', this.shortName, this.crest});
  factory _MatchTeam.fromJson(Map<String, dynamic> json) => _$MatchTeamFromJson(json);

@override final  int? id;
@override@JsonKey() final  String name;
@override final  String? shortName;
@override final  String? crest;

/// Create a copy of MatchTeam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchTeamCopyWith<_MatchTeam> get copyWith => __$MatchTeamCopyWithImpl<_MatchTeam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchTeamToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchTeam&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.crest, crest) || other.crest == crest));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,shortName,crest);

@override
String toString() {
  return 'MatchTeam(id: $id, name: $name, shortName: $shortName, crest: $crest)';
}


}

/// @nodoc
abstract mixin class _$MatchTeamCopyWith<$Res> implements $MatchTeamCopyWith<$Res> {
  factory _$MatchTeamCopyWith(_MatchTeam value, $Res Function(_MatchTeam) _then) = __$MatchTeamCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String? shortName, String? crest
});




}
/// @nodoc
class __$MatchTeamCopyWithImpl<$Res>
    implements _$MatchTeamCopyWith<$Res> {
  __$MatchTeamCopyWithImpl(this._self, this._then);

  final _MatchTeam _self;
  final $Res Function(_MatchTeam) _then;

/// Create a copy of MatchTeam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? shortName = freezed,Object? crest = freezed,}) {
  return _then(_MatchTeam(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,crest: freezed == crest ? _self.crest : crest // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MatchScore {

// "HOME_TEAM" | "AWAY_TEAM" | "DRAW" | null
 String? get winner; ScorePair? get halfTime; ScorePair? get fullTime;
/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchScoreCopyWith<MatchScore> get copyWith => _$MatchScoreCopyWithImpl<MatchScore>(this as MatchScore, _$identity);

  /// Serializes this MatchScore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchScore&&(identical(other.winner, winner) || other.winner == winner)&&(identical(other.halfTime, halfTime) || other.halfTime == halfTime)&&(identical(other.fullTime, fullTime) || other.fullTime == fullTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,winner,halfTime,fullTime);

@override
String toString() {
  return 'MatchScore(winner: $winner, halfTime: $halfTime, fullTime: $fullTime)';
}


}

/// @nodoc
abstract mixin class $MatchScoreCopyWith<$Res>  {
  factory $MatchScoreCopyWith(MatchScore value, $Res Function(MatchScore) _then) = _$MatchScoreCopyWithImpl;
@useResult
$Res call({
 String? winner, ScorePair? halfTime, ScorePair? fullTime
});


$ScorePairCopyWith<$Res>? get halfTime;$ScorePairCopyWith<$Res>? get fullTime;

}
/// @nodoc
class _$MatchScoreCopyWithImpl<$Res>
    implements $MatchScoreCopyWith<$Res> {
  _$MatchScoreCopyWithImpl(this._self, this._then);

  final MatchScore _self;
  final $Res Function(MatchScore) _then;

/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? winner = freezed,Object? halfTime = freezed,Object? fullTime = freezed,}) {
  return _then(_self.copyWith(
winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,halfTime: freezed == halfTime ? _self.halfTime : halfTime // ignore: cast_nullable_to_non_nullable
as ScorePair?,fullTime: freezed == fullTime ? _self.fullTime : fullTime // ignore: cast_nullable_to_non_nullable
as ScorePair?,
  ));
}
/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScorePairCopyWith<$Res>? get halfTime {
    if (_self.halfTime == null) {
    return null;
  }

  return $ScorePairCopyWith<$Res>(_self.halfTime!, (value) {
    return _then(_self.copyWith(halfTime: value));
  });
}/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScorePairCopyWith<$Res>? get fullTime {
    if (_self.fullTime == null) {
    return null;
  }

  return $ScorePairCopyWith<$Res>(_self.fullTime!, (value) {
    return _then(_self.copyWith(fullTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [MatchScore].
extension MatchScorePatterns on MatchScore {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchScore() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchScore value)  $default,){
final _that = this;
switch (_that) {
case _MatchScore():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchScore value)?  $default,){
final _that = this;
switch (_that) {
case _MatchScore() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? winner,  ScorePair? halfTime,  ScorePair? fullTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchScore() when $default != null:
return $default(_that.winner,_that.halfTime,_that.fullTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? winner,  ScorePair? halfTime,  ScorePair? fullTime)  $default,) {final _that = this;
switch (_that) {
case _MatchScore():
return $default(_that.winner,_that.halfTime,_that.fullTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? winner,  ScorePair? halfTime,  ScorePair? fullTime)?  $default,) {final _that = this;
switch (_that) {
case _MatchScore() when $default != null:
return $default(_that.winner,_that.halfTime,_that.fullTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchScore implements MatchScore {
  const _MatchScore({this.winner, this.halfTime, this.fullTime});
  factory _MatchScore.fromJson(Map<String, dynamic> json) => _$MatchScoreFromJson(json);

// "HOME_TEAM" | "AWAY_TEAM" | "DRAW" | null
@override final  String? winner;
@override final  ScorePair? halfTime;
@override final  ScorePair? fullTime;

/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchScoreCopyWith<_MatchScore> get copyWith => __$MatchScoreCopyWithImpl<_MatchScore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchScoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchScore&&(identical(other.winner, winner) || other.winner == winner)&&(identical(other.halfTime, halfTime) || other.halfTime == halfTime)&&(identical(other.fullTime, fullTime) || other.fullTime == fullTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,winner,halfTime,fullTime);

@override
String toString() {
  return 'MatchScore(winner: $winner, halfTime: $halfTime, fullTime: $fullTime)';
}


}

/// @nodoc
abstract mixin class _$MatchScoreCopyWith<$Res> implements $MatchScoreCopyWith<$Res> {
  factory _$MatchScoreCopyWith(_MatchScore value, $Res Function(_MatchScore) _then) = __$MatchScoreCopyWithImpl;
@override @useResult
$Res call({
 String? winner, ScorePair? halfTime, ScorePair? fullTime
});


@override $ScorePairCopyWith<$Res>? get halfTime;@override $ScorePairCopyWith<$Res>? get fullTime;

}
/// @nodoc
class __$MatchScoreCopyWithImpl<$Res>
    implements _$MatchScoreCopyWith<$Res> {
  __$MatchScoreCopyWithImpl(this._self, this._then);

  final _MatchScore _self;
  final $Res Function(_MatchScore) _then;

/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? winner = freezed,Object? halfTime = freezed,Object? fullTime = freezed,}) {
  return _then(_MatchScore(
winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as String?,halfTime: freezed == halfTime ? _self.halfTime : halfTime // ignore: cast_nullable_to_non_nullable
as ScorePair?,fullTime: freezed == fullTime ? _self.fullTime : fullTime // ignore: cast_nullable_to_non_nullable
as ScorePair?,
  ));
}

/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScorePairCopyWith<$Res>? get halfTime {
    if (_self.halfTime == null) {
    return null;
  }

  return $ScorePairCopyWith<$Res>(_self.halfTime!, (value) {
    return _then(_self.copyWith(halfTime: value));
  });
}/// Create a copy of MatchScore
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScorePairCopyWith<$Res>? get fullTime {
    if (_self.fullTime == null) {
    return null;
  }

  return $ScorePairCopyWith<$Res>(_self.fullTime!, (value) {
    return _then(_self.copyWith(fullTime: value));
  });
}
}


/// @nodoc
mixin _$ScorePair {

 int? get home; int? get away;
/// Create a copy of ScorePair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScorePairCopyWith<ScorePair> get copyWith => _$ScorePairCopyWithImpl<ScorePair>(this as ScorePair, _$identity);

  /// Serializes this ScorePair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScorePair&&(identical(other.home, home) || other.home == home)&&(identical(other.away, away) || other.away == away));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,home,away);

@override
String toString() {
  return 'ScorePair(home: $home, away: $away)';
}


}

/// @nodoc
abstract mixin class $ScorePairCopyWith<$Res>  {
  factory $ScorePairCopyWith(ScorePair value, $Res Function(ScorePair) _then) = _$ScorePairCopyWithImpl;
@useResult
$Res call({
 int? home, int? away
});




}
/// @nodoc
class _$ScorePairCopyWithImpl<$Res>
    implements $ScorePairCopyWith<$Res> {
  _$ScorePairCopyWithImpl(this._self, this._then);

  final ScorePair _self;
  final $Res Function(ScorePair) _then;

/// Create a copy of ScorePair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? home = freezed,Object? away = freezed,}) {
  return _then(_self.copyWith(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as int?,away: freezed == away ? _self.away : away // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScorePair].
extension ScorePairPatterns on ScorePair {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScorePair value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScorePair() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScorePair value)  $default,){
final _that = this;
switch (_that) {
case _ScorePair():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScorePair value)?  $default,){
final _that = this;
switch (_that) {
case _ScorePair() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? home,  int? away)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScorePair() when $default != null:
return $default(_that.home,_that.away);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? home,  int? away)  $default,) {final _that = this;
switch (_that) {
case _ScorePair():
return $default(_that.home,_that.away);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? home,  int? away)?  $default,) {final _that = this;
switch (_that) {
case _ScorePair() when $default != null:
return $default(_that.home,_that.away);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScorePair implements ScorePair {
  const _ScorePair({this.home, this.away});
  factory _ScorePair.fromJson(Map<String, dynamic> json) => _$ScorePairFromJson(json);

@override final  int? home;
@override final  int? away;

/// Create a copy of ScorePair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScorePairCopyWith<_ScorePair> get copyWith => __$ScorePairCopyWithImpl<_ScorePair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScorePairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScorePair&&(identical(other.home, home) || other.home == home)&&(identical(other.away, away) || other.away == away));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,home,away);

@override
String toString() {
  return 'ScorePair(home: $home, away: $away)';
}


}

/// @nodoc
abstract mixin class _$ScorePairCopyWith<$Res> implements $ScorePairCopyWith<$Res> {
  factory _$ScorePairCopyWith(_ScorePair value, $Res Function(_ScorePair) _then) = __$ScorePairCopyWithImpl;
@override @useResult
$Res call({
 int? home, int? away
});




}
/// @nodoc
class __$ScorePairCopyWithImpl<$Res>
    implements _$ScorePairCopyWith<$Res> {
  __$ScorePairCopyWithImpl(this._self, this._then);

  final _ScorePair _self;
  final $Res Function(_ScorePair) _then;

/// Create a copy of ScorePair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? home = freezed,Object? away = freezed,}) {
  return _then(_ScorePair(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as int?,away: freezed == away ? _self.away : away // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
