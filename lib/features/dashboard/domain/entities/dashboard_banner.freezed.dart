// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardBanner {

 String get id; BannerText get text; String? get actionText; String? get type;
/// Create a copy of DashboardBanner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardBannerCopyWith<DashboardBanner> get copyWith => _$DashboardBannerCopyWithImpl<DashboardBanner>(this as DashboardBanner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.actionText, actionText) || other.actionText == actionText)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,text,actionText,type);

@override
String toString() {
  return 'DashboardBanner(id: $id, text: $text, actionText: $actionText, type: $type)';
}


}

/// @nodoc
abstract mixin class $DashboardBannerCopyWith<$Res>  {
  factory $DashboardBannerCopyWith(DashboardBanner value, $Res Function(DashboardBanner) _then) = _$DashboardBannerCopyWithImpl;
@useResult
$Res call({
 String id, BannerText text, String? actionText, String? type
});


$BannerTextCopyWith<$Res> get text;

}
/// @nodoc
class _$DashboardBannerCopyWithImpl<$Res>
    implements $DashboardBannerCopyWith<$Res> {
  _$DashboardBannerCopyWithImpl(this._self, this._then);

  final DashboardBanner _self;
  final $Res Function(DashboardBanner) _then;

/// Create a copy of DashboardBanner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? actionText = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as BannerText,actionText: freezed == actionText ? _self.actionText : actionText // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DashboardBanner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BannerTextCopyWith<$Res> get text {
  
  return $BannerTextCopyWith<$Res>(_self.text, (value) {
    return _then(_self.copyWith(text: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardBanner].
extension DashboardBannerPatterns on DashboardBanner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardBanner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardBanner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardBanner value)  $default,){
final _that = this;
switch (_that) {
case _DashboardBanner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardBanner value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardBanner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  BannerText text,  String? actionText,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardBanner() when $default != null:
return $default(_that.id,_that.text,_that.actionText,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  BannerText text,  String? actionText,  String? type)  $default,) {final _that = this;
switch (_that) {
case _DashboardBanner():
return $default(_that.id,_that.text,_that.actionText,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  BannerText text,  String? actionText,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _DashboardBanner() when $default != null:
return $default(_that.id,_that.text,_that.actionText,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardBanner implements DashboardBanner {
  const _DashboardBanner({required this.id, required this.text, this.actionText, this.type});
  

@override final  String id;
@override final  BannerText text;
@override final  String? actionText;
@override final  String? type;

/// Create a copy of DashboardBanner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardBannerCopyWith<_DashboardBanner> get copyWith => __$DashboardBannerCopyWithImpl<_DashboardBanner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardBanner&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.actionText, actionText) || other.actionText == actionText)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,id,text,actionText,type);

@override
String toString() {
  return 'DashboardBanner(id: $id, text: $text, actionText: $actionText, type: $type)';
}


}

/// @nodoc
abstract mixin class _$DashboardBannerCopyWith<$Res> implements $DashboardBannerCopyWith<$Res> {
  factory _$DashboardBannerCopyWith(_DashboardBanner value, $Res Function(_DashboardBanner) _then) = __$DashboardBannerCopyWithImpl;
@override @useResult
$Res call({
 String id, BannerText text, String? actionText, String? type
});


@override $BannerTextCopyWith<$Res> get text;

}
/// @nodoc
class __$DashboardBannerCopyWithImpl<$Res>
    implements _$DashboardBannerCopyWith<$Res> {
  __$DashboardBannerCopyWithImpl(this._self, this._then);

  final _DashboardBanner _self;
  final $Res Function(_DashboardBanner) _then;

/// Create a copy of DashboardBanner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? actionText = freezed,Object? type = freezed,}) {
  return _then(_DashboardBanner(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as BannerText,actionText: freezed == actionText ? _self.actionText : actionText // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DashboardBanner
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BannerTextCopyWith<$Res> get text {
  
  return $BannerTextCopyWith<$Res>(_self.text, (value) {
    return _then(_self.copyWith(text: value));
  });
}
}

// dart format on
