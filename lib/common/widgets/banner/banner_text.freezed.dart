// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BannerText {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerText);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BannerText()';
}


}

/// @nodoc
class $BannerTextCopyWith<$Res>  {
$BannerTextCopyWith(BannerText _, $Res Function(BannerText) __);
}


/// Adds pattern-matching-related methods to [BannerText].
extension BannerTextPatterns on BannerText {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TitleOnly value)?  titleOnly,TResult Function( SubtextOnly value)?  subtextOnly,TResult Function( TitleAndSubtext value)?  titleAndSubtext,TResult Function( Rich value)?  rich,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TitleOnly() when titleOnly != null:
return titleOnly(_that);case SubtextOnly() when subtextOnly != null:
return subtextOnly(_that);case TitleAndSubtext() when titleAndSubtext != null:
return titleAndSubtext(_that);case Rich() when rich != null:
return rich(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TitleOnly value)  titleOnly,required TResult Function( SubtextOnly value)  subtextOnly,required TResult Function( TitleAndSubtext value)  titleAndSubtext,required TResult Function( Rich value)  rich,}){
final _that = this;
switch (_that) {
case TitleOnly():
return titleOnly(_that);case SubtextOnly():
return subtextOnly(_that);case TitleAndSubtext():
return titleAndSubtext(_that);case Rich():
return rich(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TitleOnly value)?  titleOnly,TResult? Function( SubtextOnly value)?  subtextOnly,TResult? Function( TitleAndSubtext value)?  titleAndSubtext,TResult? Function( Rich value)?  rich,}){
final _that = this;
switch (_that) {
case TitleOnly() when titleOnly != null:
return titleOnly(_that);case SubtextOnly() when subtextOnly != null:
return subtextOnly(_that);case TitleAndSubtext() when titleAndSubtext != null:
return titleAndSubtext(_that);case Rich() when rich != null:
return rich(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  Color? titleColor)?  titleOnly,TResult Function( String subtext,  Color? subTextTitleColor)?  subtextOnly,TResult Function( String title,  String subtext,  Color? titleColor,  Color? subTextTitleColor)?  titleAndSubtext,TResult Function( AppRichTextBuilder builder)?  rich,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TitleOnly() when titleOnly != null:
return titleOnly(_that.title,_that.titleColor);case SubtextOnly() when subtextOnly != null:
return subtextOnly(_that.subtext,_that.subTextTitleColor);case TitleAndSubtext() when titleAndSubtext != null:
return titleAndSubtext(_that.title,_that.subtext,_that.titleColor,_that.subTextTitleColor);case Rich() when rich != null:
return rich(_that.builder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  Color? titleColor)  titleOnly,required TResult Function( String subtext,  Color? subTextTitleColor)  subtextOnly,required TResult Function( String title,  String subtext,  Color? titleColor,  Color? subTextTitleColor)  titleAndSubtext,required TResult Function( AppRichTextBuilder builder)  rich,}) {final _that = this;
switch (_that) {
case TitleOnly():
return titleOnly(_that.title,_that.titleColor);case SubtextOnly():
return subtextOnly(_that.subtext,_that.subTextTitleColor);case TitleAndSubtext():
return titleAndSubtext(_that.title,_that.subtext,_that.titleColor,_that.subTextTitleColor);case Rich():
return rich(_that.builder);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  Color? titleColor)?  titleOnly,TResult? Function( String subtext,  Color? subTextTitleColor)?  subtextOnly,TResult? Function( String title,  String subtext,  Color? titleColor,  Color? subTextTitleColor)?  titleAndSubtext,TResult? Function( AppRichTextBuilder builder)?  rich,}) {final _that = this;
switch (_that) {
case TitleOnly() when titleOnly != null:
return titleOnly(_that.title,_that.titleColor);case SubtextOnly() when subtextOnly != null:
return subtextOnly(_that.subtext,_that.subTextTitleColor);case TitleAndSubtext() when titleAndSubtext != null:
return titleAndSubtext(_that.title,_that.subtext,_that.titleColor,_that.subTextTitleColor);case Rich() when rich != null:
return rich(_that.builder);case _:
  return null;

}
}

}

/// @nodoc


class TitleOnly implements BannerText {
  const TitleOnly({required this.title, this.titleColor});
  

 final  String title;
 final  Color? titleColor;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleOnlyCopyWith<TitleOnly> get copyWith => _$TitleOnlyCopyWithImpl<TitleOnly>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitleOnly&&(identical(other.title, title) || other.title == title)&&(identical(other.titleColor, titleColor) || other.titleColor == titleColor));
}


@override
int get hashCode => Object.hash(runtimeType,title,titleColor);

@override
String toString() {
  return 'BannerText.titleOnly(title: $title, titleColor: $titleColor)';
}


}

/// @nodoc
abstract mixin class $TitleOnlyCopyWith<$Res> implements $BannerTextCopyWith<$Res> {
  factory $TitleOnlyCopyWith(TitleOnly value, $Res Function(TitleOnly) _then) = _$TitleOnlyCopyWithImpl;
@useResult
$Res call({
 String title, Color? titleColor
});




}
/// @nodoc
class _$TitleOnlyCopyWithImpl<$Res>
    implements $TitleOnlyCopyWith<$Res> {
  _$TitleOnlyCopyWithImpl(this._self, this._then);

  final TitleOnly _self;
  final $Res Function(TitleOnly) _then;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? titleColor = freezed,}) {
  return _then(TitleOnly(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleColor: freezed == titleColor ? _self.titleColor : titleColor // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}


}

/// @nodoc


class SubtextOnly implements BannerText {
  const SubtextOnly({required this.subtext, this.subTextTitleColor});
  

 final  String subtext;
 final  Color? subTextTitleColor;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubtextOnlyCopyWith<SubtextOnly> get copyWith => _$SubtextOnlyCopyWithImpl<SubtextOnly>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubtextOnly&&(identical(other.subtext, subtext) || other.subtext == subtext)&&(identical(other.subTextTitleColor, subTextTitleColor) || other.subTextTitleColor == subTextTitleColor));
}


@override
int get hashCode => Object.hash(runtimeType,subtext,subTextTitleColor);

@override
String toString() {
  return 'BannerText.subtextOnly(subtext: $subtext, subTextTitleColor: $subTextTitleColor)';
}


}

/// @nodoc
abstract mixin class $SubtextOnlyCopyWith<$Res> implements $BannerTextCopyWith<$Res> {
  factory $SubtextOnlyCopyWith(SubtextOnly value, $Res Function(SubtextOnly) _then) = _$SubtextOnlyCopyWithImpl;
@useResult
$Res call({
 String subtext, Color? subTextTitleColor
});




}
/// @nodoc
class _$SubtextOnlyCopyWithImpl<$Res>
    implements $SubtextOnlyCopyWith<$Res> {
  _$SubtextOnlyCopyWithImpl(this._self, this._then);

  final SubtextOnly _self;
  final $Res Function(SubtextOnly) _then;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? subtext = null,Object? subTextTitleColor = freezed,}) {
  return _then(SubtextOnly(
subtext: null == subtext ? _self.subtext : subtext // ignore: cast_nullable_to_non_nullable
as String,subTextTitleColor: freezed == subTextTitleColor ? _self.subTextTitleColor : subTextTitleColor // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}


}

/// @nodoc


class TitleAndSubtext implements BannerText {
  const TitleAndSubtext({required this.title, required this.subtext, this.titleColor, this.subTextTitleColor});
  

 final  String title;
 final  String subtext;
 final  Color? titleColor;
 final  Color? subTextTitleColor;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleAndSubtextCopyWith<TitleAndSubtext> get copyWith => _$TitleAndSubtextCopyWithImpl<TitleAndSubtext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitleAndSubtext&&(identical(other.title, title) || other.title == title)&&(identical(other.subtext, subtext) || other.subtext == subtext)&&(identical(other.titleColor, titleColor) || other.titleColor == titleColor)&&(identical(other.subTextTitleColor, subTextTitleColor) || other.subTextTitleColor == subTextTitleColor));
}


@override
int get hashCode => Object.hash(runtimeType,title,subtext,titleColor,subTextTitleColor);

@override
String toString() {
  return 'BannerText.titleAndSubtext(title: $title, subtext: $subtext, titleColor: $titleColor, subTextTitleColor: $subTextTitleColor)';
}


}

/// @nodoc
abstract mixin class $TitleAndSubtextCopyWith<$Res> implements $BannerTextCopyWith<$Res> {
  factory $TitleAndSubtextCopyWith(TitleAndSubtext value, $Res Function(TitleAndSubtext) _then) = _$TitleAndSubtextCopyWithImpl;
@useResult
$Res call({
 String title, String subtext, Color? titleColor, Color? subTextTitleColor
});




}
/// @nodoc
class _$TitleAndSubtextCopyWithImpl<$Res>
    implements $TitleAndSubtextCopyWith<$Res> {
  _$TitleAndSubtextCopyWithImpl(this._self, this._then);

  final TitleAndSubtext _self;
  final $Res Function(TitleAndSubtext) _then;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtext = null,Object? titleColor = freezed,Object? subTextTitleColor = freezed,}) {
  return _then(TitleAndSubtext(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtext: null == subtext ? _self.subtext : subtext // ignore: cast_nullable_to_non_nullable
as String,titleColor: freezed == titleColor ? _self.titleColor : titleColor // ignore: cast_nullable_to_non_nullable
as Color?,subTextTitleColor: freezed == subTextTitleColor ? _self.subTextTitleColor : subTextTitleColor // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}


}

/// @nodoc


class Rich implements BannerText {
  const Rich(this.builder);
  

 final  AppRichTextBuilder builder;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RichCopyWith<Rich> get copyWith => _$RichCopyWithImpl<Rich>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rich&&(identical(other.builder, builder) || other.builder == builder));
}


@override
int get hashCode => Object.hash(runtimeType,builder);

@override
String toString() {
  return 'BannerText.rich(builder: $builder)';
}


}

/// @nodoc
abstract mixin class $RichCopyWith<$Res> implements $BannerTextCopyWith<$Res> {
  factory $RichCopyWith(Rich value, $Res Function(Rich) _then) = _$RichCopyWithImpl;
@useResult
$Res call({
 AppRichTextBuilder builder
});




}
/// @nodoc
class _$RichCopyWithImpl<$Res>
    implements $RichCopyWith<$Res> {
  _$RichCopyWithImpl(this._self, this._then);

  final Rich _self;
  final $Res Function(Rich) _then;

/// Create a copy of BannerText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? builder = null,}) {
  return _then(Rich(
null == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as AppRichTextBuilder,
  ));
}


}

// dart format on
