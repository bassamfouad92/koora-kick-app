// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardSection {

 Object get data;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardSection&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DashboardSection(data: $data)';
}


}

/// @nodoc
class $DashboardSectionCopyWith<$Res>  {
$DashboardSectionCopyWith(DashboardSection _, $Res Function(DashboardSection) __);
}


/// Adds pattern-matching-related methods to [DashboardSection].
extension DashboardSectionPatterns on DashboardSection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DashboardBannerSection value)?  banner,TResult Function( DashboardAlertSection value)?  alert,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DashboardBannerSection() when banner != null:
return banner(_that);case DashboardAlertSection() when alert != null:
return alert(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DashboardBannerSection value)  banner,required TResult Function( DashboardAlertSection value)  alert,}){
final _that = this;
switch (_that) {
case DashboardBannerSection():
return banner(_that);case DashboardAlertSection():
return alert(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DashboardBannerSection value)?  banner,TResult? Function( DashboardAlertSection value)?  alert,}){
final _that = this;
switch (_that) {
case DashboardBannerSection() when banner != null:
return banner(_that);case DashboardAlertSection() when alert != null:
return alert(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DashboardBanner data)?  banner,TResult Function( AlertModel data,  String? title)?  alert,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DashboardBannerSection() when banner != null:
return banner(_that.data);case DashboardAlertSection() when alert != null:
return alert(_that.data,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DashboardBanner data)  banner,required TResult Function( AlertModel data,  String? title)  alert,}) {final _that = this;
switch (_that) {
case DashboardBannerSection():
return banner(_that.data);case DashboardAlertSection():
return alert(_that.data,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DashboardBanner data)?  banner,TResult? Function( AlertModel data,  String? title)?  alert,}) {final _that = this;
switch (_that) {
case DashboardBannerSection() when banner != null:
return banner(_that.data);case DashboardAlertSection() when alert != null:
return alert(_that.data,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class DashboardBannerSection implements DashboardSection {
  const DashboardBannerSection({required this.data});
  

@override final  DashboardBanner data;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardBannerSectionCopyWith<DashboardBannerSection> get copyWith => _$DashboardBannerSectionCopyWithImpl<DashboardBannerSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardBannerSection&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'DashboardSection.banner(data: $data)';
}


}

/// @nodoc
abstract mixin class $DashboardBannerSectionCopyWith<$Res> implements $DashboardSectionCopyWith<$Res> {
  factory $DashboardBannerSectionCopyWith(DashboardBannerSection value, $Res Function(DashboardBannerSection) _then) = _$DashboardBannerSectionCopyWithImpl;
@useResult
$Res call({
 DashboardBanner data
});


$DashboardBannerCopyWith<$Res> get data;

}
/// @nodoc
class _$DashboardBannerSectionCopyWithImpl<$Res>
    implements $DashboardBannerSectionCopyWith<$Res> {
  _$DashboardBannerSectionCopyWithImpl(this._self, this._then);

  final DashboardBannerSection _self;
  final $Res Function(DashboardBannerSection) _then;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(DashboardBannerSection(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DashboardBanner,
  ));
}

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardBannerCopyWith<$Res> get data {
  
  return $DashboardBannerCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class DashboardAlertSection implements DashboardSection {
  const DashboardAlertSection({required this.data, this.title});
  

@override final  AlertModel data;
 final  String? title;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardAlertSectionCopyWith<DashboardAlertSection> get copyWith => _$DashboardAlertSectionCopyWithImpl<DashboardAlertSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardAlertSection&&(identical(other.data, data) || other.data == data)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,data,title);

@override
String toString() {
  return 'DashboardSection.alert(data: $data, title: $title)';
}


}

/// @nodoc
abstract mixin class $DashboardAlertSectionCopyWith<$Res> implements $DashboardSectionCopyWith<$Res> {
  factory $DashboardAlertSectionCopyWith(DashboardAlertSection value, $Res Function(DashboardAlertSection) _then) = _$DashboardAlertSectionCopyWithImpl;
@useResult
$Res call({
 AlertModel data, String? title
});




}
/// @nodoc
class _$DashboardAlertSectionCopyWithImpl<$Res>
    implements $DashboardAlertSectionCopyWith<$Res> {
  _$DashboardAlertSectionCopyWithImpl(this._self, this._then);

  final DashboardAlertSection _self;
  final $Res Function(DashboardAlertSection) _then;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,Object? title = freezed,}) {
  return _then(DashboardAlertSection(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AlertModel,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
