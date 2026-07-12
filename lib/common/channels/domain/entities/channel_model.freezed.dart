// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChannelModel {

 String get id; String get name; String? get slug; String? get description; String? get logo; String? get type; String? get countryId; String? get cityId; int get memberCount; bool get isJoined; bool get isSelected;
/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelModelCopyWith<ChannelModel> get copyWith => _$ChannelModelCopyWithImpl<ChannelModel>(this as ChannelModel, _$identity);

  /// Serializes this ChannelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.type, type) || other.type == type)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.memberCount, memberCount) || other.memberCount == memberCount)&&(identical(other.isJoined, isJoined) || other.isJoined == isJoined)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,logo,type,countryId,cityId,memberCount,isJoined,isSelected);

@override
String toString() {
  return 'ChannelModel(id: $id, name: $name, slug: $slug, description: $description, logo: $logo, type: $type, countryId: $countryId, cityId: $cityId, memberCount: $memberCount, isJoined: $isJoined, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $ChannelModelCopyWith<$Res>  {
  factory $ChannelModelCopyWith(ChannelModel value, $Res Function(ChannelModel) _then) = _$ChannelModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, String? description, String? logo, String? type, String? countryId, String? cityId, int memberCount, bool isJoined, bool isSelected
});




}
/// @nodoc
class _$ChannelModelCopyWithImpl<$Res>
    implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._self, this._then);

  final ChannelModel _self;
  final $Res Function(ChannelModel) _then;

/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? description = freezed,Object? logo = freezed,Object? type = freezed,Object? countryId = freezed,Object? cityId = freezed,Object? memberCount = null,Object? isJoined = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,isJoined: null == isJoined ? _self.isJoined : isJoined // ignore: cast_nullable_to_non_nullable
as bool,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelModel].
extension ChannelModelPatterns on ChannelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelModel value)  $default,){
final _that = this;
switch (_that) {
case _ChannelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? description,  String? logo,  String? type,  String? countryId,  String? cityId,  int memberCount,  bool isJoined,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.logo,_that.type,_that.countryId,_that.cityId,_that.memberCount,_that.isJoined,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? description,  String? logo,  String? type,  String? countryId,  String? cityId,  int memberCount,  bool isJoined,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _ChannelModel():
return $default(_that.id,_that.name,_that.slug,_that.description,_that.logo,_that.type,_that.countryId,_that.cityId,_that.memberCount,_that.isJoined,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  String? description,  String? logo,  String? type,  String? countryId,  String? cityId,  int memberCount,  bool isJoined,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _ChannelModel() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.description,_that.logo,_that.type,_that.countryId,_that.cityId,_that.memberCount,_that.isJoined,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChannelModel implements ChannelModel {
  const _ChannelModel({required this.id, required this.name, this.slug, this.description, this.logo, this.type, this.countryId, this.cityId, this.memberCount = 0, this.isJoined = false, this.isSelected = false});
  factory _ChannelModel.fromJson(Map<String, dynamic> json) => _$ChannelModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;
@override final  String? description;
@override final  String? logo;
@override final  String? type;
@override final  String? countryId;
@override final  String? cityId;
@override@JsonKey() final  int memberCount;
@override@JsonKey() final  bool isJoined;
@override@JsonKey() final  bool isSelected;

/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelModelCopyWith<_ChannelModel> get copyWith => __$ChannelModelCopyWithImpl<_ChannelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.type, type) || other.type == type)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.memberCount, memberCount) || other.memberCount == memberCount)&&(identical(other.isJoined, isJoined) || other.isJoined == isJoined)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,description,logo,type,countryId,cityId,memberCount,isJoined,isSelected);

@override
String toString() {
  return 'ChannelModel(id: $id, name: $name, slug: $slug, description: $description, logo: $logo, type: $type, countryId: $countryId, cityId: $cityId, memberCount: $memberCount, isJoined: $isJoined, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$ChannelModelCopyWith<$Res> implements $ChannelModelCopyWith<$Res> {
  factory _$ChannelModelCopyWith(_ChannelModel value, $Res Function(_ChannelModel) _then) = __$ChannelModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, String? description, String? logo, String? type, String? countryId, String? cityId, int memberCount, bool isJoined, bool isSelected
});




}
/// @nodoc
class __$ChannelModelCopyWithImpl<$Res>
    implements _$ChannelModelCopyWith<$Res> {
  __$ChannelModelCopyWithImpl(this._self, this._then);

  final _ChannelModel _self;
  final $Res Function(_ChannelModel) _then;

/// Create a copy of ChannelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? description = freezed,Object? logo = freezed,Object? type = freezed,Object? countryId = freezed,Object? cityId = freezed,Object? memberCount = null,Object? isJoined = null,Object? isSelected = null,}) {
  return _then(_ChannelModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as String?,memberCount: null == memberCount ? _self.memberCount : memberCount // ignore: cast_nullable_to_non_nullable
as int,isJoined: null == isJoined ? _self.isJoined : isJoined // ignore: cast_nullable_to_non_nullable
as bool,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
