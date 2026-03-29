// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LatLng {

 double get latitude; double get longitude;
/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatLngCopyWith<LatLng> get copyWith => _$LatLngCopyWithImpl<LatLng>(this as LatLng, _$identity);

  /// Serializes this LatLng to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatLng&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'LatLng(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $LatLngCopyWith<$Res>  {
  factory $LatLngCopyWith(LatLng value, $Res Function(LatLng) _then) = _$LatLngCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class _$LatLngCopyWithImpl<$Res>
    implements $LatLngCopyWith<$Res> {
  _$LatLngCopyWithImpl(this._self, this._then);

  final LatLng _self;
  final $Res Function(LatLng) _then;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LatLng].
extension LatLngPatterns on LatLng {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatLng value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatLng() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatLng value)  $default,){
final _that = this;
switch (_that) {
case _LatLng():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatLng value)?  $default,){
final _that = this;
switch (_that) {
case _LatLng() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatLng() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _LatLng():
return $default(_that.latitude,_that.longitude);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _LatLng() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatLng implements LatLng {
  const _LatLng(this.latitude, this.longitude);
  factory _LatLng.fromJson(Map<String, dynamic> json) => _$LatLngFromJson(json);

@override final  double latitude;
@override final  double longitude;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatLngCopyWith<_LatLng> get copyWith => __$LatLngCopyWithImpl<_LatLng>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatLngToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatLng&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'LatLng(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$LatLngCopyWith<$Res> implements $LatLngCopyWith<$Res> {
  factory _$LatLngCopyWith(_LatLng value, $Res Function(_LatLng) _then) = __$LatLngCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude
});




}
/// @nodoc
class __$LatLngCopyWithImpl<$Res>
    implements _$LatLngCopyWith<$Res> {
  __$LatLngCopyWithImpl(this._self, this._then);

  final _LatLng _self;
  final $Res Function(_LatLng) _then;

/// Create a copy of LatLng
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_LatLng(
null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$MapMarkerData {

 String get id; LatLng get position; dynamic get icon; int? get number; double get rotation; double get scale;
/// Create a copy of MapMarkerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapMarkerDataCopyWith<MapMarkerData> get copyWith => _$MapMarkerDataCopyWithImpl<MapMarkerData>(this as MapMarkerData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapMarkerData&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.icon, icon)&&(identical(other.number, number) || other.number == number)&&(identical(other.rotation, rotation) || other.rotation == rotation)&&(identical(other.scale, scale) || other.scale == scale));
}


@override
int get hashCode => Object.hash(runtimeType,id,position,const DeepCollectionEquality().hash(icon),number,rotation,scale);

@override
String toString() {
  return 'MapMarkerData(id: $id, position: $position, icon: $icon, number: $number, rotation: $rotation, scale: $scale)';
}


}

/// @nodoc
abstract mixin class $MapMarkerDataCopyWith<$Res>  {
  factory $MapMarkerDataCopyWith(MapMarkerData value, $Res Function(MapMarkerData) _then) = _$MapMarkerDataCopyWithImpl;
@useResult
$Res call({
 String id, LatLng position, dynamic icon, int? number, double rotation, double scale
});


$LatLngCopyWith<$Res> get position;

}
/// @nodoc
class _$MapMarkerDataCopyWithImpl<$Res>
    implements $MapMarkerDataCopyWith<$Res> {
  _$MapMarkerDataCopyWithImpl(this._self, this._then);

  final MapMarkerData _self;
  final $Res Function(MapMarkerData) _then;

/// Create a copy of MapMarkerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? position = null,Object? icon = freezed,Object? number = freezed,Object? rotation = null,Object? scale = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as LatLng,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as dynamic,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,rotation: null == rotation ? _self.rotation : rotation // ignore: cast_nullable_to_non_nullable
as double,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of MapMarkerData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get position {
  
  return $LatLngCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapMarkerData].
extension MapMarkerDataPatterns on MapMarkerData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapMarkerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapMarkerData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapMarkerData value)  $default,){
final _that = this;
switch (_that) {
case _MapMarkerData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapMarkerData value)?  $default,){
final _that = this;
switch (_that) {
case _MapMarkerData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  LatLng position,  dynamic icon,  int? number,  double rotation,  double scale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapMarkerData() when $default != null:
return $default(_that.id,_that.position,_that.icon,_that.number,_that.rotation,_that.scale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  LatLng position,  dynamic icon,  int? number,  double rotation,  double scale)  $default,) {final _that = this;
switch (_that) {
case _MapMarkerData():
return $default(_that.id,_that.position,_that.icon,_that.number,_that.rotation,_that.scale);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  LatLng position,  dynamic icon,  int? number,  double rotation,  double scale)?  $default,) {final _that = this;
switch (_that) {
case _MapMarkerData() when $default != null:
return $default(_that.id,_that.position,_that.icon,_that.number,_that.rotation,_that.scale);case _:
  return null;

}
}

}

/// @nodoc


class _MapMarkerData implements MapMarkerData {
  const _MapMarkerData({required this.id, required this.position, this.icon, this.number, this.rotation = 0.0, this.scale = 0.4});
  

@override final  String id;
@override final  LatLng position;
@override final  dynamic icon;
@override final  int? number;
@override@JsonKey() final  double rotation;
@override@JsonKey() final  double scale;

/// Create a copy of MapMarkerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapMarkerDataCopyWith<_MapMarkerData> get copyWith => __$MapMarkerDataCopyWithImpl<_MapMarkerData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapMarkerData&&(identical(other.id, id) || other.id == id)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.icon, icon)&&(identical(other.number, number) || other.number == number)&&(identical(other.rotation, rotation) || other.rotation == rotation)&&(identical(other.scale, scale) || other.scale == scale));
}


@override
int get hashCode => Object.hash(runtimeType,id,position,const DeepCollectionEquality().hash(icon),number,rotation,scale);

@override
String toString() {
  return 'MapMarkerData(id: $id, position: $position, icon: $icon, number: $number, rotation: $rotation, scale: $scale)';
}


}

/// @nodoc
abstract mixin class _$MapMarkerDataCopyWith<$Res> implements $MapMarkerDataCopyWith<$Res> {
  factory _$MapMarkerDataCopyWith(_MapMarkerData value, $Res Function(_MapMarkerData) _then) = __$MapMarkerDataCopyWithImpl;
@override @useResult
$Res call({
 String id, LatLng position, dynamic icon, int? number, double rotation, double scale
});


@override $LatLngCopyWith<$Res> get position;

}
/// @nodoc
class __$MapMarkerDataCopyWithImpl<$Res>
    implements _$MapMarkerDataCopyWith<$Res> {
  __$MapMarkerDataCopyWithImpl(this._self, this._then);

  final _MapMarkerData _self;
  final $Res Function(_MapMarkerData) _then;

/// Create a copy of MapMarkerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? position = null,Object? icon = freezed,Object? number = freezed,Object? rotation = null,Object? scale = null,}) {
  return _then(_MapMarkerData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as LatLng,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as dynamic,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,rotation: null == rotation ? _self.rotation : rotation // ignore: cast_nullable_to_non_nullable
as double,scale: null == scale ? _self.scale : scale // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of MapMarkerData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get position {
  
  return $LatLngCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}
}

/// @nodoc
mixin _$MapRouteData {

 String get routeId; List<LatLng> get coordinates; RouteColor get color;
/// Create a copy of MapRouteData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapRouteDataCopyWith<MapRouteData> get copyWith => _$MapRouteDataCopyWithImpl<MapRouteData>(this as MapRouteData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapRouteData&&(identical(other.routeId, routeId) || other.routeId == routeId)&&const DeepCollectionEquality().equals(other.coordinates, coordinates)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,routeId,const DeepCollectionEquality().hash(coordinates),color);

@override
String toString() {
  return 'MapRouteData(routeId: $routeId, coordinates: $coordinates, color: $color)';
}


}

/// @nodoc
abstract mixin class $MapRouteDataCopyWith<$Res>  {
  factory $MapRouteDataCopyWith(MapRouteData value, $Res Function(MapRouteData) _then) = _$MapRouteDataCopyWithImpl;
@useResult
$Res call({
 String routeId, List<LatLng> coordinates, RouteColor color
});




}
/// @nodoc
class _$MapRouteDataCopyWithImpl<$Res>
    implements $MapRouteDataCopyWith<$Res> {
  _$MapRouteDataCopyWithImpl(this._self, this._then);

  final MapRouteData _self;
  final $Res Function(MapRouteData) _then;

/// Create a copy of MapRouteData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? coordinates = null,Object? color = null,}) {
  return _then(_self.copyWith(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self.coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<LatLng>,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as RouteColor,
  ));
}

}


/// Adds pattern-matching-related methods to [MapRouteData].
extension MapRouteDataPatterns on MapRouteData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapRouteData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapRouteData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapRouteData value)  $default,){
final _that = this;
switch (_that) {
case _MapRouteData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapRouteData value)?  $default,){
final _that = this;
switch (_that) {
case _MapRouteData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String routeId,  List<LatLng> coordinates,  RouteColor color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapRouteData() when $default != null:
return $default(_that.routeId,_that.coordinates,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String routeId,  List<LatLng> coordinates,  RouteColor color)  $default,) {final _that = this;
switch (_that) {
case _MapRouteData():
return $default(_that.routeId,_that.coordinates,_that.color);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String routeId,  List<LatLng> coordinates,  RouteColor color)?  $default,) {final _that = this;
switch (_that) {
case _MapRouteData() when $default != null:
return $default(_that.routeId,_that.coordinates,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _MapRouteData implements MapRouteData {
  const _MapRouteData({required this.routeId, required final  List<LatLng> coordinates, this.color = RouteColor.neutral}): _coordinates = coordinates;
  

@override final  String routeId;
 final  List<LatLng> _coordinates;
@override List<LatLng> get coordinates {
  if (_coordinates is EqualUnmodifiableListView) return _coordinates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coordinates);
}

@override@JsonKey() final  RouteColor color;

/// Create a copy of MapRouteData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapRouteDataCopyWith<_MapRouteData> get copyWith => __$MapRouteDataCopyWithImpl<_MapRouteData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapRouteData&&(identical(other.routeId, routeId) || other.routeId == routeId)&&const DeepCollectionEquality().equals(other._coordinates, _coordinates)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,routeId,const DeepCollectionEquality().hash(_coordinates),color);

@override
String toString() {
  return 'MapRouteData(routeId: $routeId, coordinates: $coordinates, color: $color)';
}


}

/// @nodoc
abstract mixin class _$MapRouteDataCopyWith<$Res> implements $MapRouteDataCopyWith<$Res> {
  factory _$MapRouteDataCopyWith(_MapRouteData value, $Res Function(_MapRouteData) _then) = __$MapRouteDataCopyWithImpl;
@override @useResult
$Res call({
 String routeId, List<LatLng> coordinates, RouteColor color
});




}
/// @nodoc
class __$MapRouteDataCopyWithImpl<$Res>
    implements _$MapRouteDataCopyWith<$Res> {
  __$MapRouteDataCopyWithImpl(this._self, this._then);

  final _MapRouteData _self;
  final $Res Function(_MapRouteData) _then;

/// Create a copy of MapRouteData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? coordinates = null,Object? color = null,}) {
  return _then(_MapRouteData(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,coordinates: null == coordinates ? _self._coordinates : coordinates // ignore: cast_nullable_to_non_nullable
as List<LatLng>,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as RouteColor,
  ));
}


}

/// @nodoc
mixin _$CameraState {

 LatLng get center; double get zoom;
/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CameraStateCopyWith<CameraState> get copyWith => _$CameraStateCopyWithImpl<CameraState>(this as CameraState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CameraState&&(identical(other.center, center) || other.center == center)&&(identical(other.zoom, zoom) || other.zoom == zoom));
}


@override
int get hashCode => Object.hash(runtimeType,center,zoom);

@override
String toString() {
  return 'CameraState(center: $center, zoom: $zoom)';
}


}

/// @nodoc
abstract mixin class $CameraStateCopyWith<$Res>  {
  factory $CameraStateCopyWith(CameraState value, $Res Function(CameraState) _then) = _$CameraStateCopyWithImpl;
@useResult
$Res call({
 LatLng center, double zoom
});


$LatLngCopyWith<$Res> get center;

}
/// @nodoc
class _$CameraStateCopyWithImpl<$Res>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._self, this._then);

  final CameraState _self;
  final $Res Function(CameraState) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? center = null,Object? zoom = null,}) {
  return _then(_self.copyWith(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLng,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get center {
  
  return $LatLngCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// Adds pattern-matching-related methods to [CameraState].
extension CameraStatePatterns on CameraState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CameraState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CameraState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CameraState value)  $default,){
final _that = this;
switch (_that) {
case _CameraState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CameraState value)?  $default,){
final _that = this;
switch (_that) {
case _CameraState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng center,  double zoom)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CameraState() when $default != null:
return $default(_that.center,_that.zoom);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng center,  double zoom)  $default,) {final _that = this;
switch (_that) {
case _CameraState():
return $default(_that.center,_that.zoom);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng center,  double zoom)?  $default,) {final _that = this;
switch (_that) {
case _CameraState() when $default != null:
return $default(_that.center,_that.zoom);case _:
  return null;

}
}

}

/// @nodoc


class _CameraState implements CameraState {
  const _CameraState({required this.center, required this.zoom});
  

@override final  LatLng center;
@override final  double zoom;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CameraStateCopyWith<_CameraState> get copyWith => __$CameraStateCopyWithImpl<_CameraState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CameraState&&(identical(other.center, center) || other.center == center)&&(identical(other.zoom, zoom) || other.zoom == zoom));
}


@override
int get hashCode => Object.hash(runtimeType,center,zoom);

@override
String toString() {
  return 'CameraState(center: $center, zoom: $zoom)';
}


}

/// @nodoc
abstract mixin class _$CameraStateCopyWith<$Res> implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateCopyWith(_CameraState value, $Res Function(_CameraState) _then) = __$CameraStateCopyWithImpl;
@override @useResult
$Res call({
 LatLng center, double zoom
});


@override $LatLngCopyWith<$Res> get center;

}
/// @nodoc
class __$CameraStateCopyWithImpl<$Res>
    implements _$CameraStateCopyWith<$Res> {
  __$CameraStateCopyWithImpl(this._self, this._then);

  final _CameraState _self;
  final $Res Function(_CameraState) _then;

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? center = null,Object? zoom = null,}) {
  return _then(_CameraState(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as LatLng,zoom: null == zoom ? _self.zoom : zoom // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CameraState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res> get center {
  
  return $LatLngCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}

/// @nodoc
mixin _$MapConfig {

 Set<MapMarkerData> get markers; Set<MapRouteData> get polylines; LatLng? get initialLocation; double get initialZoom; bool get trafficEnabled; bool get zoomGesturesEnabled;
/// Create a copy of MapConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapConfigCopyWith<MapConfig> get copyWith => _$MapConfigCopyWithImpl<MapConfig>(this as MapConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapConfig&&const DeepCollectionEquality().equals(other.markers, markers)&&const DeepCollectionEquality().equals(other.polylines, polylines)&&(identical(other.initialLocation, initialLocation) || other.initialLocation == initialLocation)&&(identical(other.initialZoom, initialZoom) || other.initialZoom == initialZoom)&&(identical(other.trafficEnabled, trafficEnabled) || other.trafficEnabled == trafficEnabled)&&(identical(other.zoomGesturesEnabled, zoomGesturesEnabled) || other.zoomGesturesEnabled == zoomGesturesEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(markers),const DeepCollectionEquality().hash(polylines),initialLocation,initialZoom,trafficEnabled,zoomGesturesEnabled);

@override
String toString() {
  return 'MapConfig(markers: $markers, polylines: $polylines, initialLocation: $initialLocation, initialZoom: $initialZoom, trafficEnabled: $trafficEnabled, zoomGesturesEnabled: $zoomGesturesEnabled)';
}


}

/// @nodoc
abstract mixin class $MapConfigCopyWith<$Res>  {
  factory $MapConfigCopyWith(MapConfig value, $Res Function(MapConfig) _then) = _$MapConfigCopyWithImpl;
@useResult
$Res call({
 Set<MapMarkerData> markers, Set<MapRouteData> polylines, LatLng? initialLocation, double initialZoom, bool trafficEnabled, bool zoomGesturesEnabled
});


$LatLngCopyWith<$Res>? get initialLocation;

}
/// @nodoc
class _$MapConfigCopyWithImpl<$Res>
    implements $MapConfigCopyWith<$Res> {
  _$MapConfigCopyWithImpl(this._self, this._then);

  final MapConfig _self;
  final $Res Function(MapConfig) _then;

/// Create a copy of MapConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? markers = null,Object? polylines = null,Object? initialLocation = freezed,Object? initialZoom = null,Object? trafficEnabled = null,Object? zoomGesturesEnabled = null,}) {
  return _then(_self.copyWith(
markers: null == markers ? _self.markers : markers // ignore: cast_nullable_to_non_nullable
as Set<MapMarkerData>,polylines: null == polylines ? _self.polylines : polylines // ignore: cast_nullable_to_non_nullable
as Set<MapRouteData>,initialLocation: freezed == initialLocation ? _self.initialLocation : initialLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,initialZoom: null == initialZoom ? _self.initialZoom : initialZoom // ignore: cast_nullable_to_non_nullable
as double,trafficEnabled: null == trafficEnabled ? _self.trafficEnabled : trafficEnabled // ignore: cast_nullable_to_non_nullable
as bool,zoomGesturesEnabled: null == zoomGesturesEnabled ? _self.zoomGesturesEnabled : zoomGesturesEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MapConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get initialLocation {
    if (_self.initialLocation == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.initialLocation!, (value) {
    return _then(_self.copyWith(initialLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapConfig].
extension MapConfigPatterns on MapConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapConfig value)  $default,){
final _that = this;
switch (_that) {
case _MapConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapConfig value)?  $default,){
final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<MapMarkerData> markers,  Set<MapRouteData> polylines,  LatLng? initialLocation,  double initialZoom,  bool trafficEnabled,  bool zoomGesturesEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
return $default(_that.markers,_that.polylines,_that.initialLocation,_that.initialZoom,_that.trafficEnabled,_that.zoomGesturesEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<MapMarkerData> markers,  Set<MapRouteData> polylines,  LatLng? initialLocation,  double initialZoom,  bool trafficEnabled,  bool zoomGesturesEnabled)  $default,) {final _that = this;
switch (_that) {
case _MapConfig():
return $default(_that.markers,_that.polylines,_that.initialLocation,_that.initialZoom,_that.trafficEnabled,_that.zoomGesturesEnabled);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<MapMarkerData> markers,  Set<MapRouteData> polylines,  LatLng? initialLocation,  double initialZoom,  bool trafficEnabled,  bool zoomGesturesEnabled)?  $default,) {final _that = this;
switch (_that) {
case _MapConfig() when $default != null:
return $default(_that.markers,_that.polylines,_that.initialLocation,_that.initialZoom,_that.trafficEnabled,_that.zoomGesturesEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _MapConfig implements MapConfig {
  const _MapConfig({required final  Set<MapMarkerData> markers, required final  Set<MapRouteData> polylines, this.initialLocation, this.initialZoom = 12.0, this.trafficEnabled = false, this.zoomGesturesEnabled = false}): _markers = markers,_polylines = polylines;
  

 final  Set<MapMarkerData> _markers;
@override Set<MapMarkerData> get markers {
  if (_markers is EqualUnmodifiableSetView) return _markers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_markers);
}

 final  Set<MapRouteData> _polylines;
@override Set<MapRouteData> get polylines {
  if (_polylines is EqualUnmodifiableSetView) return _polylines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_polylines);
}

@override final  LatLng? initialLocation;
@override@JsonKey() final  double initialZoom;
@override@JsonKey() final  bool trafficEnabled;
@override@JsonKey() final  bool zoomGesturesEnabled;

/// Create a copy of MapConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapConfigCopyWith<_MapConfig> get copyWith => __$MapConfigCopyWithImpl<_MapConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapConfig&&const DeepCollectionEquality().equals(other._markers, _markers)&&const DeepCollectionEquality().equals(other._polylines, _polylines)&&(identical(other.initialLocation, initialLocation) || other.initialLocation == initialLocation)&&(identical(other.initialZoom, initialZoom) || other.initialZoom == initialZoom)&&(identical(other.trafficEnabled, trafficEnabled) || other.trafficEnabled == trafficEnabled)&&(identical(other.zoomGesturesEnabled, zoomGesturesEnabled) || other.zoomGesturesEnabled == zoomGesturesEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_markers),const DeepCollectionEquality().hash(_polylines),initialLocation,initialZoom,trafficEnabled,zoomGesturesEnabled);

@override
String toString() {
  return 'MapConfig(markers: $markers, polylines: $polylines, initialLocation: $initialLocation, initialZoom: $initialZoom, trafficEnabled: $trafficEnabled, zoomGesturesEnabled: $zoomGesturesEnabled)';
}


}

/// @nodoc
abstract mixin class _$MapConfigCopyWith<$Res> implements $MapConfigCopyWith<$Res> {
  factory _$MapConfigCopyWith(_MapConfig value, $Res Function(_MapConfig) _then) = __$MapConfigCopyWithImpl;
@override @useResult
$Res call({
 Set<MapMarkerData> markers, Set<MapRouteData> polylines, LatLng? initialLocation, double initialZoom, bool trafficEnabled, bool zoomGesturesEnabled
});


@override $LatLngCopyWith<$Res>? get initialLocation;

}
/// @nodoc
class __$MapConfigCopyWithImpl<$Res>
    implements _$MapConfigCopyWith<$Res> {
  __$MapConfigCopyWithImpl(this._self, this._then);

  final _MapConfig _self;
  final $Res Function(_MapConfig) _then;

/// Create a copy of MapConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? markers = null,Object? polylines = null,Object? initialLocation = freezed,Object? initialZoom = null,Object? trafficEnabled = null,Object? zoomGesturesEnabled = null,}) {
  return _then(_MapConfig(
markers: null == markers ? _self._markers : markers // ignore: cast_nullable_to_non_nullable
as Set<MapMarkerData>,polylines: null == polylines ? _self._polylines : polylines // ignore: cast_nullable_to_non_nullable
as Set<MapRouteData>,initialLocation: freezed == initialLocation ? _self.initialLocation : initialLocation // ignore: cast_nullable_to_non_nullable
as LatLng?,initialZoom: null == initialZoom ? _self.initialZoom : initialZoom // ignore: cast_nullable_to_non_nullable
as double,trafficEnabled: null == trafficEnabled ? _self.trafficEnabled : trafficEnabled // ignore: cast_nullable_to_non_nullable
as bool,zoomGesturesEnabled: null == zoomGesturesEnabled ? _self.zoomGesturesEnabled : zoomGesturesEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MapConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LatLngCopyWith<$Res>? get initialLocation {
    if (_self.initialLocation == null) {
    return null;
  }

  return $LatLngCopyWith<$Res>(_self.initialLocation!, (value) {
    return _then(_self.copyWith(initialLocation: value));
  });
}
}

// dart format on
