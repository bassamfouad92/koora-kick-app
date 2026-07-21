// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThreadAuthor {

 String get id; String get name; String? get photo;
/// Create a copy of ThreadAuthor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadAuthorCopyWith<ThreadAuthor> get copyWith => _$ThreadAuthorCopyWithImpl<ThreadAuthor>(this as ThreadAuthor, _$identity);

  /// Serializes this ThreadAuthor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadAuthor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo);

@override
String toString() {
  return 'ThreadAuthor(id: $id, name: $name, photo: $photo)';
}


}

/// @nodoc
abstract mixin class $ThreadAuthorCopyWith<$Res>  {
  factory $ThreadAuthorCopyWith(ThreadAuthor value, $Res Function(ThreadAuthor) _then) = _$ThreadAuthorCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? photo
});




}
/// @nodoc
class _$ThreadAuthorCopyWithImpl<$Res>
    implements $ThreadAuthorCopyWith<$Res> {
  _$ThreadAuthorCopyWithImpl(this._self, this._then);

  final ThreadAuthor _self;
  final $Res Function(ThreadAuthor) _then;

/// Create a copy of ThreadAuthor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photo = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ThreadAuthor].
extension ThreadAuthorPatterns on ThreadAuthor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadAuthor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadAuthor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadAuthor value)  $default,){
final _that = this;
switch (_that) {
case _ThreadAuthor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadAuthor value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadAuthor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? photo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadAuthor() when $default != null:
return $default(_that.id,_that.name,_that.photo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? photo)  $default,) {final _that = this;
switch (_that) {
case _ThreadAuthor():
return $default(_that.id,_that.name,_that.photo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? photo)?  $default,) {final _that = this;
switch (_that) {
case _ThreadAuthor() when $default != null:
return $default(_that.id,_that.name,_that.photo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadAuthor implements ThreadAuthor {
  const _ThreadAuthor({required this.id, required this.name, this.photo});
  factory _ThreadAuthor.fromJson(Map<String, dynamic> json) => _$ThreadAuthorFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? photo;

/// Create a copy of ThreadAuthor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadAuthorCopyWith<_ThreadAuthor> get copyWith => __$ThreadAuthorCopyWithImpl<_ThreadAuthor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadAuthorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadAuthor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo);

@override
String toString() {
  return 'ThreadAuthor(id: $id, name: $name, photo: $photo)';
}


}

/// @nodoc
abstract mixin class _$ThreadAuthorCopyWith<$Res> implements $ThreadAuthorCopyWith<$Res> {
  factory _$ThreadAuthorCopyWith(_ThreadAuthor value, $Res Function(_ThreadAuthor) _then) = __$ThreadAuthorCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? photo
});




}
/// @nodoc
class __$ThreadAuthorCopyWithImpl<$Res>
    implements _$ThreadAuthorCopyWith<$Res> {
  __$ThreadAuthorCopyWithImpl(this._self, this._then);

  final _ThreadAuthor _self;
  final $Res Function(_ThreadAuthor) _then;

/// Create a copy of ThreadAuthor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photo = freezed,}) {
  return _then(_ThreadAuthor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ThreadChannelRef {

 String get id; String get name; String? get slug;
/// Create a copy of ThreadChannelRef
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadChannelRefCopyWith<ThreadChannelRef> get copyWith => _$ThreadChannelRefCopyWithImpl<ThreadChannelRef>(this as ThreadChannelRef, _$identity);

  /// Serializes this ThreadChannelRef to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadChannelRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'ThreadChannelRef(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $ThreadChannelRefCopyWith<$Res>  {
  factory $ThreadChannelRefCopyWith(ThreadChannelRef value, $Res Function(ThreadChannelRef) _then) = _$ThreadChannelRefCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug
});




}
/// @nodoc
class _$ThreadChannelRefCopyWithImpl<$Res>
    implements $ThreadChannelRefCopyWith<$Res> {
  _$ThreadChannelRefCopyWithImpl(this._self, this._then);

  final ThreadChannelRef _self;
  final $Res Function(ThreadChannelRef) _then;

/// Create a copy of ThreadChannelRef
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ThreadChannelRef].
extension ThreadChannelRefPatterns on ThreadChannelRef {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadChannelRef value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadChannelRef() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadChannelRef value)  $default,){
final _that = this;
switch (_that) {
case _ThreadChannelRef():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadChannelRef value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadChannelRef() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadChannelRef() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug)  $default,) {final _that = this;
switch (_that) {
case _ThreadChannelRef():
return $default(_that.id,_that.name,_that.slug);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug)?  $default,) {final _that = this;
switch (_that) {
case _ThreadChannelRef() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadChannelRef implements ThreadChannelRef {
  const _ThreadChannelRef({required this.id, required this.name, this.slug});
  factory _ThreadChannelRef.fromJson(Map<String, dynamic> json) => _$ThreadChannelRefFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;

/// Create a copy of ThreadChannelRef
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadChannelRefCopyWith<_ThreadChannelRef> get copyWith => __$ThreadChannelRefCopyWithImpl<_ThreadChannelRef>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadChannelRefToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadChannelRef&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'ThreadChannelRef(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$ThreadChannelRefCopyWith<$Res> implements $ThreadChannelRefCopyWith<$Res> {
  factory _$ThreadChannelRefCopyWith(_ThreadChannelRef value, $Res Function(_ThreadChannelRef) _then) = __$ThreadChannelRefCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug
});




}
/// @nodoc
class __$ThreadChannelRefCopyWithImpl<$Res>
    implements _$ThreadChannelRefCopyWith<$Res> {
  __$ThreadChannelRefCopyWithImpl(this._self, this._then);

  final _ThreadChannelRef _self;
  final $Res Function(_ThreadChannelRef) _then;

/// Create a copy of ThreadChannelRef
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,}) {
  return _then(_ThreadChannelRef(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ThreadModel {

 String get id; String get title; String? get description; ThreadStatus get status; String get channelId; String get authorId; ThreadAuthor? get author; ThreadChannelRef? get channel; List<String> get hashtags; int get replyCount; int get likeCount; bool get isLiked; DateTime? get createdAt;
/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadModelCopyWith<ThreadModel> get copyWith => _$ThreadModelCopyWithImpl<ThreadModel>(this as ThreadModel, _$identity);

  /// Serializes this ThreadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.author, author) || other.author == author)&&(identical(other.channel, channel) || other.channel == channel)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status,channelId,authorId,author,channel,const DeepCollectionEquality().hash(hashtags),replyCount,likeCount,isLiked,createdAt);

@override
String toString() {
  return 'ThreadModel(id: $id, title: $title, description: $description, status: $status, channelId: $channelId, authorId: $authorId, author: $author, channel: $channel, hashtags: $hashtags, replyCount: $replyCount, likeCount: $likeCount, isLiked: $isLiked, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ThreadModelCopyWith<$Res>  {
  factory $ThreadModelCopyWith(ThreadModel value, $Res Function(ThreadModel) _then) = _$ThreadModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, ThreadStatus status, String channelId, String authorId, ThreadAuthor? author, ThreadChannelRef? channel, List<String> hashtags, int replyCount, int likeCount, bool isLiked, DateTime? createdAt
});


$ThreadAuthorCopyWith<$Res>? get author;$ThreadChannelRefCopyWith<$Res>? get channel;

}
/// @nodoc
class _$ThreadModelCopyWithImpl<$Res>
    implements $ThreadModelCopyWith<$Res> {
  _$ThreadModelCopyWithImpl(this._self, this._then);

  final ThreadModel _self;
  final $Res Function(ThreadModel) _then;

/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? status = null,Object? channelId = null,Object? authorId = null,Object? author = freezed,Object? channel = freezed,Object? hashtags = null,Object? replyCount = null,Object? likeCount = null,Object? isLiked = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ThreadStatus,channelId: null == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ThreadAuthor?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as ThreadChannelRef?,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadAuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $ThreadAuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadChannelRefCopyWith<$Res>? get channel {
    if (_self.channel == null) {
    return null;
  }

  return $ThreadChannelRefCopyWith<$Res>(_self.channel!, (value) {
    return _then(_self.copyWith(channel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ThreadModel].
extension ThreadModelPatterns on ThreadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadModel value)  $default,){
final _that = this;
switch (_that) {
case _ThreadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadModel value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  ThreadStatus status,  String channelId,  String authorId,  ThreadAuthor? author,  ThreadChannelRef? channel,  List<String> hashtags,  int replyCount,  int likeCount,  bool isLiked,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.channelId,_that.authorId,_that.author,_that.channel,_that.hashtags,_that.replyCount,_that.likeCount,_that.isLiked,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  ThreadStatus status,  String channelId,  String authorId,  ThreadAuthor? author,  ThreadChannelRef? channel,  List<String> hashtags,  int replyCount,  int likeCount,  bool isLiked,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ThreadModel():
return $default(_that.id,_that.title,_that.description,_that.status,_that.channelId,_that.authorId,_that.author,_that.channel,_that.hashtags,_that.replyCount,_that.likeCount,_that.isLiked,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? description,  ThreadStatus status,  String channelId,  String authorId,  ThreadAuthor? author,  ThreadChannelRef? channel,  List<String> hashtags,  int replyCount,  int likeCount,  bool isLiked,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ThreadModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.channelId,_that.authorId,_that.author,_that.channel,_that.hashtags,_that.replyCount,_that.likeCount,_that.isLiked,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadModel implements ThreadModel {
  const _ThreadModel({required this.id, required this.title, this.description, this.status = ThreadStatus.pending, required this.channelId, required this.authorId, this.author, this.channel, final  List<String> hashtags = const [], this.replyCount = 0, this.likeCount = 0, this.isLiked = false, this.createdAt}): _hashtags = hashtags;
  factory _ThreadModel.fromJson(Map<String, dynamic> json) => _$ThreadModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
@override@JsonKey() final  ThreadStatus status;
@override final  String channelId;
@override final  String authorId;
@override final  ThreadAuthor? author;
@override final  ThreadChannelRef? channel;
 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override@JsonKey() final  int replyCount;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLiked;
@override final  DateTime? createdAt;

/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadModelCopyWith<_ThreadModel> get copyWith => __$ThreadModelCopyWithImpl<_ThreadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.author, author) || other.author == author)&&(identical(other.channel, channel) || other.channel == channel)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,status,channelId,authorId,author,channel,const DeepCollectionEquality().hash(_hashtags),replyCount,likeCount,isLiked,createdAt);

@override
String toString() {
  return 'ThreadModel(id: $id, title: $title, description: $description, status: $status, channelId: $channelId, authorId: $authorId, author: $author, channel: $channel, hashtags: $hashtags, replyCount: $replyCount, likeCount: $likeCount, isLiked: $isLiked, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ThreadModelCopyWith<$Res> implements $ThreadModelCopyWith<$Res> {
  factory _$ThreadModelCopyWith(_ThreadModel value, $Res Function(_ThreadModel) _then) = __$ThreadModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, ThreadStatus status, String channelId, String authorId, ThreadAuthor? author, ThreadChannelRef? channel, List<String> hashtags, int replyCount, int likeCount, bool isLiked, DateTime? createdAt
});


@override $ThreadAuthorCopyWith<$Res>? get author;@override $ThreadChannelRefCopyWith<$Res>? get channel;

}
/// @nodoc
class __$ThreadModelCopyWithImpl<$Res>
    implements _$ThreadModelCopyWith<$Res> {
  __$ThreadModelCopyWithImpl(this._self, this._then);

  final _ThreadModel _self;
  final $Res Function(_ThreadModel) _then;

/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? status = null,Object? channelId = null,Object? authorId = null,Object? author = freezed,Object? channel = freezed,Object? hashtags = null,Object? replyCount = null,Object? likeCount = null,Object? isLiked = null,Object? createdAt = freezed,}) {
  return _then(_ThreadModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ThreadStatus,channelId: null == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ThreadAuthor?,channel: freezed == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as ThreadChannelRef?,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadAuthorCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $ThreadAuthorCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}/// Create a copy of ThreadModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ThreadChannelRefCopyWith<$Res>? get channel {
    if (_self.channel == null) {
    return null;
  }

  return $ThreadChannelRefCopyWith<$Res>(_self.channel!, (value) {
    return _then(_self.copyWith(channel: value));
  });
}
}


/// @nodoc
mixin _$ThreadsPage {

 List<ThreadModel> get threads;
/// Create a copy of ThreadsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThreadsPageCopyWith<ThreadsPage> get copyWith => _$ThreadsPageCopyWithImpl<ThreadsPage>(this as ThreadsPage, _$identity);

  /// Serializes this ThreadsPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThreadsPage&&const DeepCollectionEquality().equals(other.threads, threads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(threads));

@override
String toString() {
  return 'ThreadsPage(threads: $threads)';
}


}

/// @nodoc
abstract mixin class $ThreadsPageCopyWith<$Res>  {
  factory $ThreadsPageCopyWith(ThreadsPage value, $Res Function(ThreadsPage) _then) = _$ThreadsPageCopyWithImpl;
@useResult
$Res call({
 List<ThreadModel> threads
});




}
/// @nodoc
class _$ThreadsPageCopyWithImpl<$Res>
    implements $ThreadsPageCopyWith<$Res> {
  _$ThreadsPageCopyWithImpl(this._self, this._then);

  final ThreadsPage _self;
  final $Res Function(ThreadsPage) _then;

/// Create a copy of ThreadsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? threads = null,}) {
  return _then(_self.copyWith(
threads: null == threads ? _self.threads : threads // ignore: cast_nullable_to_non_nullable
as List<ThreadModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ThreadsPage].
extension ThreadsPagePatterns on ThreadsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThreadsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThreadsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThreadsPage value)  $default,){
final _that = this;
switch (_that) {
case _ThreadsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThreadsPage value)?  $default,){
final _that = this;
switch (_that) {
case _ThreadsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ThreadModel> threads)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThreadsPage() when $default != null:
return $default(_that.threads);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ThreadModel> threads)  $default,) {final _that = this;
switch (_that) {
case _ThreadsPage():
return $default(_that.threads);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ThreadModel> threads)?  $default,) {final _that = this;
switch (_that) {
case _ThreadsPage() when $default != null:
return $default(_that.threads);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThreadsPage implements ThreadsPage {
  const _ThreadsPage({final  List<ThreadModel> threads = const []}): _threads = threads;
  factory _ThreadsPage.fromJson(Map<String, dynamic> json) => _$ThreadsPageFromJson(json);

 final  List<ThreadModel> _threads;
@override@JsonKey() List<ThreadModel> get threads {
  if (_threads is EqualUnmodifiableListView) return _threads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_threads);
}


/// Create a copy of ThreadsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThreadsPageCopyWith<_ThreadsPage> get copyWith => __$ThreadsPageCopyWithImpl<_ThreadsPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThreadsPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThreadsPage&&const DeepCollectionEquality().equals(other._threads, _threads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_threads));

@override
String toString() {
  return 'ThreadsPage(threads: $threads)';
}


}

/// @nodoc
abstract mixin class _$ThreadsPageCopyWith<$Res> implements $ThreadsPageCopyWith<$Res> {
  factory _$ThreadsPageCopyWith(_ThreadsPage value, $Res Function(_ThreadsPage) _then) = __$ThreadsPageCopyWithImpl;
@override @useResult
$Res call({
 List<ThreadModel> threads
});




}
/// @nodoc
class __$ThreadsPageCopyWithImpl<$Res>
    implements _$ThreadsPageCopyWith<$Res> {
  __$ThreadsPageCopyWithImpl(this._self, this._then);

  final _ThreadsPage _self;
  final $Res Function(_ThreadsPage) _then;

/// Create a copy of ThreadsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? threads = null,}) {
  return _then(_ThreadsPage(
threads: null == threads ? _self._threads : threads // ignore: cast_nullable_to_non_nullable
as List<ThreadModel>,
  ));
}


}

// dart format on
