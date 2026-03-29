// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccountStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountStatus()';
}


}

/// @nodoc
class $CreateAccountStatusCopyWith<$Res>  {
$CreateAccountStatusCopyWith(CreateAccountStatus _, $Res Function(CreateAccountStatus) __);
}


/// Adds pattern-matching-related methods to [CreateAccountStatus].
extension CreateAccountStatusPatterns on CreateAccountStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _Success value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _Success value)  success,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _Success():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _Success value)?  success,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Success() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( AppError error)?  error,TResult Function( UserSessionStatus status)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _Success() when success != null:
return success(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( AppError error)  error,required TResult Function( UserSessionStatus status)  success,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error(_that.error);case _Success():
return success(_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( AppError error)?  error,TResult? Function( UserSessionStatus status)?  success,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error(_that.error);case _Success() when success != null:
return success(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CreateAccountStatus {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountStatus.initial()';
}


}




/// @nodoc


class _Loading implements CreateAccountStatus {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccountStatus.loading()';
}


}




/// @nodoc


class _Error implements CreateAccountStatus {
  const _Error(this.error);
  

 final  AppError error;

/// Create a copy of CreateAccountStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CreateAccountStatus.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $CreateAccountStatusCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of CreateAccountStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of CreateAccountStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class _Success implements CreateAccountStatus {
  const _Success(this.status);
  

 final  UserSessionStatus status;

/// Create a copy of CreateAccountStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'CreateAccountStatus.success(status: $status)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $CreateAccountStatusCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 UserSessionStatus status
});


$UserSessionStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of CreateAccountStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_Success(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserSessionStatus,
  ));
}

/// Create a copy of CreateAccountStatus
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSessionStatusCopyWith<$Res> get status {
  
  return $UserSessionStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

/// @nodoc
mixin _$CreateAccountState {

 CreateAccountStatus get createAccountStatus; PhoneNumber get phoneNumber; String get fullName; CityModel get selectedCity; String get passcode; String get confirmPasscode; CountryModel get country; List<CityModel> get cities; bool get isCitiesLoading; CreateAccountFormErrors get formErrors; AppError? get error;
/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccountStateCopyWith<CreateAccountState> get copyWith => _$CreateAccountStateCopyWithImpl<CreateAccountState>(this as CreateAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccountState&&(identical(other.createAccountStatus, createAccountStatus) || other.createAccountStatus == createAccountStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode)&&(identical(other.country, country) || other.country == country)&&const DeepCollectionEquality().equals(other.cities, cities)&&(identical(other.isCitiesLoading, isCitiesLoading) || other.isCitiesLoading == isCitiesLoading)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,createAccountStatus,phoneNumber,fullName,selectedCity,passcode,confirmPasscode,country,const DeepCollectionEquality().hash(cities),isCitiesLoading,formErrors,error);

@override
String toString() {
  return 'CreateAccountState(createAccountStatus: $createAccountStatus, phoneNumber: $phoneNumber, fullName: $fullName, selectedCity: $selectedCity, passcode: $passcode, confirmPasscode: $confirmPasscode, country: $country, cities: $cities, isCitiesLoading: $isCitiesLoading, formErrors: $formErrors, error: $error)';
}


}

/// @nodoc
abstract mixin class $CreateAccountStateCopyWith<$Res>  {
  factory $CreateAccountStateCopyWith(CreateAccountState value, $Res Function(CreateAccountState) _then) = _$CreateAccountStateCopyWithImpl;
@useResult
$Res call({
 CreateAccountStatus createAccountStatus, PhoneNumber phoneNumber, String fullName, CityModel selectedCity, String passcode, String confirmPasscode, CountryModel country, List<CityModel> cities, bool isCitiesLoading, CreateAccountFormErrors formErrors, AppError? error
});


$CreateAccountStatusCopyWith<$Res> get createAccountStatus;$PhoneNumberCopyWith<$Res> get phoneNumber;$CityModelCopyWith<$Res> get selectedCity;$CountryModelCopyWith<$Res> get country;$CreateAccountFormErrorsCopyWith<$Res> get formErrors;$AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class _$CreateAccountStateCopyWithImpl<$Res>
    implements $CreateAccountStateCopyWith<$Res> {
  _$CreateAccountStateCopyWithImpl(this._self, this._then);

  final CreateAccountState _self;
  final $Res Function(CreateAccountState) _then;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createAccountStatus = null,Object? phoneNumber = null,Object? fullName = null,Object? selectedCity = null,Object? passcode = null,Object? confirmPasscode = null,Object? country = null,Object? cities = null,Object? isCitiesLoading = null,Object? formErrors = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
createAccountStatus: null == createAccountStatus ? _self.createAccountStatus : createAccountStatus // ignore: cast_nullable_to_non_nullable
as CreateAccountStatus,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,selectedCity: null == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as CityModel,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,confirmPasscode: null == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel,cities: null == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,isCitiesLoading: null == isCitiesLoading ? _self.isCitiesLoading : isCitiesLoading // ignore: cast_nullable_to_non_nullable
as bool,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as CreateAccountFormErrors,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,
  ));
}
/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAccountStatusCopyWith<$Res> get createAccountStatus {
  
  return $CreateAccountStatusCopyWith<$Res>(_self.createAccountStatus, (value) {
    return _then(_self.copyWith(createAccountStatus: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res> get phoneNumber {
  
  return $PhoneNumberCopyWith<$Res>(_self.phoneNumber, (value) {
    return _then(_self.copyWith(phoneNumber: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get selectedCity {
  
  return $CityModelCopyWith<$Res>(_self.selectedCity, (value) {
    return _then(_self.copyWith(selectedCity: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res> get country {
  
  return $CountryModelCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAccountFormErrorsCopyWith<$Res> get formErrors {
  
  return $CreateAccountFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateAccountState].
extension CreateAccountStatePatterns on CreateAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAccountState value)  $default,){
final _that = this;
switch (_that) {
case _CreateAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateAccountStatus createAccountStatus,  PhoneNumber phoneNumber,  String fullName,  CityModel selectedCity,  String passcode,  String confirmPasscode,  CountryModel country,  List<CityModel> cities,  bool isCitiesLoading,  CreateAccountFormErrors formErrors,  AppError? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
return $default(_that.createAccountStatus,_that.phoneNumber,_that.fullName,_that.selectedCity,_that.passcode,_that.confirmPasscode,_that.country,_that.cities,_that.isCitiesLoading,_that.formErrors,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateAccountStatus createAccountStatus,  PhoneNumber phoneNumber,  String fullName,  CityModel selectedCity,  String passcode,  String confirmPasscode,  CountryModel country,  List<CityModel> cities,  bool isCitiesLoading,  CreateAccountFormErrors formErrors,  AppError? error)  $default,) {final _that = this;
switch (_that) {
case _CreateAccountState():
return $default(_that.createAccountStatus,_that.phoneNumber,_that.fullName,_that.selectedCity,_that.passcode,_that.confirmPasscode,_that.country,_that.cities,_that.isCitiesLoading,_that.formErrors,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateAccountStatus createAccountStatus,  PhoneNumber phoneNumber,  String fullName,  CityModel selectedCity,  String passcode,  String confirmPasscode,  CountryModel country,  List<CityModel> cities,  bool isCitiesLoading,  CreateAccountFormErrors formErrors,  AppError? error)?  $default,) {final _that = this;
switch (_that) {
case _CreateAccountState() when $default != null:
return $default(_that.createAccountStatus,_that.phoneNumber,_that.fullName,_that.selectedCity,_that.passcode,_that.confirmPasscode,_that.country,_that.cities,_that.isCitiesLoading,_that.formErrors,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CreateAccountState extends CreateAccountState {
  const _CreateAccountState({this.createAccountStatus = const CreateAccountStatus.initial(), this.phoneNumber = const PhoneNumber(number: '', countryCode: '20'), this.fullName = emptyString, this.selectedCity = defaultCity, this.passcode = emptyString, this.confirmPasscode = emptyString, this.country = CountryModel.defaultCountry, final  List<CityModel> cities = const [], this.isCitiesLoading = false, this.formErrors = const CreateAccountFormErrors(), this.error}): _cities = cities,super._();
  

@override@JsonKey() final  CreateAccountStatus createAccountStatus;
@override@JsonKey() final  PhoneNumber phoneNumber;
@override@JsonKey() final  String fullName;
@override@JsonKey() final  CityModel selectedCity;
@override@JsonKey() final  String passcode;
@override@JsonKey() final  String confirmPasscode;
@override@JsonKey() final  CountryModel country;
 final  List<CityModel> _cities;
@override@JsonKey() List<CityModel> get cities {
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cities);
}

@override@JsonKey() final  bool isCitiesLoading;
@override@JsonKey() final  CreateAccountFormErrors formErrors;
@override final  AppError? error;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAccountStateCopyWith<_CreateAccountState> get copyWith => __$CreateAccountStateCopyWithImpl<_CreateAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAccountState&&(identical(other.createAccountStatus, createAccountStatus) || other.createAccountStatus == createAccountStatus)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.confirmPasscode, confirmPasscode) || other.confirmPasscode == confirmPasscode)&&(identical(other.country, country) || other.country == country)&&const DeepCollectionEquality().equals(other._cities, _cities)&&(identical(other.isCitiesLoading, isCitiesLoading) || other.isCitiesLoading == isCitiesLoading)&&(identical(other.formErrors, formErrors) || other.formErrors == formErrors)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,createAccountStatus,phoneNumber,fullName,selectedCity,passcode,confirmPasscode,country,const DeepCollectionEquality().hash(_cities),isCitiesLoading,formErrors,error);

@override
String toString() {
  return 'CreateAccountState(createAccountStatus: $createAccountStatus, phoneNumber: $phoneNumber, fullName: $fullName, selectedCity: $selectedCity, passcode: $passcode, confirmPasscode: $confirmPasscode, country: $country, cities: $cities, isCitiesLoading: $isCitiesLoading, formErrors: $formErrors, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CreateAccountStateCopyWith<$Res> implements $CreateAccountStateCopyWith<$Res> {
  factory _$CreateAccountStateCopyWith(_CreateAccountState value, $Res Function(_CreateAccountState) _then) = __$CreateAccountStateCopyWithImpl;
@override @useResult
$Res call({
 CreateAccountStatus createAccountStatus, PhoneNumber phoneNumber, String fullName, CityModel selectedCity, String passcode, String confirmPasscode, CountryModel country, List<CityModel> cities, bool isCitiesLoading, CreateAccountFormErrors formErrors, AppError? error
});


@override $CreateAccountStatusCopyWith<$Res> get createAccountStatus;@override $PhoneNumberCopyWith<$Res> get phoneNumber;@override $CityModelCopyWith<$Res> get selectedCity;@override $CountryModelCopyWith<$Res> get country;@override $CreateAccountFormErrorsCopyWith<$Res> get formErrors;@override $AppErrorCopyWith<$Res>? get error;

}
/// @nodoc
class __$CreateAccountStateCopyWithImpl<$Res>
    implements _$CreateAccountStateCopyWith<$Res> {
  __$CreateAccountStateCopyWithImpl(this._self, this._then);

  final _CreateAccountState _self;
  final $Res Function(_CreateAccountState) _then;

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createAccountStatus = null,Object? phoneNumber = null,Object? fullName = null,Object? selectedCity = null,Object? passcode = null,Object? confirmPasscode = null,Object? country = null,Object? cities = null,Object? isCitiesLoading = null,Object? formErrors = null,Object? error = freezed,}) {
  return _then(_CreateAccountState(
createAccountStatus: null == createAccountStatus ? _self.createAccountStatus : createAccountStatus // ignore: cast_nullable_to_non_nullable
as CreateAccountStatus,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as PhoneNumber,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,selectedCity: null == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as CityModel,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,confirmPasscode: null == confirmPasscode ? _self.confirmPasscode : confirmPasscode // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as CountryModel,cities: null == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<CityModel>,isCitiesLoading: null == isCitiesLoading ? _self.isCitiesLoading : isCitiesLoading // ignore: cast_nullable_to_non_nullable
as bool,formErrors: null == formErrors ? _self.formErrors : formErrors // ignore: cast_nullable_to_non_nullable
as CreateAccountFormErrors,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError?,
  ));
}

/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAccountStatusCopyWith<$Res> get createAccountStatus {
  
  return $CreateAccountStatusCopyWith<$Res>(_self.createAccountStatus, (value) {
    return _then(_self.copyWith(createAccountStatus: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PhoneNumberCopyWith<$Res> get phoneNumber {
  
  return $PhoneNumberCopyWith<$Res>(_self.phoneNumber, (value) {
    return _then(_self.copyWith(phoneNumber: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityModelCopyWith<$Res> get selectedCity {
  
  return $CityModelCopyWith<$Res>(_self.selectedCity, (value) {
    return _then(_self.copyWith(selectedCity: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryModelCopyWith<$Res> get country {
  
  return $CountryModelCopyWith<$Res>(_self.country, (value) {
    return _then(_self.copyWith(country: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateAccountFormErrorsCopyWith<$Res> get formErrors {
  
  return $CreateAccountFormErrorsCopyWith<$Res>(_self.formErrors, (value) {
    return _then(_self.copyWith(formErrors: value));
  });
}/// Create a copy of CreateAccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res>? get error {
    if (_self.error == null) {
    return null;
  }

  return $AppErrorCopyWith<$Res>(_self.error!, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
