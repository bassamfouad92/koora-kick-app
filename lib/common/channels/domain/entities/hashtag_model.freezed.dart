// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hashtag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HashtagModel {

 String get id; String get tag; int get threadCount;
/// Create a copy of HashtagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HashtagModelCopyWith<HashtagModel> get copyWith => _$HashtagModelCopyWithImpl<HashtagModel>(this as HashtagModel, _$identity);

  /// Serializes this HashtagModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashtagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.threadCount, threadCount) || other.threadCount == threadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tag,threadCount);

@override
String toString() {
  return 'HashtagModel(id: $id, tag: $tag, threadCount: $threadCount)';
}


}

/// @nodoc
abstract mixin class $HashtagModelCopyWith<$Res>  {
  factory $HashtagModelCopyWith(HashtagModel value, $Res Function(HashtagModel) _then) = _$HashtagModelCopyWithImpl;
@useResult
$Res call({
 String id, String tag, int threadCount
});




}
/// @nodoc
class _$HashtagModelCopyWithImpl<$Res>
    implements $HashtagModelCopyWith<$Res> {
  _$HashtagModelCopyWithImpl(this._self, this._then);

  final HashtagModel _self;
  final $Res Function(HashtagModel) _then;

/// Create a copy of HashtagModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tag = null,Object? threadCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,threadCount: null == threadCount ? _self.threadCount : threadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HashtagModel].
extension HashtagModelPatterns on HashtagModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HashtagModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HashtagModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HashtagModel value)  $default,){
final _that = this;
switch (_that) {
case _HashtagModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HashtagModel value)?  $default,){
final _that = this;
switch (_that) {
case _HashtagModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String tag,  int threadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HashtagModel() when $default != null:
return $default(_that.id,_that.tag,_that.threadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String tag,  int threadCount)  $default,) {final _that = this;
switch (_that) {
case _HashtagModel():
return $default(_that.id,_that.tag,_that.threadCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String tag,  int threadCount)?  $default,) {final _that = this;
switch (_that) {
case _HashtagModel() when $default != null:
return $default(_that.id,_that.tag,_that.threadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HashtagModel implements HashtagModel {
  const _HashtagModel({required this.id, required this.tag, this.threadCount = 0});
  factory _HashtagModel.fromJson(Map<String, dynamic> json) => _$HashtagModelFromJson(json);

@override final  String id;
@override final  String tag;
@override@JsonKey() final  int threadCount;

/// Create a copy of HashtagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HashtagModelCopyWith<_HashtagModel> get copyWith => __$HashtagModelCopyWithImpl<_HashtagModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HashtagModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HashtagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.threadCount, threadCount) || other.threadCount == threadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tag,threadCount);

@override
String toString() {
  return 'HashtagModel(id: $id, tag: $tag, threadCount: $threadCount)';
}


}

/// @nodoc
abstract mixin class _$HashtagModelCopyWith<$Res> implements $HashtagModelCopyWith<$Res> {
  factory _$HashtagModelCopyWith(_HashtagModel value, $Res Function(_HashtagModel) _then) = __$HashtagModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String tag, int threadCount
});




}
/// @nodoc
class __$HashtagModelCopyWithImpl<$Res>
    implements _$HashtagModelCopyWith<$Res> {
  __$HashtagModelCopyWithImpl(this._self, this._then);

  final _HashtagModel _self;
  final $Res Function(_HashtagModel) _then;

/// Create a copy of HashtagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tag = null,Object? threadCount = null,}) {
  return _then(_HashtagModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,threadCount: null == threadCount ? _self.threadCount : threadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LikeResult {

 int get likeCount; bool get isLiked;
/// Create a copy of LikeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeResultCopyWith<LikeResult> get copyWith => _$LikeResultCopyWithImpl<LikeResult>(this as LikeResult, _$identity);

  /// Serializes this LikeResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeResult&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeCount,isLiked);

@override
String toString() {
  return 'LikeResult(likeCount: $likeCount, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class $LikeResultCopyWith<$Res>  {
  factory $LikeResultCopyWith(LikeResult value, $Res Function(LikeResult) _then) = _$LikeResultCopyWithImpl;
@useResult
$Res call({
 int likeCount, bool isLiked
});




}
/// @nodoc
class _$LikeResultCopyWithImpl<$Res>
    implements $LikeResultCopyWith<$Res> {
  _$LikeResultCopyWithImpl(this._self, this._then);

  final LikeResult _self;
  final $Res Function(LikeResult) _then;

/// Create a copy of LikeResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likeCount = null,Object? isLiked = null,}) {
  return _then(_self.copyWith(
likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LikeResult].
extension LikeResultPatterns on LikeResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LikeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikeResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LikeResult value)  $default,){
final _that = this;
switch (_that) {
case _LikeResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LikeResult value)?  $default,){
final _that = this;
switch (_that) {
case _LikeResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int likeCount,  bool isLiked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikeResult() when $default != null:
return $default(_that.likeCount,_that.isLiked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int likeCount,  bool isLiked)  $default,) {final _that = this;
switch (_that) {
case _LikeResult():
return $default(_that.likeCount,_that.isLiked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int likeCount,  bool isLiked)?  $default,) {final _that = this;
switch (_that) {
case _LikeResult() when $default != null:
return $default(_that.likeCount,_that.isLiked);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LikeResult implements LikeResult {
  const _LikeResult({this.likeCount = 0, this.isLiked = false});
  factory _LikeResult.fromJson(Map<String, dynamic> json) => _$LikeResultFromJson(json);

@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLiked;

/// Create a copy of LikeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeResultCopyWith<_LikeResult> get copyWith => __$LikeResultCopyWithImpl<_LikeResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LikeResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeResult&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,likeCount,isLiked);

@override
String toString() {
  return 'LikeResult(likeCount: $likeCount, isLiked: $isLiked)';
}


}

/// @nodoc
abstract mixin class _$LikeResultCopyWith<$Res> implements $LikeResultCopyWith<$Res> {
  factory _$LikeResultCopyWith(_LikeResult value, $Res Function(_LikeResult) _then) = __$LikeResultCopyWithImpl;
@override @useResult
$Res call({
 int likeCount, bool isLiked
});




}
/// @nodoc
class __$LikeResultCopyWithImpl<$Res>
    implements _$LikeResultCopyWith<$Res> {
  __$LikeResultCopyWithImpl(this._self, this._then);

  final _LikeResult _self;
  final $Res Function(_LikeResult) _then;

/// Create a copy of LikeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likeCount = null,Object? isLiked = null,}) {
  return _then(_LikeResult(
likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
