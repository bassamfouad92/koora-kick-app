// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_channels_batch_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JoinChannelsBatchResult {

 int get joinedCount; int get skippedCount;
/// Create a copy of JoinChannelsBatchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JoinChannelsBatchResultCopyWith<JoinChannelsBatchResult> get copyWith => _$JoinChannelsBatchResultCopyWithImpl<JoinChannelsBatchResult>(this as JoinChannelsBatchResult, _$identity);

  /// Serializes this JoinChannelsBatchResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JoinChannelsBatchResult&&(identical(other.joinedCount, joinedCount) || other.joinedCount == joinedCount)&&(identical(other.skippedCount, skippedCount) || other.skippedCount == skippedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,joinedCount,skippedCount);

@override
String toString() {
  return 'JoinChannelsBatchResult(joinedCount: $joinedCount, skippedCount: $skippedCount)';
}


}

/// @nodoc
abstract mixin class $JoinChannelsBatchResultCopyWith<$Res>  {
  factory $JoinChannelsBatchResultCopyWith(JoinChannelsBatchResult value, $Res Function(JoinChannelsBatchResult) _then) = _$JoinChannelsBatchResultCopyWithImpl;
@useResult
$Res call({
 int joinedCount, int skippedCount
});




}
/// @nodoc
class _$JoinChannelsBatchResultCopyWithImpl<$Res>
    implements $JoinChannelsBatchResultCopyWith<$Res> {
  _$JoinChannelsBatchResultCopyWithImpl(this._self, this._then);

  final JoinChannelsBatchResult _self;
  final $Res Function(JoinChannelsBatchResult) _then;

/// Create a copy of JoinChannelsBatchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? joinedCount = null,Object? skippedCount = null,}) {
  return _then(_self.copyWith(
joinedCount: null == joinedCount ? _self.joinedCount : joinedCount // ignore: cast_nullable_to_non_nullable
as int,skippedCount: null == skippedCount ? _self.skippedCount : skippedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [JoinChannelsBatchResult].
extension JoinChannelsBatchResultPatterns on JoinChannelsBatchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JoinChannelsBatchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JoinChannelsBatchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JoinChannelsBatchResult value)  $default,){
final _that = this;
switch (_that) {
case _JoinChannelsBatchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JoinChannelsBatchResult value)?  $default,){
final _that = this;
switch (_that) {
case _JoinChannelsBatchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int joinedCount,  int skippedCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JoinChannelsBatchResult() when $default != null:
return $default(_that.joinedCount,_that.skippedCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int joinedCount,  int skippedCount)  $default,) {final _that = this;
switch (_that) {
case _JoinChannelsBatchResult():
return $default(_that.joinedCount,_that.skippedCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int joinedCount,  int skippedCount)?  $default,) {final _that = this;
switch (_that) {
case _JoinChannelsBatchResult() when $default != null:
return $default(_that.joinedCount,_that.skippedCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JoinChannelsBatchResult implements JoinChannelsBatchResult {
  const _JoinChannelsBatchResult({this.joinedCount = 0, this.skippedCount = 0});
  factory _JoinChannelsBatchResult.fromJson(Map<String, dynamic> json) => _$JoinChannelsBatchResultFromJson(json);

@override@JsonKey() final  int joinedCount;
@override@JsonKey() final  int skippedCount;

/// Create a copy of JoinChannelsBatchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JoinChannelsBatchResultCopyWith<_JoinChannelsBatchResult> get copyWith => __$JoinChannelsBatchResultCopyWithImpl<_JoinChannelsBatchResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JoinChannelsBatchResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JoinChannelsBatchResult&&(identical(other.joinedCount, joinedCount) || other.joinedCount == joinedCount)&&(identical(other.skippedCount, skippedCount) || other.skippedCount == skippedCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,joinedCount,skippedCount);

@override
String toString() {
  return 'JoinChannelsBatchResult(joinedCount: $joinedCount, skippedCount: $skippedCount)';
}


}

/// @nodoc
abstract mixin class _$JoinChannelsBatchResultCopyWith<$Res> implements $JoinChannelsBatchResultCopyWith<$Res> {
  factory _$JoinChannelsBatchResultCopyWith(_JoinChannelsBatchResult value, $Res Function(_JoinChannelsBatchResult) _then) = __$JoinChannelsBatchResultCopyWithImpl;
@override @useResult
$Res call({
 int joinedCount, int skippedCount
});




}
/// @nodoc
class __$JoinChannelsBatchResultCopyWithImpl<$Res>
    implements _$JoinChannelsBatchResultCopyWith<$Res> {
  __$JoinChannelsBatchResultCopyWithImpl(this._self, this._then);

  final _JoinChannelsBatchResult _self;
  final $Res Function(_JoinChannelsBatchResult) _then;

/// Create a copy of JoinChannelsBatchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? joinedCount = null,Object? skippedCount = null,}) {
  return _then(_JoinChannelsBatchResult(
joinedCount: null == joinedCount ? _self.joinedCount : joinedCount // ignore: cast_nullable_to_non_nullable
as int,skippedCount: null == skippedCount ? _self.skippedCount : skippedCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
