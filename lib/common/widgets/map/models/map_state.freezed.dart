// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState {

 LatLng get currentLocation; Set<MapMarkerData> get markers; Set<MapRouteData> get polylines; bool get isAutoCentering;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapState&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&const DeepCollectionEquality().equals(other.markers, markers)&&const DeepCollectionEquality().equals(other.polylines, polylines)&&(identical(other.isAutoCentering, isAutoCentering) || other.isAutoCentering == isAutoCentering));
}


@override
int get hashCode => Object.hash(runtimeType,currentLocation,const DeepCollectionEquality().hash(markers),const DeepCollectionEquality().hash(polylines),isAutoCentering);

@override
String toString() {
  return 'MapState(currentLocation: $currentLocation, markers: $markers, polylines: $polylines, isAutoCentering: $isAutoCentering)';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 LatLng currentLocation, Set<MapMarkerData> markers, Set<MapRouteData> polylines, bool isAutoCentering
});


$LatLngCopyWith<$Res> get currentLocation;

}
/// @nodoc
class _$MapStateCopyWithImpl<$Res>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._self, this._then);

  final MapState _self;
  final $Res Function(MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentLocation = null,Object? markers = null,Object? polylines = null,Object? isAutoCentering = null,}) {
  return _then(_self.copyWith(
currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as LatLng,markers: null == markers ? _self.markers : markers // ignore: cast_nullable_to_non_nullable
as Set<MapMarkerData>,polylines: null == polylines ? _self.polylines : polylines // ignore: cast_nullable_to_non_nullable
as Set<MapRouteData>,isAutoCentering: null == isAutoCentering ? _self.isAutoCentering : isAutoCentering // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get currentLocation {
  
  return $LatLngCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapState value)  $default,){
final _that = this;
switch (_that) {
case _MapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapState value)?  $default,){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng currentLocation,  Set<MapMarkerData> markers,  Set<MapRouteData> polylines,  bool isAutoCentering)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.currentLocation,_that.markers,_that.polylines,_that.isAutoCentering);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng currentLocation,  Set<MapMarkerData> markers,  Set<MapRouteData> polylines,  bool isAutoCentering)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.currentLocation,_that.markers,_that.polylines,_that.isAutoCentering);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng currentLocation,  Set<MapMarkerData> markers,  Set<MapRouteData> polylines,  bool isAutoCentering)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.currentLocation,_that.markers,_that.polylines,_that.isAutoCentering);case _:
  return null;

}
}

}

/// @nodoc


class _MapState implements MapState {
  const _MapState({this.currentLocation = defaultLocation, final  Set<MapMarkerData> markers = const {}, final  Set<MapRouteData> polylines = const {}, this.isAutoCentering = true}): _markers = markers,_polylines = polylines;
  

@override@JsonKey() final  LatLng currentLocation;
 final  Set<MapMarkerData> _markers;
@override@JsonKey() Set<MapMarkerData> get markers {
  if (_markers is EqualUnmodifiableSetView) return _markers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_markers);
}

 final  Set<MapRouteData> _polylines;
@override@JsonKey() Set<MapRouteData> get polylines {
  if (_polylines is EqualUnmodifiableSetView) return _polylines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_polylines);
}

@override@JsonKey() final  bool isAutoCentering;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapState&&(identical(other.currentLocation, currentLocation) || other.currentLocation == currentLocation)&&const DeepCollectionEquality().equals(other._markers, _markers)&&const DeepCollectionEquality().equals(other._polylines, _polylines)&&(identical(other.isAutoCentering, isAutoCentering) || other.isAutoCentering == isAutoCentering));
}


@override
int get hashCode => Object.hash(runtimeType,currentLocation,const DeepCollectionEquality().hash(_markers),const DeepCollectionEquality().hash(_polylines),isAutoCentering);

@override
String toString() {
  return 'MapState(currentLocation: $currentLocation, markers: $markers, polylines: $polylines, isAutoCentering: $isAutoCentering)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 LatLng currentLocation, Set<MapMarkerData> markers, Set<MapRouteData> polylines, bool isAutoCentering
});


@override $LatLngCopyWith<$Res> get currentLocation;

}
/// @nodoc
class __$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(this._self, this._then);

  final _MapState _self;
  final $Res Function(_MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentLocation = null,Object? markers = null,Object? polylines = null,Object? isAutoCentering = null,}) {
  return _then(_MapState(
currentLocation: null == currentLocation ? _self.currentLocation : currentLocation // ignore: cast_nullable_to_non_nullable
as LatLng,markers: null == markers ? _self._markers : markers // ignore: cast_nullable_to_non_nullable
as Set<MapMarkerData>,polylines: null == polylines ? _self._polylines : polylines // ignore: cast_nullable_to_non_nullable
as Set<MapRouteData>,isAutoCentering: null == isAutoCentering ? _self.isAutoCentering : isAutoCentering // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get currentLocation {
  
  return $LatLngCopyWith<$Res>(_self.currentLocation, (value) {
    return _then(_self.copyWith(currentLocation: value));
  });
}
}

// dart format on
