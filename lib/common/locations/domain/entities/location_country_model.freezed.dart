// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationCountryModel {

 String get id; String get name; String get code; bool get active; bool get isSelected;
/// Create a copy of LocationCountryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCountryModelCopyWith<LocationCountryModel> get copyWith => _$LocationCountryModelCopyWithImpl<LocationCountryModel>(this as LocationCountryModel, _$identity);

  /// Serializes this LocationCountryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationCountryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,active,isSelected);

@override
String toString() {
  return 'LocationCountryModel(id: $id, name: $name, code: $code, active: $active, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $LocationCountryModelCopyWith<$Res>  {
  factory $LocationCountryModelCopyWith(LocationCountryModel value, $Res Function(LocationCountryModel) _then) = _$LocationCountryModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String code, bool active, bool isSelected
});




}
/// @nodoc
class _$LocationCountryModelCopyWithImpl<$Res>
    implements $LocationCountryModelCopyWith<$Res> {
  _$LocationCountryModelCopyWithImpl(this._self, this._then);

  final LocationCountryModel _self;
  final $Res Function(LocationCountryModel) _then;

/// Create a copy of LocationCountryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = null,Object? active = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationCountryModel].
extension LocationCountryModelPatterns on LocationCountryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationCountryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationCountryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationCountryModel value)  $default,){
final _that = this;
switch (_that) {
case _LocationCountryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationCountryModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocationCountryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String code,  bool active,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationCountryModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.active,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String code,  bool active,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _LocationCountryModel():
return $default(_that.id,_that.name,_that.code,_that.active,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String code,  bool active,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _LocationCountryModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.active,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationCountryModel implements LocationCountryModel {
  const _LocationCountryModel({required this.id, required this.name, this.code = '', this.active = true, this.isSelected = false});
  factory _LocationCountryModel.fromJson(Map<String, dynamic> json) => _$LocationCountryModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String code;
@override@JsonKey() final  bool active;
@override@JsonKey() final  bool isSelected;

/// Create a copy of LocationCountryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCountryModelCopyWith<_LocationCountryModel> get copyWith => __$LocationCountryModelCopyWithImpl<_LocationCountryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationCountryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationCountryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.active, active) || other.active == active)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,active,isSelected);

@override
String toString() {
  return 'LocationCountryModel(id: $id, name: $name, code: $code, active: $active, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$LocationCountryModelCopyWith<$Res> implements $LocationCountryModelCopyWith<$Res> {
  factory _$LocationCountryModelCopyWith(_LocationCountryModel value, $Res Function(_LocationCountryModel) _then) = __$LocationCountryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String code, bool active, bool isSelected
});




}
/// @nodoc
class __$LocationCountryModelCopyWithImpl<$Res>
    implements _$LocationCountryModelCopyWith<$Res> {
  __$LocationCountryModelCopyWithImpl(this._self, this._then);

  final _LocationCountryModel _self;
  final $Res Function(_LocationCountryModel) _then;

/// Create a copy of LocationCountryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = null,Object? active = null,Object? isSelected = null,}) {
  return _then(_LocationCountryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
