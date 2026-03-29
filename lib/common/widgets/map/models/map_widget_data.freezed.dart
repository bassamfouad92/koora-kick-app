// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_widget_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapWidgetData {

 MapView get mapView; LatLng? get routeOrigin; LatLng? get routeDestination; RouteColor? get routeColor; bool? get isTracking; List<LatLng>? get navigationStations; MapMarkerData? get originMarker; MapMarkerData? get destinationMarker; List<MapMarkerData>? get middleMarkers;
/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapWidgetDataCopyWith<MapWidgetData> get copyWith => _$MapWidgetDataCopyWithImpl<MapWidgetData>(this as MapWidgetData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapWidgetData&&(identical(other.mapView, mapView) || other.mapView == mapView)&&(identical(other.routeOrigin, routeOrigin) || other.routeOrigin == routeOrigin)&&(identical(other.routeDestination, routeDestination) || other.routeDestination == routeDestination)&&(identical(other.routeColor, routeColor) || other.routeColor == routeColor)&&(identical(other.isTracking, isTracking) || other.isTracking == isTracking)&&const DeepCollectionEquality().equals(other.navigationStations, navigationStations)&&(identical(other.originMarker, originMarker) || other.originMarker == originMarker)&&(identical(other.destinationMarker, destinationMarker) || other.destinationMarker == destinationMarker)&&const DeepCollectionEquality().equals(other.middleMarkers, middleMarkers));
}


@override
int get hashCode => Object.hash(runtimeType,mapView,routeOrigin,routeDestination,routeColor,isTracking,const DeepCollectionEquality().hash(navigationStations),originMarker,destinationMarker,const DeepCollectionEquality().hash(middleMarkers));

@override
String toString() {
  return 'MapWidgetData(mapView: $mapView, routeOrigin: $routeOrigin, routeDestination: $routeDestination, routeColor: $routeColor, isTracking: $isTracking, navigationStations: $navigationStations, originMarker: $originMarker, destinationMarker: $destinationMarker, middleMarkers: $middleMarkers)';
}


}

/// @nodoc
abstract mixin class $MapWidgetDataCopyWith<$Res>  {
  factory $MapWidgetDataCopyWith(MapWidgetData value, $Res Function(MapWidgetData) _then) = _$MapWidgetDataCopyWithImpl;
@useResult
$Res call({
 MapView mapView, LatLng? routeOrigin, LatLng? routeDestination, RouteColor? routeColor, bool? isTracking, List<LatLng>? navigationStations, MapMarkerData? originMarker, MapMarkerData? destinationMarker, List<MapMarkerData>? middleMarkers
});


$LatLngCopyWith<$Res>? get routeOrigin;$LatLngCopyWith<$Res>? get routeDestination;$MapMarkerDataCopyWith<$Res>? get originMarker;$MapMarkerDataCopyWith<$Res>? get destinationMarker;

}
/// @nodoc
class _$MapWidgetDataCopyWithImpl<$Res>
    implements $MapWidgetDataCopyWith<$Res> {
  _$MapWidgetDataCopyWithImpl(this._self, this._then);

  final MapWidgetData _self;
  final $Res Function(MapWidgetData) _then;

/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mapView = null,Object? routeOrigin = freezed,Object? routeDestination = freezed,Object? routeColor = freezed,Object? isTracking = freezed,Object? navigationStations = freezed,Object? originMarker = freezed,Object? destinationMarker = freezed,Object? middleMarkers = freezed,}) {
  return _then(_self.copyWith(
mapView: null == mapView ? _self.mapView : mapView // ignore: cast_nullable_to_non_nullable
as MapView,routeOrigin: freezed == routeOrigin ? _self.routeOrigin : routeOrigin // ignore: cast_nullable_to_non_nullable
as LatLng?,routeDestination: freezed == routeDestination ? _self.routeDestination : routeDestination // ignore: cast_nullable_to_non_nullable
as LatLng?,routeColor: freezed == routeColor ? _self.routeColor : routeColor // ignore: cast_nullable_to_non_nullable
as RouteColor?,isTracking: freezed == isTracking ? _self.isTracking : isTracking // ignore: cast_nullable_to_non_nullable
as bool?,navigationStations: freezed == navigationStations ? _self.navigationStations : navigationStations // ignore: cast_nullable_to_non_nullable
as List<LatLng>?,originMarker: freezed == originMarker ? _self.originMarker : originMarker // ignore: cast_nullable_to_non_nullable
as MapMarkerData?,destinationMarker: freezed == destinationMarker ? _self.destinationMarker : destinationMarker // ignore: cast_nullable_to_non_nullable
as MapMarkerData?,middleMarkers: freezed == middleMarkers ? _self.middleMarkers : middleMarkers // ignore: cast_nullable_to_non_nullable
as List<MapMarkerData>?,
  ));
}
/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get routeOrigin {
    if (_self.routeOrigin == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.routeOrigin!, (value) {
    return _then(_self.copyWith(routeOrigin: value));
  });
}/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get routeDestination {
    if (_self.routeDestination == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.routeDestination!, (value) {
    return _then(_self.copyWith(routeDestination: value));
  });
}/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapMarkerDataCopyWith<$Res>? get originMarker {
    if (_self.originMarker == null) {
    return null;
  }

  return $MapMarkerDataCopyWith<$Res>(_self.originMarker!, (value) {
    return _then(_self.copyWith(originMarker: value));
  });
}/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapMarkerDataCopyWith<$Res>? get destinationMarker {
    if (_self.destinationMarker == null) {
    return null;
  }

  return $MapMarkerDataCopyWith<$Res>(_self.destinationMarker!, (value) {
    return _then(_self.copyWith(destinationMarker: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapWidgetData].
extension MapWidgetDataPatterns on MapWidgetData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapWidgetData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapWidgetData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapWidgetData value)  $default,){
final _that = this;
switch (_that) {
case _MapWidgetData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapWidgetData value)?  $default,){
final _that = this;
switch (_that) {
case _MapWidgetData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MapView mapView,  LatLng? routeOrigin,  LatLng? routeDestination,  RouteColor? routeColor,  bool? isTracking,  List<LatLng>? navigationStations,  MapMarkerData? originMarker,  MapMarkerData? destinationMarker,  List<MapMarkerData>? middleMarkers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapWidgetData() when $default != null:
return $default(_that.mapView,_that.routeOrigin,_that.routeDestination,_that.routeColor,_that.isTracking,_that.navigationStations,_that.originMarker,_that.destinationMarker,_that.middleMarkers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MapView mapView,  LatLng? routeOrigin,  LatLng? routeDestination,  RouteColor? routeColor,  bool? isTracking,  List<LatLng>? navigationStations,  MapMarkerData? originMarker,  MapMarkerData? destinationMarker,  List<MapMarkerData>? middleMarkers)  $default,) {final _that = this;
switch (_that) {
case _MapWidgetData():
return $default(_that.mapView,_that.routeOrigin,_that.routeDestination,_that.routeColor,_that.isTracking,_that.navigationStations,_that.originMarker,_that.destinationMarker,_that.middleMarkers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MapView mapView,  LatLng? routeOrigin,  LatLng? routeDestination,  RouteColor? routeColor,  bool? isTracking,  List<LatLng>? navigationStations,  MapMarkerData? originMarker,  MapMarkerData? destinationMarker,  List<MapMarkerData>? middleMarkers)?  $default,) {final _that = this;
switch (_that) {
case _MapWidgetData() when $default != null:
return $default(_that.mapView,_that.routeOrigin,_that.routeDestination,_that.routeColor,_that.isTracking,_that.navigationStations,_that.originMarker,_that.destinationMarker,_that.middleMarkers);case _:
  return null;

}
}

}

/// @nodoc


class _MapWidgetData implements MapWidgetData {
  const _MapWidgetData({required this.mapView, this.routeOrigin, this.routeDestination, this.routeColor, this.isTracking, final  List<LatLng>? navigationStations, this.originMarker, this.destinationMarker, final  List<MapMarkerData>? middleMarkers}): _navigationStations = navigationStations,_middleMarkers = middleMarkers;
  

@override final  MapView mapView;
@override final  LatLng? routeOrigin;
@override final  LatLng? routeDestination;
@override final  RouteColor? routeColor;
@override final  bool? isTracking;
 final  List<LatLng>? _navigationStations;
@override List<LatLng>? get navigationStations {
  final value = _navigationStations;
  if (value == null) return null;
  if (_navigationStations is EqualUnmodifiableListView) return _navigationStations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MapMarkerData? originMarker;
@override final  MapMarkerData? destinationMarker;
 final  List<MapMarkerData>? _middleMarkers;
@override List<MapMarkerData>? get middleMarkers {
  final value = _middleMarkers;
  if (value == null) return null;
  if (_middleMarkers is EqualUnmodifiableListView) return _middleMarkers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapWidgetDataCopyWith<_MapWidgetData> get copyWith => __$MapWidgetDataCopyWithImpl<_MapWidgetData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapWidgetData&&(identical(other.mapView, mapView) || other.mapView == mapView)&&(identical(other.routeOrigin, routeOrigin) || other.routeOrigin == routeOrigin)&&(identical(other.routeDestination, routeDestination) || other.routeDestination == routeDestination)&&(identical(other.routeColor, routeColor) || other.routeColor == routeColor)&&(identical(other.isTracking, isTracking) || other.isTracking == isTracking)&&const DeepCollectionEquality().equals(other._navigationStations, _navigationStations)&&(identical(other.originMarker, originMarker) || other.originMarker == originMarker)&&(identical(other.destinationMarker, destinationMarker) || other.destinationMarker == destinationMarker)&&const DeepCollectionEquality().equals(other._middleMarkers, _middleMarkers));
}


@override
int get hashCode => Object.hash(runtimeType,mapView,routeOrigin,routeDestination,routeColor,isTracking,const DeepCollectionEquality().hash(_navigationStations),originMarker,destinationMarker,const DeepCollectionEquality().hash(_middleMarkers));

@override
String toString() {
  return 'MapWidgetData(mapView: $mapView, routeOrigin: $routeOrigin, routeDestination: $routeDestination, routeColor: $routeColor, isTracking: $isTracking, navigationStations: $navigationStations, originMarker: $originMarker, destinationMarker: $destinationMarker, middleMarkers: $middleMarkers)';
}


}

/// @nodoc
abstract mixin class _$MapWidgetDataCopyWith<$Res> implements $MapWidgetDataCopyWith<$Res> {
  factory _$MapWidgetDataCopyWith(_MapWidgetData value, $Res Function(_MapWidgetData) _then) = __$MapWidgetDataCopyWithImpl;
@override @useResult
$Res call({
 MapView mapView, LatLng? routeOrigin, LatLng? routeDestination, RouteColor? routeColor, bool? isTracking, List<LatLng>? navigationStations, MapMarkerData? originMarker, MapMarkerData? destinationMarker, List<MapMarkerData>? middleMarkers
});


@override $LatLngCopyWith<$Res>? get routeOrigin;@override $LatLngCopyWith<$Res>? get routeDestination;@override $MapMarkerDataCopyWith<$Res>? get originMarker;@override $MapMarkerDataCopyWith<$Res>? get destinationMarker;

}
/// @nodoc
class __$MapWidgetDataCopyWithImpl<$Res>
    implements _$MapWidgetDataCopyWith<$Res> {
  __$MapWidgetDataCopyWithImpl(this._self, this._then);

  final _MapWidgetData _self;
  final $Res Function(_MapWidgetData) _then;

/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mapView = null,Object? routeOrigin = freezed,Object? routeDestination = freezed,Object? routeColor = freezed,Object? isTracking = freezed,Object? navigationStations = freezed,Object? originMarker = freezed,Object? destinationMarker = freezed,Object? middleMarkers = freezed,}) {
  return _then(_MapWidgetData(
mapView: null == mapView ? _self.mapView : mapView // ignore: cast_nullable_to_non_nullable
as MapView,routeOrigin: freezed == routeOrigin ? _self.routeOrigin : routeOrigin // ignore: cast_nullable_to_non_nullable
as LatLng?,routeDestination: freezed == routeDestination ? _self.routeDestination : routeDestination // ignore: cast_nullable_to_non_nullable
as LatLng?,routeColor: freezed == routeColor ? _self.routeColor : routeColor // ignore: cast_nullable_to_non_nullable
as RouteColor?,isTracking: freezed == isTracking ? _self.isTracking : isTracking // ignore: cast_nullable_to_non_nullable
as bool?,navigationStations: freezed == navigationStations ? _self._navigationStations : navigationStations // ignore: cast_nullable_to_non_nullable
as List<LatLng>?,originMarker: freezed == originMarker ? _self.originMarker : originMarker // ignore: cast_nullable_to_non_nullable
as MapMarkerData?,destinationMarker: freezed == destinationMarker ? _self.destinationMarker : destinationMarker // ignore: cast_nullable_to_non_nullable
as MapMarkerData?,middleMarkers: freezed == middleMarkers ? _self._middleMarkers : middleMarkers // ignore: cast_nullable_to_non_nullable
as List<MapMarkerData>?,
  ));
}

/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get routeOrigin {
    if (_self.routeOrigin == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.routeOrigin!, (value) {
    return _then(_self.copyWith(routeOrigin: value));
  });
}/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get routeDestination {
    if (_self.routeDestination == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.routeDestination!, (value) {
    return _then(_self.copyWith(routeDestination: value));
  });
}/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapMarkerDataCopyWith<$Res>? get originMarker {
    if (_self.originMarker == null) {
    return null;
  }

  return $MapMarkerDataCopyWith<$Res>(_self.originMarker!, (value) {
    return _then(_self.copyWith(originMarker: value));
  });
}/// Create a copy of MapWidgetData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapMarkerDataCopyWith<$Res>? get destinationMarker {
    if (_self.destinationMarker == null) {
    return null;
  }

  return $MapMarkerDataCopyWith<$Res>(_self.destinationMarker!, (value) {
    return _then(_self.copyWith(destinationMarker: value));
  });
}
}

// dart format on
