// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_form_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccountFormErrors {

 String? get phoneNumber; String? get name; String? get city; String? get passcode; String? get confirmPasscode;
/// Create a copy of CreateAccountFormErrors
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccountFormErrorsCopyWith<CreateAccountFormErrors> get copyWith => _$CreateAccountFormErrorsCopyWithImpl<CreateAccountFormErrors>(this as CreateAccountFormErrors, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountFormErrors&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,name,city,passcode,confirmPasscode);

@override
String toString() {
  return 'CreateAccountFormErrors(phoneNumber: $phoneNumber, name: $name, city: $city, passcode: $passcode, confirmPasscode: $confirmPasscode)';
}


}

/// @nodoc
abstract mixin class $CreateAccountFormErrorsCopyWith<$Res>  {
  factory $CreateAccountFormErrorsCopyWith(CreateAccountFormErrors value, $Res Function(CreateAccountFormErrors) _then) = _$CreateAccountFormErrorsCopyWithImpl;
@useResult
$Res call({
 String? phoneNumber, String? name, String? city, String? passcode, String? confirmPasscode
});




}
/// @nodoc
class _$CreateAccountFormErrorsCopyWithImpl<$Res>
    implements $CreateAccountFormErrorsCopyWith<$Res> {
  _$CreateAccountFormErrorsCopyWithImpl(this._self, this._then);

  final CreateAccountFormErrors _self;
  final $Res Function(CreateAccountFormErrors) _then;

/// Create a copy of CreateAccountFormErrors
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = freezed,Object? name = freezed,Object? city = freezed,Object? passcode = freezed,Object? confirmPasscode = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,passcode: freezed == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String?,confirmPasscode: freezed == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAccountFormErrors].
extension CreateAccountFormErrorsPatterns on CreateAccountFormErrors {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAccountFormErrors value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAccountFormErrors() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAccountFormErrors value)  $default,){
final _that = this;
switch (_that) {
case _CreateAccountFormErrors():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAccountFormErrors value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAccountFormErrors() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? phoneNumber,  String? name,  String? city,  String? passcode,  String? confirmPasscode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAccountFormErrors() when $default != null:
return $default(_that.phoneNumber,_that.name,_that.city,_that.passcode,_that.confirmPasscode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? phoneNumber,  String? name,  String? city,  String? passcode,  String? confirmPasscode)  $default,) {final _that = this;
switch (_that) {
case _CreateAccountFormErrors():
return $default(_that.phoneNumber,_that.name,_that.city,_that.passcode,_that.confirmPasscode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? phoneNumber,  String? name,  String? city,  String? passcode,  String? confirmPasscode)?  $default,) {final _that = this;
switch (_that) {
case _CreateAccountFormErrors() when $default != null:
return $default(_that.phoneNumber,_that.name,_that.city,_that.passcode,_that.confirmPasscode);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAccountFormErrors extends CreateAccountFormErrors {
  const _CreateAccountFormErrors({this.phoneNumber, this.name, this.city, this.passcode, this.confirmPasscode}): super._();
  

@override final  String? phoneNumber;
@override final  String? name;
@override final  String? city;
@override final  String? passcode;
@override final  String? confirmPasscode;

/// Create a copy of CreateAccountFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountFormErrorsCopyWith<_CreateAccountFormErrors> get copyWith => __$CreateAccountFormErrorsCopyWithImpl<_CreateAccountFormErrors>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountFormErrors&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,name,city,passcode,confirmPasscode);

@override
String toString() {
  return 'CreateAccountFormErrors(phoneNumber: $phoneNumber, name: $name, city: $city, passcode: $passcode, confirmPasscode: $confirmPasscode)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountFormErrorsCopyWith<$Res> implements $CreateAccountFormErrorsCopyWith<$Res> {
  factory _$CreateAccountFormErrorsCopyWith(_CreateAccountFormErrors value, $Res Function(_CreateAccountFormErrors) _then) = __$CreateAccountFormErrorsCopyWithImpl;
@override @useResult
$Res call({
 String? phoneNumber, String? name, String? city, String? passcode, String? confirmPasscode
});




}
/// @nodoc
class __$CreateAccountFormErrorsCopyWithImpl<$Res>
    implements _$CreateAccountFormErrorsCopyWith<$Res> {
  __$CreateAccountFormErrorsCopyWithImpl(this._self, this._then);

  final _CreateAccountFormErrors _self;
  final $Res Function(_CreateAccountFormErrors) _then;

/// Create a copy of CreateAccountFormErrors
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = freezed,Object? name = freezed,Object? city = freezed,Object? passcode = freezed,Object? confirmPasscode = freezed,}) {
  return _then(_CreateAccountFormErrors(
phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,passcode: freezed == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String?,confirmPasscode: freezed == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
