// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountriesResponse {

 List<CountryData> get data;
/// Create a copy of CountriesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountriesResponseCopyWith<CountriesResponse> get copyWith => _$CountriesResponseCopyWithImpl<CountriesResponse>(this as CountriesResponse, _$identity);

  /// Serializes this CountriesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountriesResponse&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'CountriesResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $CountriesResponseCopyWith<$Res>  {
  factory $CountriesResponseCopyWith(CountriesResponse value, $Res Function(CountriesResponse) _then) = _$CountriesResponseCopyWithImpl;
@useResult
$Res call({
 List<CountryData> data
});




}
/// @nodoc
class _$CountriesResponseCopyWithImpl<$Res>
    implements $CountriesResponseCopyWith<$Res> {
  _$CountriesResponseCopyWithImpl(this._self, this._then);

  final CountriesResponse _self;
  final $Res Function(CountriesResponse) _then;

/// Create a copy of CountriesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CountryData>,
  ));
}

}


/// Adds pattern-matching-related methods to [CountriesResponse].
extension CountriesResponsePatterns on CountriesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountriesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountriesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountriesResponse value)  $default,){
final _that = this;
switch (_that) {
case _CountriesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountriesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CountriesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CountryData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountriesResponse() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CountryData> data)  $default,) {final _that = this;
switch (_that) {
case _CountriesResponse():
return $default(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CountryData> data)?  $default,) {final _that = this;
switch (_that) {
case _CountriesResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountriesResponse implements CountriesResponse {
  const _CountriesResponse({final  List<CountryData> data = const []}): _data = data;
  factory _CountriesResponse.fromJson(Map<String, dynamic> json) => _$CountriesResponseFromJson(json);

 final  List<CountryData> _data;
@override@JsonKey() List<CountryData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of CountriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountriesResponseCopyWith<_CountriesResponse> get copyWith => __$CountriesResponseCopyWithImpl<_CountriesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountriesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountriesResponse&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'CountriesResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$CountriesResponseCopyWith<$Res> implements $CountriesResponseCopyWith<$Res> {
  factory _$CountriesResponseCopyWith(_CountriesResponse value, $Res Function(_CountriesResponse) _then) = __$CountriesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<CountryData> data
});




}
/// @nodoc
class __$CountriesResponseCopyWithImpl<$Res>
    implements _$CountriesResponseCopyWith<$Res> {
  __$CountriesResponseCopyWithImpl(this._self, this._then);

  final _CountriesResponse _self;
  final $Res Function(_CountriesResponse) _then;

/// Create a copy of CountriesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_CountriesResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CountryData>,
  ));
}


}


/// @nodoc
mixin _$CountryData {

@JsonKey(name: '_id') String? get id; String? get code; String? get name;@JsonKey(name: 'phone_code') String? get phoneCode; bool? get active; String? get flag;
/// Create a copy of CountryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountryDataCopyWith<CountryData> get copyWith => _$CountryDataCopyWithImpl<CountryData>(this as CountryData, _$identity);

  /// Serializes this CountryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountryData&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.active, active) || other.active == active)&&(identical(other.flag, flag) || other.flag == flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,phoneCode,active,flag);

@override
String toString() {
  return 'CountryData(id: $id, code: $code, name: $name, phoneCode: $phoneCode, active: $active, flag: $flag)';
}


}

/// @nodoc
abstract mixin class $CountryDataCopyWith<$Res>  {
  factory $CountryDataCopyWith(CountryData value, $Res Function(CountryData) _then) = _$CountryDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, String? code, String? name,@JsonKey(name: 'phone_code') String? phoneCode, bool? active, String? flag
});




}
/// @nodoc
class _$CountryDataCopyWithImpl<$Res>
    implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._self, this._then);

  final CountryData _self;
  final $Res Function(CountryData) _then;

/// Create a copy of CountryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,Object? phoneCode = freezed,Object? active = freezed,Object? flag = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phoneCode: freezed == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CountryData].
extension CountryDataPatterns on CountryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountryData value)  $default,){
final _that = this;
switch (_that) {
case _CountryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountryData value)?  $default,){
final _that = this;
switch (_that) {
case _CountryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? code,  String? name, @JsonKey(name: 'phone_code')  String? phoneCode,  bool? active,  String? flag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountryData() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.phoneCode,_that.active,_that.flag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? code,  String? name, @JsonKey(name: 'phone_code')  String? phoneCode,  bool? active,  String? flag)  $default,) {final _that = this;
switch (_that) {
case _CountryData():
return $default(_that.id,_that.code,_that.name,_that.phoneCode,_that.active,_that.flag);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  String? code,  String? name, @JsonKey(name: 'phone_code')  String? phoneCode,  bool? active,  String? flag)?  $default,) {final _that = this;
switch (_that) {
case _CountryData() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.phoneCode,_that.active,_that.flag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountryData implements CountryData {
  const _CountryData({@JsonKey(name: '_id') this.id, this.code, this.name, @JsonKey(name: 'phone_code') this.phoneCode, this.active, this.flag});
  factory _CountryData.fromJson(Map<String, dynamic> json) => _$CountryDataFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  String? code;
@override final  String? name;
@override@JsonKey(name: 'phone_code') final  String? phoneCode;
@override final  bool? active;
@override final  String? flag;

/// Create a copy of CountryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountryDataCopyWith<_CountryData> get copyWith => __$CountryDataCopyWithImpl<_CountryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountryData&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.active, active) || other.active == active)&&(identical(other.flag, flag) || other.flag == flag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,phoneCode,active,flag);

@override
String toString() {
  return 'CountryData(id: $id, code: $code, name: $name, phoneCode: $phoneCode, active: $active, flag: $flag)';
}


}

/// @nodoc
abstract mixin class _$CountryDataCopyWith<$Res> implements $CountryDataCopyWith<$Res> {
  factory _$CountryDataCopyWith(_CountryData value, $Res Function(_CountryData) _then) = __$CountryDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, String? code, String? name,@JsonKey(name: 'phone_code') String? phoneCode, bool? active, String? flag
});




}
/// @nodoc
class __$CountryDataCopyWithImpl<$Res>
    implements _$CountryDataCopyWith<$Res> {
  __$CountryDataCopyWithImpl(this._self, this._then);

  final _CountryData _self;
  final $Res Function(_CountryData) _then;

/// Create a copy of CountryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,Object? phoneCode = freezed,Object? active = freezed,Object? flag = freezed,}) {
  return _then(_CountryData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phoneCode: freezed == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
