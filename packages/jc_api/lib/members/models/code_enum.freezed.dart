// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CodeEnumKnown {


/// Create a copy of CodeEnumKnown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeEnumKnownCopyWith<CodeEnumKnown> get copyWith => _$CodeEnumKnownCopyWithImpl<CodeEnumKnown>(this as CodeEnumKnown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CodeEnumKnown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeEnumKnown&&(identical(other.value, _this.value) || other.value == _this.value));
}


@override
int get hashCode {
  final _this = this as CodeEnumKnown;
  return Object.hash(runtimeType,_this.value);
}

@override
String toString() {
  final _this = this as CodeEnumKnown;
  return 'CodeEnumKnown(value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $CodeEnumKnownCopyWith<$Res>  {
  factory $CodeEnumKnownCopyWith(CodeEnumKnown value, $Res Function(CodeEnumKnown) _then) = _$CodeEnumKnownCopyWithImpl;
@useResult
$Res call({
 CodeEnumValue value
});




}
/// @nodoc
class _$CodeEnumKnownCopyWithImpl<$Res>
    implements $CodeEnumKnownCopyWith<$Res> {
  _$CodeEnumKnownCopyWithImpl(this._self, this._then);

  final CodeEnumKnown _self;
  final $Res Function(CodeEnumKnown) _then;

/// Create a copy of CodeEnumKnown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(CodeEnumKnown(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as CodeEnumValue,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeEnumKnown].
extension CodeEnumKnownPatterns on CodeEnumKnown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

/// @nodoc
mixin _$CodeEnumUnknown {


/// Create a copy of CodeEnumUnknown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodeEnumUnknownCopyWith<CodeEnumUnknown> get copyWith => _$CodeEnumUnknownCopyWithImpl<CodeEnumUnknown>(this as CodeEnumUnknown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CodeEnumUnknown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodeEnumUnknown&&(identical(other.rawValue, _this.rawValue) || other.rawValue == _this.rawValue));
}


@override
int get hashCode {
  final _this = this as CodeEnumUnknown;
  return Object.hash(runtimeType,_this.rawValue);
}

@override
String toString() {
  final _this = this as CodeEnumUnknown;
  return 'CodeEnumUnknown(rawValue: ${_this.rawValue})';
}


}

/// @nodoc
abstract mixin class $CodeEnumUnknownCopyWith<$Res>  {
  factory $CodeEnumUnknownCopyWith(CodeEnumUnknown value, $Res Function(CodeEnumUnknown) _then) = _$CodeEnumUnknownCopyWithImpl;
@useResult
$Res call({
 String rawValue
});




}
/// @nodoc
class _$CodeEnumUnknownCopyWithImpl<$Res>
    implements $CodeEnumUnknownCopyWith<$Res> {
  _$CodeEnumUnknownCopyWithImpl(this._self, this._then);

  final CodeEnumUnknown _self;
  final $Res Function(CodeEnumUnknown) _then;

/// Create a copy of CodeEnumUnknown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawValue = null,}) {
  return _then(CodeEnumUnknown(
null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CodeEnumUnknown].
extension CodeEnumUnknownPatterns on CodeEnumUnknown {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({required TResult orElse(),}){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(){
final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({required TResult orElse(),}) {final _that = this;
switch (_that) {
case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>() {final _that = this;
switch (_that) {
case _:
  return null;

}
}

}

// dart format on
