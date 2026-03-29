// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station_tracker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StationResult {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StationResult);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StationResult()';
}


}

/// @nodoc
class $StationResultCopyWith<$Res>  {
$StationResultCopyWith(StationResult _, $Res Function(StationResult) __);
}


/// Adds pattern-matching-related methods to [StationResult].
extension StationResultPatterns on StationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StationFound value)?  found,TResult Function( _AllCompleted value)?  allCompleted,TResult Function( _NoStations value)?  noStations,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StationFound() when found != null:
return found(_that);case _AllCompleted() when allCompleted != null:
return allCompleted(_that);case _NoStations() when noStations != null:
return noStations(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StationFound value)  found,required TResult Function( _AllCompleted value)  allCompleted,required TResult Function( _NoStations value)  noStations,}){
final _that = this;
switch (_that) {
case _StationFound():
return found(_that);case _AllCompleted():
return allCompleted(_that);case _NoStations():
return noStations(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StationFound value)?  found,TResult? Function( _AllCompleted value)?  allCompleted,TResult? Function( _NoStations value)?  noStations,}){
final _that = this;
switch (_that) {
case _StationFound() when found != null:
return found(_that);case _AllCompleted() when allCompleted != null:
return allCompleted(_that);case _NoStations() when noStations != null:
return noStations(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LatLng location)?  found,TResult Function()?  allCompleted,TResult Function()?  noStations,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StationFound() when found != null:
return found(_that.location);case _AllCompleted() when allCompleted != null:
return allCompleted();case _NoStations() when noStations != null:
return noStations();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LatLng location)  found,required TResult Function()  allCompleted,required TResult Function()  noStations,}) {final _that = this;
switch (_that) {
case _StationFound():
return found(_that.location);case _AllCompleted():
return allCompleted();case _NoStations():
return noStations();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LatLng location)?  found,TResult? Function()?  allCompleted,TResult? Function()?  noStations,}) {final _that = this;
switch (_that) {
case _StationFound() when found != null:
return found(_that.location);case _AllCompleted() when allCompleted != null:
return allCompleted();case _NoStations() when noStations != null:
return noStations();case _:
  return null;

}
}

}

/// @nodoc


class _StationFound implements StationResult {
  const _StationFound({required this.location});
  

 final  LatLng location;

/// Create a copy of StationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StationFoundCopyWith<_StationFound> get copyWith => __$StationFoundCopyWithImpl<_StationFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StationFound&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'StationResult.found(location: $location)';
}


}

/// @nodoc
abstract mixin class _$StationFoundCopyWith<$Res> implements $StationResultCopyWith<$Res> {
  factory _$StationFoundCopyWith(_StationFound value, $Res Function(_StationFound) _then) = __$StationFoundCopyWithImpl;
@useResult
$Res call({
 LatLng location
});


$LatLngCopyWith<$Res> get location;

}
/// @nodoc
class __$StationFoundCopyWithImpl<$Res>
    implements _$StationFoundCopyWith<$Res> {
  __$StationFoundCopyWithImpl(this._self, this._then);

  final _StationFound _self;
  final $Res Function(_StationFound) _then;

/// Create a copy of StationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(_StationFound(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LatLng,
  ));
}

/// Create a copy of StationResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get location {
  
  return $LatLngCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

/// @nodoc


class _AllCompleted implements StationResult {
  const _AllCompleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllCompleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StationResult.allCompleted()';
}


}




/// @nodoc


class _NoStations implements StationResult {
  const _NoStations();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoStations);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StationResult.noStations()';
}


}




// dart format on
