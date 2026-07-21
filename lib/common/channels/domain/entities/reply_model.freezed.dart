// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReplyModel {

 String get id; String get text; String get threadId; String get authorId; ThreadAuthor? get author; int get likeCount; bool get isLiked; DateTime? get createdAt;
/// Create a copy of ReplyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReplyModelCopyWith<ReplyModel> get copyWith => _$ReplyModelCopyWithImpl<ReplyModel>(this as ReplyModel, _$identity);

  /// Serializes this ReplyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReplyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.author, author) || other.author == author)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,threadId,authorId,author,likeCount,isLiked,createdAt);

@override
String toString() {
  return 'ReplyModel(id: $id, text: $text, threadId: $threadId, authorId: $authorId, author: $author, likeCount: $likeCount, isLiked: $isLiked, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReplyModelCopyWith<$Res>  {
  factory $ReplyModelCopyWith(ReplyModel value, $Res Function(ReplyModel) _then) = _$ReplyModelCopyWithImpl;
@useResult
$Res call({
 String id, String text, String threadId, String authorId, ThreadAuthor? author, int likeCount, bool isLiked, DateTime? createdAt
});


$ThreadAuthorCopyWith<$Res>? get author;

}
/// @nodoc
class _$ReplyModelCopyWithImpl<$Res>
    implements $ReplyModelCopyWith<$Res> {
  _$ReplyModelCopyWithImpl(this._self, this._then);

  final ReplyModel _self;
  final $Res Function(ReplyModel) _then;

/// Create a copy of ReplyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? threadId = null,Object? authorId = null,Object? author = freezed,Object? likeCount = null,Object? isLiked = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ThreadAuthor?,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ReplyModel
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
}
}


/// Adds pattern-matching-related methods to [ReplyModel].
extension ReplyModelPatterns on ReplyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReplyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReplyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReplyModel value)  $default,){
final _that = this;
switch (_that) {
case _ReplyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReplyModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReplyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String text,  String threadId,  String authorId,  ThreadAuthor? author,  int likeCount,  bool isLiked,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReplyModel() when $default != null:
return $default(_that.id,_that.text,_that.threadId,_that.authorId,_that.author,_that.likeCount,_that.isLiked,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String text,  String threadId,  String authorId,  ThreadAuthor? author,  int likeCount,  bool isLiked,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReplyModel():
return $default(_that.id,_that.text,_that.threadId,_that.authorId,_that.author,_that.likeCount,_that.isLiked,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String text,  String threadId,  String authorId,  ThreadAuthor? author,  int likeCount,  bool isLiked,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReplyModel() when $default != null:
return $default(_that.id,_that.text,_that.threadId,_that.authorId,_that.author,_that.likeCount,_that.isLiked,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReplyModel implements ReplyModel {
  const _ReplyModel({required this.id, required this.text, required this.threadId, required this.authorId, this.author, this.likeCount = 0, this.isLiked = false, this.createdAt});
  factory _ReplyModel.fromJson(Map<String, dynamic> json) => _$ReplyModelFromJson(json);

@override final  String id;
@override final  String text;
@override final  String threadId;
@override final  String authorId;
@override final  ThreadAuthor? author;
@override@JsonKey() final  int likeCount;
@override@JsonKey() final  bool isLiked;
@override final  DateTime? createdAt;

/// Create a copy of ReplyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReplyModelCopyWith<_ReplyModel> get copyWith => __$ReplyModelCopyWithImpl<_ReplyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReplyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReplyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.author, author) || other.author == author)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,threadId,authorId,author,likeCount,isLiked,createdAt);

@override
String toString() {
  return 'ReplyModel(id: $id, text: $text, threadId: $threadId, authorId: $authorId, author: $author, likeCount: $likeCount, isLiked: $isLiked, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReplyModelCopyWith<$Res> implements $ReplyModelCopyWith<$Res> {
  factory _$ReplyModelCopyWith(_ReplyModel value, $Res Function(_ReplyModel) _then) = __$ReplyModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String text, String threadId, String authorId, ThreadAuthor? author, int likeCount, bool isLiked, DateTime? createdAt
});


@override $ThreadAuthorCopyWith<$Res>? get author;

}
/// @nodoc
class __$ReplyModelCopyWithImpl<$Res>
    implements _$ReplyModelCopyWith<$Res> {
  __$ReplyModelCopyWithImpl(this._self, this._then);

  final _ReplyModel _self;
  final $Res Function(_ReplyModel) _then;

/// Create a copy of ReplyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? threadId = null,Object? authorId = null,Object? author = freezed,Object? likeCount = null,Object? isLiked = null,Object? createdAt = freezed,}) {
  return _then(_ReplyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,authorId: null == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as ThreadAuthor?,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ReplyModel
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
}
}


/// @nodoc
mixin _$RepliesPage {

 List<ReplyModel> get replies;
/// Create a copy of RepliesPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepliesPageCopyWith<RepliesPage> get copyWith => _$RepliesPageCopyWithImpl<RepliesPage>(this as RepliesPage, _$identity);

  /// Serializes this RepliesPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepliesPage&&const DeepCollectionEquality().equals(other.replies, replies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(replies));

@override
String toString() {
  return 'RepliesPage(replies: $replies)';
}


}

/// @nodoc
abstract mixin class $RepliesPageCopyWith<$Res>  {
  factory $RepliesPageCopyWith(RepliesPage value, $Res Function(RepliesPage) _then) = _$RepliesPageCopyWithImpl;
@useResult
$Res call({
 List<ReplyModel> replies
});




}
/// @nodoc
class _$RepliesPageCopyWithImpl<$Res>
    implements $RepliesPageCopyWith<$Res> {
  _$RepliesPageCopyWithImpl(this._self, this._then);

  final RepliesPage _self;
  final $Res Function(RepliesPage) _then;

/// Create a copy of RepliesPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? replies = null,}) {
  return _then(_self.copyWith(
replies: null == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReplyModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [RepliesPage].
extension RepliesPagePatterns on RepliesPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RepliesPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RepliesPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RepliesPage value)  $default,){
final _that = this;
switch (_that) {
case _RepliesPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RepliesPage value)?  $default,){
final _that = this;
switch (_that) {
case _RepliesPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReplyModel> replies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RepliesPage() when $default != null:
return $default(_that.replies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReplyModel> replies)  $default,) {final _that = this;
switch (_that) {
case _RepliesPage():
return $default(_that.replies);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReplyModel> replies)?  $default,) {final _that = this;
switch (_that) {
case _RepliesPage() when $default != null:
return $default(_that.replies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RepliesPage implements RepliesPage {
  const _RepliesPage({final  List<ReplyModel> replies = const []}): _replies = replies;
  factory _RepliesPage.fromJson(Map<String, dynamic> json) => _$RepliesPageFromJson(json);

 final  List<ReplyModel> _replies;
@override@JsonKey() List<ReplyModel> get replies {
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_replies);
}


/// Create a copy of RepliesPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepliesPageCopyWith<_RepliesPage> get copyWith => __$RepliesPageCopyWithImpl<_RepliesPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RepliesPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepliesPage&&const DeepCollectionEquality().equals(other._replies, _replies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_replies));

@override
String toString() {
  return 'RepliesPage(replies: $replies)';
}


}

/// @nodoc
abstract mixin class _$RepliesPageCopyWith<$Res> implements $RepliesPageCopyWith<$Res> {
  factory _$RepliesPageCopyWith(_RepliesPage value, $Res Function(_RepliesPage) _then) = __$RepliesPageCopyWithImpl;
@override @useResult
$Res call({
 List<ReplyModel> replies
});




}
/// @nodoc
class __$RepliesPageCopyWithImpl<$Res>
    implements _$RepliesPageCopyWith<$Res> {
  __$RepliesPageCopyWithImpl(this._self, this._then);

  final _RepliesPage _self;
  final $Res Function(_RepliesPage) _then;

/// Create a copy of RepliesPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? replies = null,}) {
  return _then(_RepliesPage(
replies: null == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReplyModel>,
  ));
}


}

// dart format on
