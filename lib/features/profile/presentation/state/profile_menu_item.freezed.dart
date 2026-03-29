// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_menu_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileMenuItem {

 Widget get icon; String get title; ProfileMenuItemType get type; String? get trailingText; Color? get trailingTextColor; Color? get trailingBackgroundColor;
/// Create a copy of ProfileMenuItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileMenuItemCopyWith<ProfileMenuItem> get copyWith => _$ProfileMenuItemCopyWithImpl<ProfileMenuItem>(this as ProfileMenuItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileMenuItem&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.trailingText, trailingText) || other.trailingText == trailingText)&&(identical(other.trailingTextColor, trailingTextColor) || other.trailingTextColor == trailingTextColor)&&(identical(other.trailingBackgroundColor, trailingBackgroundColor) || other.trailingBackgroundColor == trailingBackgroundColor));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,type,trailingText,trailingTextColor,trailingBackgroundColor);

@override
String toString() {
  return 'ProfileMenuItem(icon: $icon, title: $title, type: $type, trailingText: $trailingText, trailingTextColor: $trailingTextColor, trailingBackgroundColor: $trailingBackgroundColor)';
}


}

/// @nodoc
abstract mixin class $ProfileMenuItemCopyWith<$Res>  {
  factory $ProfileMenuItemCopyWith(ProfileMenuItem value, $Res Function(ProfileMenuItem) _then) = _$ProfileMenuItemCopyWithImpl;
@useResult
$Res call({
 Widget icon, String title, ProfileMenuItemType type, String? trailingText, Color? trailingTextColor, Color? trailingBackgroundColor
});




}
/// @nodoc
class _$ProfileMenuItemCopyWithImpl<$Res>
    implements $ProfileMenuItemCopyWith<$Res> {
  _$ProfileMenuItemCopyWithImpl(this._self, this._then);

  final ProfileMenuItem _self;
  final $Res Function(ProfileMenuItem) _then;

/// Create a copy of ProfileMenuItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? title = null,Object? type = null,Object? trailingText = freezed,Object? trailingTextColor = freezed,Object? trailingBackgroundColor = freezed,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProfileMenuItemType,trailingText: freezed == trailingText ? _self.trailingText : trailingText // ignore: cast_nullable_to_non_nullable
as String?,trailingTextColor: freezed == trailingTextColor ? _self.trailingTextColor : trailingTextColor // ignore: cast_nullable_to_non_nullable
as Color?,trailingBackgroundColor: freezed == trailingBackgroundColor ? _self.trailingBackgroundColor : trailingBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileMenuItem].
extension ProfileMenuItemPatterns on ProfileMenuItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileMenuItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileMenuItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileMenuItem value)  $default,){
final _that = this;
switch (_that) {
case _ProfileMenuItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileMenuItem value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileMenuItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Widget icon,  String title,  ProfileMenuItemType type,  String? trailingText,  Color? trailingTextColor,  Color? trailingBackgroundColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileMenuItem() when $default != null:
return $default(_that.icon,_that.title,_that.type,_that.trailingText,_that.trailingTextColor,_that.trailingBackgroundColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Widget icon,  String title,  ProfileMenuItemType type,  String? trailingText,  Color? trailingTextColor,  Color? trailingBackgroundColor)  $default,) {final _that = this;
switch (_that) {
case _ProfileMenuItem():
return $default(_that.icon,_that.title,_that.type,_that.trailingText,_that.trailingTextColor,_that.trailingBackgroundColor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Widget icon,  String title,  ProfileMenuItemType type,  String? trailingText,  Color? trailingTextColor,  Color? trailingBackgroundColor)?  $default,) {final _that = this;
switch (_that) {
case _ProfileMenuItem() when $default != null:
return $default(_that.icon,_that.title,_that.type,_that.trailingText,_that.trailingTextColor,_that.trailingBackgroundColor);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileMenuItem implements ProfileMenuItem {
  const _ProfileMenuItem({required this.icon, required this.title, required this.type, this.trailingText, this.trailingTextColor, this.trailingBackgroundColor});
  

@override final  Widget icon;
@override final  String title;
@override final  ProfileMenuItemType type;
@override final  String? trailingText;
@override final  Color? trailingTextColor;
@override final  Color? trailingBackgroundColor;

/// Create a copy of ProfileMenuItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileMenuItemCopyWith<_ProfileMenuItem> get copyWith => __$ProfileMenuItemCopyWithImpl<_ProfileMenuItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileMenuItem&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.trailingText, trailingText) || other.trailingText == trailingText)&&(identical(other.trailingTextColor, trailingTextColor) || other.trailingTextColor == trailingTextColor)&&(identical(other.trailingBackgroundColor, trailingBackgroundColor) || other.trailingBackgroundColor == trailingBackgroundColor));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,type,trailingText,trailingTextColor,trailingBackgroundColor);

@override
String toString() {
  return 'ProfileMenuItem(icon: $icon, title: $title, type: $type, trailingText: $trailingText, trailingTextColor: $trailingTextColor, trailingBackgroundColor: $trailingBackgroundColor)';
}


}

/// @nodoc
abstract mixin class _$ProfileMenuItemCopyWith<$Res> implements $ProfileMenuItemCopyWith<$Res> {
  factory _$ProfileMenuItemCopyWith(_ProfileMenuItem value, $Res Function(_ProfileMenuItem) _then) = __$ProfileMenuItemCopyWithImpl;
@override @useResult
$Res call({
 Widget icon, String title, ProfileMenuItemType type, String? trailingText, Color? trailingTextColor, Color? trailingBackgroundColor
});




}
/// @nodoc
class __$ProfileMenuItemCopyWithImpl<$Res>
    implements _$ProfileMenuItemCopyWith<$Res> {
  __$ProfileMenuItemCopyWithImpl(this._self, this._then);

  final _ProfileMenuItem _self;
  final $Res Function(_ProfileMenuItem) _then;

/// Create a copy of ProfileMenuItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? title = null,Object? type = null,Object? trailingText = freezed,Object? trailingTextColor = freezed,Object? trailingBackgroundColor = freezed,}) {
  return _then(_ProfileMenuItem(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProfileMenuItemType,trailingText: freezed == trailingText ? _self.trailingText : trailingText // ignore: cast_nullable_to_non_nullable
as String?,trailingTextColor: freezed == trailingTextColor ? _self.trailingTextColor : trailingTextColor // ignore: cast_nullable_to_non_nullable
as Color?,trailingBackgroundColor: freezed == trailingBackgroundColor ? _self.trailingBackgroundColor : trailingBackgroundColor // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}


}

// dart format on
