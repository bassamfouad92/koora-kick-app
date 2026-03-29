// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concave_curve_geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConcaveCurveGeometry {

 double get cutoutWidthRatio; double get cutoutDepthRatio; double get splitRatio;
/// Create a copy of ConcaveCurveGeometry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConcaveCurveGeometryCopyWith<ConcaveCurveGeometry> get copyWith => _$ConcaveCurveGeometryCopyWithImpl<ConcaveCurveGeometry>(this as ConcaveCurveGeometry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConcaveCurveGeometry&&(identical(other.cutoutWidthRatio, cutoutWidthRatio) || other.cutoutWidthRatio == cutoutWidthRatio)&&(identical(other.cutoutDepthRatio, cutoutDepthRatio) || other.cutoutDepthRatio == cutoutDepthRatio)&&(identical(other.splitRatio, splitRatio) || other.splitRatio == splitRatio));
}


@override
int get hashCode => Object.hash(runtimeType,cutoutWidthRatio,cutoutDepthRatio,splitRatio);

@override
String toString() {
  return 'ConcaveCurveGeometry(cutoutWidthRatio: $cutoutWidthRatio, cutoutDepthRatio: $cutoutDepthRatio, splitRatio: $splitRatio)';
}


}

/// @nodoc
abstract mixin class $ConcaveCurveGeometryCopyWith<$Res>  {
  factory $ConcaveCurveGeometryCopyWith(ConcaveCurveGeometry value, $Res Function(ConcaveCurveGeometry) _then) = _$ConcaveCurveGeometryCopyWithImpl;
@useResult
$Res call({
 double cutoutWidthRatio, double cutoutDepthRatio, double splitRatio
});




}
/// @nodoc
class _$ConcaveCurveGeometryCopyWithImpl<$Res>
    implements $ConcaveCurveGeometryCopyWith<$Res> {
  _$ConcaveCurveGeometryCopyWithImpl(this._self, this._then);

  final ConcaveCurveGeometry _self;
  final $Res Function(ConcaveCurveGeometry) _then;

/// Create a copy of ConcaveCurveGeometry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cutoutWidthRatio = null,Object? cutoutDepthRatio = null,Object? splitRatio = null,}) {
  return _then(_self.copyWith(
cutoutWidthRatio: null == cutoutWidthRatio ? _self.cutoutWidthRatio : cutoutWidthRatio // ignore: cast_nullable_to_non_nullable
as double,cutoutDepthRatio: null == cutoutDepthRatio ? _self.cutoutDepthRatio : cutoutDepthRatio // ignore: cast_nullable_to_non_nullable
as double,splitRatio: null == splitRatio ? _self.splitRatio : splitRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ConcaveCurveGeometry].
extension ConcaveCurveGeometryPatterns on ConcaveCurveGeometry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConcaveCurveGeometry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConcaveCurveGeometry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConcaveCurveGeometry value)  $default,){
final _that = this;
switch (_that) {
case _ConcaveCurveGeometry():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConcaveCurveGeometry value)?  $default,){
final _that = this;
switch (_that) {
case _ConcaveCurveGeometry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double cutoutWidthRatio,  double cutoutDepthRatio,  double splitRatio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConcaveCurveGeometry() when $default != null:
return $default(_that.cutoutWidthRatio,_that.cutoutDepthRatio,_that.splitRatio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double cutoutWidthRatio,  double cutoutDepthRatio,  double splitRatio)  $default,) {final _that = this;
switch (_that) {
case _ConcaveCurveGeometry():
return $default(_that.cutoutWidthRatio,_that.cutoutDepthRatio,_that.splitRatio);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double cutoutWidthRatio,  double cutoutDepthRatio,  double splitRatio)?  $default,) {final _that = this;
switch (_that) {
case _ConcaveCurveGeometry() when $default != null:
return $default(_that.cutoutWidthRatio,_that.cutoutDepthRatio,_that.splitRatio);case _:
  return null;

}
}

}

/// @nodoc


class _ConcaveCurveGeometry extends ConcaveCurveGeometry {
  const _ConcaveCurveGeometry({this.cutoutWidthRatio = 0.04, this.cutoutDepthRatio = 0.15, this.splitRatio = 0.72}): super._();
  

@override@JsonKey() final  double cutoutWidthRatio;
@override@JsonKey() final  double cutoutDepthRatio;
@override@JsonKey() final  double splitRatio;

/// Create a copy of ConcaveCurveGeometry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConcaveCurveGeometryCopyWith<_ConcaveCurveGeometry> get copyWith => __$ConcaveCurveGeometryCopyWithImpl<_ConcaveCurveGeometry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConcaveCurveGeometry&&(identical(other.cutoutWidthRatio, cutoutWidthRatio) || other.cutoutWidthRatio == cutoutWidthRatio)&&(identical(other.cutoutDepthRatio, cutoutDepthRatio) || other.cutoutDepthRatio == cutoutDepthRatio)&&(identical(other.splitRatio, splitRatio) || other.splitRatio == splitRatio));
}


@override
int get hashCode => Object.hash(runtimeType,cutoutWidthRatio,cutoutDepthRatio,splitRatio);

@override
String toString() {
  return 'ConcaveCurveGeometry(cutoutWidthRatio: $cutoutWidthRatio, cutoutDepthRatio: $cutoutDepthRatio, splitRatio: $splitRatio)';
}


}

/// @nodoc
abstract mixin class _$ConcaveCurveGeometryCopyWith<$Res> implements $ConcaveCurveGeometryCopyWith<$Res> {
  factory _$ConcaveCurveGeometryCopyWith(_ConcaveCurveGeometry value, $Res Function(_ConcaveCurveGeometry) _then) = __$ConcaveCurveGeometryCopyWithImpl;
@override @useResult
$Res call({
 double cutoutWidthRatio, double cutoutDepthRatio, double splitRatio
});




}
/// @nodoc
class __$ConcaveCurveGeometryCopyWithImpl<$Res>
    implements _$ConcaveCurveGeometryCopyWith<$Res> {
  __$ConcaveCurveGeometryCopyWithImpl(this._self, this._then);

  final _ConcaveCurveGeometry _self;
  final $Res Function(_ConcaveCurveGeometry) _then;

/// Create a copy of ConcaveCurveGeometry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cutoutWidthRatio = null,Object? cutoutDepthRatio = null,Object? splitRatio = null,}) {
  return _then(_ConcaveCurveGeometry(
cutoutWidthRatio: null == cutoutWidthRatio ? _self.cutoutWidthRatio : cutoutWidthRatio // ignore: cast_nullable_to_non_nullable
as double,cutoutDepthRatio: null == cutoutDepthRatio ? _self.cutoutDepthRatio : cutoutDepthRatio // ignore: cast_nullable_to_non_nullable
as double,splitRatio: null == splitRatio ? _self.splitRatio : splitRatio // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
