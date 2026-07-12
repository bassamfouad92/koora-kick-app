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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardSection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardSection()';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DashboardHeaderSection value)?  header,TResult Function( DashboardLauncherSection value)?  launcher,TResult Function( DashboardChannelsSection value)?  channels,TResult Function( DashboardMatchUpdatesSection value)?  matchUpdates,TResult Function( DashboardNewsSection value)?  news,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DashboardHeaderSection() when header != null:
return header(_that);case DashboardLauncherSection() when launcher != null:
return launcher(_that);case DashboardChannelsSection() when channels != null:
return channels(_that);case DashboardMatchUpdatesSection() when matchUpdates != null:
return matchUpdates(_that);case DashboardNewsSection() when news != null:
return news(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DashboardHeaderSection value)  header,required TResult Function( DashboardLauncherSection value)  launcher,required TResult Function( DashboardChannelsSection value)  channels,required TResult Function( DashboardMatchUpdatesSection value)  matchUpdates,required TResult Function( DashboardNewsSection value)  news,}){
final _that = this;
switch (_that) {
case DashboardHeaderSection():
return header(_that);case DashboardLauncherSection():
return launcher(_that);case DashboardChannelsSection():
return channels(_that);case DashboardMatchUpdatesSection():
return matchUpdates(_that);case DashboardNewsSection():
return news(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DashboardHeaderSection value)?  header,TResult? Function( DashboardLauncherSection value)?  launcher,TResult? Function( DashboardChannelsSection value)?  channels,TResult? Function( DashboardMatchUpdatesSection value)?  matchUpdates,TResult? Function( DashboardNewsSection value)?  news,}){
final _that = this;
switch (_that) {
case DashboardHeaderSection() when header != null:
return header(_that);case DashboardLauncherSection() when launcher != null:
return launcher(_that);case DashboardChannelsSection() when channels != null:
return channels(_that);case DashboardMatchUpdatesSection() when matchUpdates != null:
return matchUpdates(_that);case DashboardNewsSection() when news != null:
return news(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  header,TResult Function()?  launcher,TResult Function( List<ChannelModel> channels)?  channels,TResult Function( List<MatchModel> matches)?  matchUpdates,TResult Function( List<NewsItem> items)?  news,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DashboardHeaderSection() when header != null:
return header();case DashboardLauncherSection() when launcher != null:
return launcher();case DashboardChannelsSection() when channels != null:
return channels(_that.channels);case DashboardMatchUpdatesSection() when matchUpdates != null:
return matchUpdates(_that.matches);case DashboardNewsSection() when news != null:
return news(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  header,required TResult Function()  launcher,required TResult Function( List<ChannelModel> channels)  channels,required TResult Function( List<MatchModel> matches)  matchUpdates,required TResult Function( List<NewsItem> items)  news,}) {final _that = this;
switch (_that) {
case DashboardHeaderSection():
return header();case DashboardLauncherSection():
return launcher();case DashboardChannelsSection():
return channels(_that.channels);case DashboardMatchUpdatesSection():
return matchUpdates(_that.matches);case DashboardNewsSection():
return news(_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  header,TResult? Function()?  launcher,TResult? Function( List<ChannelModel> channels)?  channels,TResult? Function( List<MatchModel> matches)?  matchUpdates,TResult? Function( List<NewsItem> items)?  news,}) {final _that = this;
switch (_that) {
case DashboardHeaderSection() when header != null:
return header();case DashboardLauncherSection() when launcher != null:
return launcher();case DashboardChannelsSection() when channels != null:
return channels(_that.channels);case DashboardMatchUpdatesSection() when matchUpdates != null:
return matchUpdates(_that.matches);case DashboardNewsSection() when news != null:
return news(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class DashboardHeaderSection implements DashboardSection {
  const DashboardHeaderSection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardHeaderSection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardSection.header()';
}


}




/// @nodoc


class DashboardLauncherSection implements DashboardSection {
  const DashboardLauncherSection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardLauncherSection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardSection.launcher()';
}


}




/// @nodoc


class DashboardChannelsSection implements DashboardSection {
  const DashboardChannelsSection({required final  List<ChannelModel> channels}): _channels = channels;
  

 final  List<ChannelModel> _channels;
 List<ChannelModel> get channels {
  if (_channels is EqualUnmodifiableListView) return _channels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_channels);
}


/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardChannelsSectionCopyWith<DashboardChannelsSection> get copyWith => _$DashboardChannelsSectionCopyWithImpl<DashboardChannelsSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardChannelsSection&&const DeepCollectionEquality().equals(other._channels, _channels));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_channels));

@override
String toString() {
  return 'DashboardSection.channels(channels: $channels)';
}


}

/// @nodoc
abstract mixin class $DashboardChannelsSectionCopyWith<$Res> implements $DashboardSectionCopyWith<$Res> {
  factory $DashboardChannelsSectionCopyWith(DashboardChannelsSection value, $Res Function(DashboardChannelsSection) _then) = _$DashboardChannelsSectionCopyWithImpl;
@useResult
$Res call({
 List<ChannelModel> channels
});




}
/// @nodoc
class _$DashboardChannelsSectionCopyWithImpl<$Res>
    implements $DashboardChannelsSectionCopyWith<$Res> {
  _$DashboardChannelsSectionCopyWithImpl(this._self, this._then);

  final DashboardChannelsSection _self;
  final $Res Function(DashboardChannelsSection) _then;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? channels = null,}) {
  return _then(DashboardChannelsSection(
channels: null == channels ? _self._channels : channels // ignore: cast_nullable_to_non_nullable
as List<ChannelModel>,
  ));
}


}

/// @nodoc


class DashboardMatchUpdatesSection implements DashboardSection {
  const DashboardMatchUpdatesSection({required final  List<MatchModel> matches}): _matches = matches;
  

 final  List<MatchModel> _matches;
 List<MatchModel> get matches {
  if (_matches is EqualUnmodifiableListView) return _matches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matches);
}


/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardMatchUpdatesSectionCopyWith<DashboardMatchUpdatesSection> get copyWith => _$DashboardMatchUpdatesSectionCopyWithImpl<DashboardMatchUpdatesSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardMatchUpdatesSection&&const DeepCollectionEquality().equals(other._matches, _matches));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_matches));

@override
String toString() {
  return 'DashboardSection.matchUpdates(matches: $matches)';
}


}

/// @nodoc
abstract mixin class $DashboardMatchUpdatesSectionCopyWith<$Res> implements $DashboardSectionCopyWith<$Res> {
  factory $DashboardMatchUpdatesSectionCopyWith(DashboardMatchUpdatesSection value, $Res Function(DashboardMatchUpdatesSection) _then) = _$DashboardMatchUpdatesSectionCopyWithImpl;
@useResult
$Res call({
 List<MatchModel> matches
});




}
/// @nodoc
class _$DashboardMatchUpdatesSectionCopyWithImpl<$Res>
    implements $DashboardMatchUpdatesSectionCopyWith<$Res> {
  _$DashboardMatchUpdatesSectionCopyWithImpl(this._self, this._then);

  final DashboardMatchUpdatesSection _self;
  final $Res Function(DashboardMatchUpdatesSection) _then;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? matches = null,}) {
  return _then(DashboardMatchUpdatesSection(
matches: null == matches ? _self._matches : matches // ignore: cast_nullable_to_non_nullable
as List<MatchModel>,
  ));
}


}

/// @nodoc


class DashboardNewsSection implements DashboardSection {
  const DashboardNewsSection({required final  List<NewsItem> items}): _items = items;
  

 final  List<NewsItem> _items;
 List<NewsItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardNewsSectionCopyWith<DashboardNewsSection> get copyWith => _$DashboardNewsSectionCopyWithImpl<DashboardNewsSection>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardNewsSection&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'DashboardSection.news(items: $items)';
}


}

/// @nodoc
abstract mixin class $DashboardNewsSectionCopyWith<$Res> implements $DashboardSectionCopyWith<$Res> {
  factory $DashboardNewsSectionCopyWith(DashboardNewsSection value, $Res Function(DashboardNewsSection) _then) = _$DashboardNewsSectionCopyWithImpl;
@useResult
$Res call({
 List<NewsItem> items
});




}
/// @nodoc
class _$DashboardNewsSectionCopyWithImpl<$Res>
    implements $DashboardNewsSectionCopyWith<$Res> {
  _$DashboardNewsSectionCopyWithImpl(this._self, this._then);

  final DashboardNewsSection _self;
  final $Res Function(DashboardNewsSection) _then;

/// Create a copy of DashboardSection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(DashboardNewsSection(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<NewsItem>,
  ));
}


}

// dart format on
