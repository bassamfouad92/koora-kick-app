// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LanguageItemState {

 AppLanguage get language; String get label;
/// Create a copy of LanguageItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageItemStateCopyWith<LanguageItemState> get copyWith => _$LanguageItemStateCopyWithImpl<LanguageItemState>(this as LanguageItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageItemState&&(identical(other.language, language) || other.language == language)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,language,label);

@override
String toString() {
  return 'LanguageItemState(language: $language, label: $label)';
}


}

/// @nodoc
abstract mixin class $LanguageItemStateCopyWith<$Res>  {
  factory $LanguageItemStateCopyWith(LanguageItemState value, $Res Function(LanguageItemState) _then) = _$LanguageItemStateCopyWithImpl;
@useResult
$Res call({
 AppLanguage language, String label
});




}
/// @nodoc
class _$LanguageItemStateCopyWithImpl<$Res>
    implements $LanguageItemStateCopyWith<$Res> {
  _$LanguageItemStateCopyWithImpl(this._self, this._then);

  final LanguageItemState _self;
  final $Res Function(LanguageItemState) _then;

/// Create a copy of LanguageItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,Object? label = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageItemState].
extension LanguageItemStatePatterns on LanguageItemState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SelectedLanguage value)?  selected,TResult Function( UnselectedLanguage value)?  unselected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SelectedLanguage() when selected != null:
return selected(_that);case UnselectedLanguage() when unselected != null:
return unselected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SelectedLanguage value)  selected,required TResult Function( UnselectedLanguage value)  unselected,}){
final _that = this;
switch (_that) {
case SelectedLanguage():
return selected(_that);case UnselectedLanguage():
return unselected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SelectedLanguage value)?  selected,TResult? Function( UnselectedLanguage value)?  unselected,}){
final _that = this;
switch (_that) {
case SelectedLanguage() when selected != null:
return selected(_that);case UnselectedLanguage() when unselected != null:
return unselected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppLanguage language,  String label)?  selected,TResult Function( AppLanguage language,  String label)?  unselected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SelectedLanguage() when selected != null:
return selected(_that.language,_that.label);case UnselectedLanguage() when unselected != null:
return unselected(_that.language,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppLanguage language,  String label)  selected,required TResult Function( AppLanguage language,  String label)  unselected,}) {final _that = this;
switch (_that) {
case SelectedLanguage():
return selected(_that.language,_that.label);case UnselectedLanguage():
return unselected(_that.language,_that.label);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppLanguage language,  String label)?  selected,TResult? Function( AppLanguage language,  String label)?  unselected,}) {final _that = this;
switch (_that) {
case SelectedLanguage() when selected != null:
return selected(_that.language,_that.label);case UnselectedLanguage() when unselected != null:
return unselected(_that.language,_that.label);case _:
  return null;

}
}

}

/// @nodoc


class SelectedLanguage implements LanguageItemState {
  const SelectedLanguage({required this.language, required this.label});
  

@override final  AppLanguage language;
@override final  String label;

/// Create a copy of LanguageItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectedLanguageCopyWith<SelectedLanguage> get copyWith => _$SelectedLanguageCopyWithImpl<SelectedLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectedLanguage&&(identical(other.language, language) || other.language == language)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,language,label);

@override
String toString() {
  return 'LanguageItemState.selected(language: $language, label: $label)';
}


}

/// @nodoc
abstract mixin class $SelectedLanguageCopyWith<$Res> implements $LanguageItemStateCopyWith<$Res> {
  factory $SelectedLanguageCopyWith(SelectedLanguage value, $Res Function(SelectedLanguage) _then) = _$SelectedLanguageCopyWithImpl;
@override @useResult
$Res call({
 AppLanguage language, String label
});




}
/// @nodoc
class _$SelectedLanguageCopyWithImpl<$Res>
    implements $SelectedLanguageCopyWith<$Res> {
  _$SelectedLanguageCopyWithImpl(this._self, this._then);

  final SelectedLanguage _self;
  final $Res Function(SelectedLanguage) _then;

/// Create a copy of LanguageItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? label = null,}) {
  return _then(SelectedLanguage(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnselectedLanguage implements LanguageItemState {
  const UnselectedLanguage({required this.language, required this.label});
  

@override final  AppLanguage language;
@override final  String label;

/// Create a copy of LanguageItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnselectedLanguageCopyWith<UnselectedLanguage> get copyWith => _$UnselectedLanguageCopyWithImpl<UnselectedLanguage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnselectedLanguage&&(identical(other.language, language) || other.language == language)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,language,label);

@override
String toString() {
  return 'LanguageItemState.unselected(language: $language, label: $label)';
}


}

/// @nodoc
abstract mixin class $UnselectedLanguageCopyWith<$Res> implements $LanguageItemStateCopyWith<$Res> {
  factory $UnselectedLanguageCopyWith(UnselectedLanguage value, $Res Function(UnselectedLanguage) _then) = _$UnselectedLanguageCopyWithImpl;
@override @useResult
$Res call({
 AppLanguage language, String label
});




}
/// @nodoc
class _$UnselectedLanguageCopyWithImpl<$Res>
    implements $UnselectedLanguageCopyWith<$Res> {
  _$UnselectedLanguageCopyWithImpl(this._self, this._then);

  final UnselectedLanguage _self;
  final $Res Function(UnselectedLanguage) _then;

/// Create a copy of LanguageItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? label = null,}) {
  return _then(UnselectedLanguage(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as AppLanguage,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LanguageState {

 List<LanguageItemState> get languages; bool get isLoading; bool get isSaving;
/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageStateCopyWith<LanguageState> get copyWith => _$LanguageStateCopyWithImpl<LanguageState>(this as LanguageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageState&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(languages),isLoading,isSaving);

@override
String toString() {
  return 'LanguageState(languages: $languages, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class $LanguageStateCopyWith<$Res>  {
  factory $LanguageStateCopyWith(LanguageState value, $Res Function(LanguageState) _then) = _$LanguageStateCopyWithImpl;
@useResult
$Res call({
 List<LanguageItemState> languages, bool isLoading, bool isSaving
});




}
/// @nodoc
class _$LanguageStateCopyWithImpl<$Res>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._self, this._then);

  final LanguageState _self;
  final $Res Function(LanguageState) _then;

/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languages = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_self.copyWith(
languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageItemState>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageState].
extension LanguageStatePatterns on LanguageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageState value)  $default,){
final _that = this;
switch (_that) {
case _LanguageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageState value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LanguageItemState> languages,  bool isLoading,  bool isSaving)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageState() when $default != null:
return $default(_that.languages,_that.isLoading,_that.isSaving);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LanguageItemState> languages,  bool isLoading,  bool isSaving)  $default,) {final _that = this;
switch (_that) {
case _LanguageState():
return $default(_that.languages,_that.isLoading,_that.isSaving);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LanguageItemState> languages,  bool isLoading,  bool isSaving)?  $default,) {final _that = this;
switch (_that) {
case _LanguageState() when $default != null:
return $default(_that.languages,_that.isLoading,_that.isSaving);case _:
  return null;

}
}

}

/// @nodoc


class _LanguageState implements LanguageState {
  const _LanguageState({final  List<LanguageItemState> languages = const [], this.isLoading = false, this.isSaving = false}): _languages = languages;
  

 final  List<LanguageItemState> _languages;
@override@JsonKey() List<LanguageItemState> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSaving;

/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageStateCopyWith<_LanguageState> get copyWith => __$LanguageStateCopyWithImpl<_LanguageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageState&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_languages),isLoading,isSaving);

@override
String toString() {
  return 'LanguageState(languages: $languages, isLoading: $isLoading, isSaving: $isSaving)';
}


}

/// @nodoc
abstract mixin class _$LanguageStateCopyWith<$Res> implements $LanguageStateCopyWith<$Res> {
  factory _$LanguageStateCopyWith(_LanguageState value, $Res Function(_LanguageState) _then) = __$LanguageStateCopyWithImpl;
@override @useResult
$Res call({
 List<LanguageItemState> languages, bool isLoading, bool isSaving
});




}
/// @nodoc
class __$LanguageStateCopyWithImpl<$Res>
    implements _$LanguageStateCopyWith<$Res> {
  __$LanguageStateCopyWithImpl(this._self, this._then);

  final _LanguageState _self;
  final $Res Function(_LanguageState) _then;

/// Create a copy of LanguageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languages = null,Object? isLoading = null,Object? isSaving = null,}) {
  return _then(_LanguageState(
languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageItemState>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
