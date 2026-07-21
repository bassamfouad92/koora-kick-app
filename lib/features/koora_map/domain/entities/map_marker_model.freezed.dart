// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_marker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarkerScreening {

 String get title; DateTime? get startsAt;// true = the match has already kicked off.
 bool get nowShowing;
/// Create a copy of MarkerScreening
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkerScreeningCopyWith<MarkerScreening> get copyWith => _$MarkerScreeningCopyWithImpl<MarkerScreening>(this as MarkerScreening, _$identity);

  /// Serializes this MarkerScreening to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkerScreening&&(identical(other.title, title) || other.title == title)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.nowShowing, nowShowing) || other.nowShowing == nowShowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,startsAt,nowShowing);

@override
String toString() {
  return 'MarkerScreening(title: $title, startsAt: $startsAt, nowShowing: $nowShowing)';
}


}

/// @nodoc
abstract mixin class $MarkerScreeningCopyWith<$Res>  {
  factory $MarkerScreeningCopyWith(MarkerScreening value, $Res Function(MarkerScreening) _then) = _$MarkerScreeningCopyWithImpl;
@useResult
$Res call({
 String title, DateTime? startsAt, bool nowShowing
});




}
/// @nodoc
class _$MarkerScreeningCopyWithImpl<$Res>
    implements $MarkerScreeningCopyWith<$Res> {
  _$MarkerScreeningCopyWithImpl(this._self, this._then);

  final MarkerScreening _self;
  final $Res Function(MarkerScreening) _then;

/// Create a copy of MarkerScreening
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? startsAt = freezed,Object? nowShowing = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsAt: freezed == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nowShowing: null == nowShowing ? _self.nowShowing : nowShowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MarkerScreening].
extension MarkerScreeningPatterns on MarkerScreening {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarkerScreening value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarkerScreening() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarkerScreening value)  $default,){
final _that = this;
switch (_that) {
case _MarkerScreening():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarkerScreening value)?  $default,){
final _that = this;
switch (_that) {
case _MarkerScreening() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  DateTime? startsAt,  bool nowShowing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarkerScreening() when $default != null:
return $default(_that.title,_that.startsAt,_that.nowShowing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  DateTime? startsAt,  bool nowShowing)  $default,) {final _that = this;
switch (_that) {
case _MarkerScreening():
return $default(_that.title,_that.startsAt,_that.nowShowing);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  DateTime? startsAt,  bool nowShowing)?  $default,) {final _that = this;
switch (_that) {
case _MarkerScreening() when $default != null:
return $default(_that.title,_that.startsAt,_that.nowShowing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarkerScreening implements MarkerScreening {
  const _MarkerScreening({this.title = '', this.startsAt, this.nowShowing = false});
  factory _MarkerScreening.fromJson(Map<String, dynamic> json) => _$MarkerScreeningFromJson(json);

@override@JsonKey() final  String title;
@override final  DateTime? startsAt;
// true = the match has already kicked off.
@override@JsonKey() final  bool nowShowing;

/// Create a copy of MarkerScreening
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkerScreeningCopyWith<_MarkerScreening> get copyWith => __$MarkerScreeningCopyWithImpl<_MarkerScreening>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarkerScreeningToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkerScreening&&(identical(other.title, title) || other.title == title)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.nowShowing, nowShowing) || other.nowShowing == nowShowing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,startsAt,nowShowing);

@override
String toString() {
  return 'MarkerScreening(title: $title, startsAt: $startsAt, nowShowing: $nowShowing)';
}


}

/// @nodoc
abstract mixin class _$MarkerScreeningCopyWith<$Res> implements $MarkerScreeningCopyWith<$Res> {
  factory _$MarkerScreeningCopyWith(_MarkerScreening value, $Res Function(_MarkerScreening) _then) = __$MarkerScreeningCopyWithImpl;
@override @useResult
$Res call({
 String title, DateTime? startsAt, bool nowShowing
});




}
/// @nodoc
class __$MarkerScreeningCopyWithImpl<$Res>
    implements _$MarkerScreeningCopyWith<$Res> {
  __$MarkerScreeningCopyWithImpl(this._self, this._then);

  final _MarkerScreening _self;
  final $Res Function(_MarkerScreening) _then;

/// Create a copy of MarkerScreening
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? startsAt = freezed,Object? nowShowing = null,}) {
  return _then(_MarkerScreening(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startsAt: freezed == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,nowShowing: null == nowShowing ? _self.nowShowing : nowShowing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MapMarkerModel {

 String get id; String get name;@JsonKey(unknownEnumValue: MapMarkerType.unknown) MapMarkerType get type; String? get description; String get address; double get lat; double get lng;// cafe | restaurant | null
 String? get venueType; bool get indoor; double? get rating; String? get photo; String? get cityId;// Present only in nearby (lat/lng) mode, absent in city-browse mode.
 double? get distanceKm; MarkerScreening? get screening;
/// Create a copy of MapMarkerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapMarkerModelCopyWith<MapMarkerModel> get copyWith => _$MapMarkerModelCopyWithImpl<MapMarkerModel>(this as MapMarkerModel, _$identity);

  /// Serializes this MapMarkerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapMarkerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.venueType, venueType) || other.venueType == venueType)&&(identical(other.indoor, indoor) || other.indoor == indoor)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.screening, screening) || other.screening == screening));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,description,address,lat,lng,venueType,indoor,rating,photo,cityId,distanceKm,screening);

@override
String toString() {
  return 'MapMarkerModel(id: $id, name: $name, type: $type, description: $description, address: $address, lat: $lat, lng: $lng, venueType: $venueType, indoor: $indoor, rating: $rating, photo: $photo, cityId: $cityId, distanceKm: $distanceKm, screening: $screening)';
}


}

/// @nodoc
abstract mixin class $MapMarkerModelCopyWith<$Res>  {
  factory $MapMarkerModelCopyWith(MapMarkerModel value, $Res Function(MapMarkerModel) _then) = _$MapMarkerModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: MapMarkerType.unknown) MapMarkerType type, String? description, String address, double lat, double lng, String? venueType, bool indoor, double? rating, String? photo, String? cityId, double? distanceKm, MarkerScreening? screening
});


$MarkerScreeningCopyWith<$Res>? get screening;

}
/// @nodoc
class _$MapMarkerModelCopyWithImpl<$Res>
    implements $MapMarkerModelCopyWith<$Res> {
  _$MapMarkerModelCopyWithImpl(this._self, this._then);

  final MapMarkerModel _self;
  final $Res Function(MapMarkerModel) _then;

/// Create a copy of MapMarkerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? description = freezed,Object? address = null,Object? lat = null,Object? lng = null,Object? venueType = freezed,Object? indoor = null,Object? rating = freezed,Object? photo = freezed,Object? cityId = freezed,Object? distanceKm = freezed,Object? screening = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MapMarkerType,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,venueType: freezed == venueType ? _self.venueType : venueType // ignore: cast_nullable_to_non_nullable
as String?,indoor: null == indoor ? _self.indoor : indoor // ignore: cast_nullable_to_non_nullable
as bool,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,screening: freezed == screening ? _self.screening : screening // ignore: cast_nullable_to_non_nullable
as MarkerScreening?,
  ));
}
/// Create a copy of MapMarkerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarkerScreeningCopyWith<$Res>? get screening {
    if (_self.screening == null) {
    return null;
  }

  return $MarkerScreeningCopyWith<$Res>(_self.screening!, (value) {
    return _then(_self.copyWith(screening: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapMarkerModel].
extension MapMarkerModelPatterns on MapMarkerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapMarkerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapMarkerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapMarkerModel value)  $default,){
final _that = this;
switch (_that) {
case _MapMarkerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapMarkerModel value)?  $default,){
final _that = this;
switch (_that) {
case _MapMarkerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: MapMarkerType.unknown)  MapMarkerType type,  String? description,  String address,  double lat,  double lng,  String? venueType,  bool indoor,  double? rating,  String? photo,  String? cityId,  double? distanceKm,  MarkerScreening? screening)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapMarkerModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.description,_that.address,_that.lat,_that.lng,_that.venueType,_that.indoor,_that.rating,_that.photo,_that.cityId,_that.distanceKm,_that.screening);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: MapMarkerType.unknown)  MapMarkerType type,  String? description,  String address,  double lat,  double lng,  String? venueType,  bool indoor,  double? rating,  String? photo,  String? cityId,  double? distanceKm,  MarkerScreening? screening)  $default,) {final _that = this;
switch (_that) {
case _MapMarkerModel():
return $default(_that.id,_that.name,_that.type,_that.description,_that.address,_that.lat,_that.lng,_that.venueType,_that.indoor,_that.rating,_that.photo,_that.cityId,_that.distanceKm,_that.screening);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(unknownEnumValue: MapMarkerType.unknown)  MapMarkerType type,  String? description,  String address,  double lat,  double lng,  String? venueType,  bool indoor,  double? rating,  String? photo,  String? cityId,  double? distanceKm,  MarkerScreening? screening)?  $default,) {final _that = this;
switch (_that) {
case _MapMarkerModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.description,_that.address,_that.lat,_that.lng,_that.venueType,_that.indoor,_that.rating,_that.photo,_that.cityId,_that.distanceKm,_that.screening);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MapMarkerModel implements MapMarkerModel {
  const _MapMarkerModel({required this.id, required this.name, @JsonKey(unknownEnumValue: MapMarkerType.unknown) this.type = MapMarkerType.unknown, this.description, this.address = '', required this.lat, required this.lng, this.venueType, this.indoor = false, this.rating, this.photo, this.cityId, this.distanceKm, this.screening});
  factory _MapMarkerModel.fromJson(Map<String, dynamic> json) => _$MapMarkerModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(unknownEnumValue: MapMarkerType.unknown) final  MapMarkerType type;
@override final  String? description;
@override@JsonKey() final  String address;
@override final  double lat;
@override final  double lng;
// cafe | restaurant | null
@override final  String? venueType;
@override@JsonKey() final  bool indoor;
@override final  double? rating;
@override final  String? photo;
@override final  String? cityId;
// Present only in nearby (lat/lng) mode, absent in city-browse mode.
@override final  double? distanceKm;
@override final  MarkerScreening? screening;

/// Create a copy of MapMarkerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapMarkerModelCopyWith<_MapMarkerModel> get copyWith => __$MapMarkerModelCopyWithImpl<_MapMarkerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapMarkerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapMarkerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.venueType, venueType) || other.venueType == venueType)&&(identical(other.indoor, indoor) || other.indoor == indoor)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.screening, screening) || other.screening == screening));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,description,address,lat,lng,venueType,indoor,rating,photo,cityId,distanceKm,screening);

@override
String toString() {
  return 'MapMarkerModel(id: $id, name: $name, type: $type, description: $description, address: $address, lat: $lat, lng: $lng, venueType: $venueType, indoor: $indoor, rating: $rating, photo: $photo, cityId: $cityId, distanceKm: $distanceKm, screening: $screening)';
}


}

/// @nodoc
abstract mixin class _$MapMarkerModelCopyWith<$Res> implements $MapMarkerModelCopyWith<$Res> {
  factory _$MapMarkerModelCopyWith(_MapMarkerModel value, $Res Function(_MapMarkerModel) _then) = __$MapMarkerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: MapMarkerType.unknown) MapMarkerType type, String? description, String address, double lat, double lng, String? venueType, bool indoor, double? rating, String? photo, String? cityId, double? distanceKm, MarkerScreening? screening
});


@override $MarkerScreeningCopyWith<$Res>? get screening;

}
/// @nodoc
class __$MapMarkerModelCopyWithImpl<$Res>
    implements _$MapMarkerModelCopyWith<$Res> {
  __$MapMarkerModelCopyWithImpl(this._self, this._then);

  final _MapMarkerModel _self;
  final $Res Function(_MapMarkerModel) _then;

/// Create a copy of MapMarkerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? description = freezed,Object? address = null,Object? lat = null,Object? lng = null,Object? venueType = freezed,Object? indoor = null,Object? rating = freezed,Object? photo = freezed,Object? cityId = freezed,Object? distanceKm = freezed,Object? screening = freezed,}) {
  return _then(_MapMarkerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MapMarkerType,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,venueType: freezed == venueType ? _self.venueType : venueType // ignore: cast_nullable_to_non_nullable
as String?,indoor: null == indoor ? _self.indoor : indoor // ignore: cast_nullable_to_non_nullable
as bool,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,screening: freezed == screening ? _self.screening : screening // ignore: cast_nullable_to_non_nullable
as MarkerScreening?,
  ));
}

/// Create a copy of MapMarkerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarkerScreeningCopyWith<$Res>? get screening {
    if (_self.screening == null) {
    return null;
  }

  return $MarkerScreeningCopyWith<$Res>(_self.screening!, (value) {
    return _then(_self.copyWith(screening: value));
  });
}
}

// dart format on
