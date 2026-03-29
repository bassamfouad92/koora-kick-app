// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError()';
}


}

/// @nodoc
class $AppErrorCopyWith<$Res>  {
$AppErrorCopyWith(AppError _, $Res Function(AppError) __);
}


/// Adds pattern-matching-related methods to [AppError].
extension AppErrorPatterns on AppError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FormInvalidError value)?  formInvalid,TResult Function( ApiError value)?  api,TResult Function( NetworkError value)?  network,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FormInvalidError() when formInvalid != null:
return formInvalid(_that);case ApiError() when api != null:
return api(_that);case NetworkError() when network != null:
return network(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FormInvalidError value)  formInvalid,required TResult Function( ApiError value)  api,required TResult Function( NetworkError value)  network,}){
final _that = this;
switch (_that) {
case FormInvalidError():
return formInvalid(_that);case ApiError():
return api(_that);case NetworkError():
return network(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FormInvalidError value)?  formInvalid,TResult? Function( ApiError value)?  api,TResult? Function( NetworkError value)?  network,}){
final _that = this;
switch (_that) {
case FormInvalidError() when formInvalid != null:
return formInvalid(_that);case ApiError() when api != null:
return api(_that);case NetworkError() when network != null:
return network(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String field,  String message)?  formInvalid,TResult Function( String message,  int? code)?  api,TResult Function()?  network,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FormInvalidError() when formInvalid != null:
return formInvalid(_that.field,_that.message);case ApiError() when api != null:
return api(_that.message,_that.code);case NetworkError() when network != null:
return network();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String field,  String message)  formInvalid,required TResult Function( String message,  int? code)  api,required TResult Function()  network,}) {final _that = this;
switch (_that) {
case FormInvalidError():
return formInvalid(_that.field,_that.message);case ApiError():
return api(_that.message,_that.code);case NetworkError():
return network();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String field,  String message)?  formInvalid,TResult? Function( String message,  int? code)?  api,TResult? Function()?  network,}) {final _that = this;
switch (_that) {
case FormInvalidError() when formInvalid != null:
return formInvalid(_that.field,_that.message);case ApiError() when api != null:
return api(_that.message,_that.code);case NetworkError() when network != null:
return network();case _:
  return null;

}
}

}

/// @nodoc


class FormInvalidError implements AppError {
  const FormInvalidError({required this.field, required this.message});
  

 final  String field;
 final  String message;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormInvalidErrorCopyWith<FormInvalidError> get copyWith => _$FormInvalidErrorCopyWithImpl<FormInvalidError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormInvalidError&&(identical(other.field, field) || other.field == field)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,field,message);

@override
String toString() {
  return 'AppError.formInvalid(field: $field, message: $message)';
}


}

/// @nodoc
abstract mixin class $FormInvalidErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $FormInvalidErrorCopyWith(FormInvalidError value, $Res Function(FormInvalidError) _then) = _$FormInvalidErrorCopyWithImpl;
@useResult
$Res call({
 String field, String message
});




}
/// @nodoc
class _$FormInvalidErrorCopyWithImpl<$Res>
    implements $FormInvalidErrorCopyWith<$Res> {
  _$FormInvalidErrorCopyWithImpl(this._self, this._then);

  final FormInvalidError _self;
  final $Res Function(FormInvalidError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? message = null,}) {
  return _then(FormInvalidError(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ApiError implements AppError {
  const ApiError({required this.message, this.code});
  

 final  String message;
 final  int? code;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiErrorCopyWith<ApiError> get copyWith => _$ApiErrorCopyWithImpl<ApiError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiError&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,message,code);

@override
String toString() {
  return 'AppError.api(message: $message, code: $code)';
}


}

/// @nodoc
abstract mixin class $ApiErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) _then) = _$ApiErrorCopyWithImpl;
@useResult
$Res call({
 String message, int? code
});




}
/// @nodoc
class _$ApiErrorCopyWithImpl<$Res>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._self, this._then);

  final ApiError _self;
  final $Res Function(ApiError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? code = freezed,}) {
  return _then(ApiError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class NetworkError implements AppError {
  const NetworkError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppError.network()';
}


}




// dart format on
