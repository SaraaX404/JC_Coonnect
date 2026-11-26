// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_type_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberTypeEnumKnown {


/// Create a copy of MemberTypeEnumKnown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberTypeEnumKnownCopyWith<MemberTypeEnumKnown> get copyWith => _$MemberTypeEnumKnownCopyWithImpl<MemberTypeEnumKnown>(this as MemberTypeEnumKnown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MemberTypeEnumKnown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberTypeEnumKnown&&(identical(other.value, _this.value) || other.value == _this.value));
}


@override
int get hashCode {
  final _this = this as MemberTypeEnumKnown;
  return Object.hash(runtimeType,_this.value);
}

@override
String toString() {
  final _this = this as MemberTypeEnumKnown;
  return 'MemberTypeEnumKnown(value: ${_this.value})';
}


}

/// @nodoc
abstract mixin class $MemberTypeEnumKnownCopyWith<$Res>  {
  factory $MemberTypeEnumKnownCopyWith(MemberTypeEnumKnown value, $Res Function(MemberTypeEnumKnown) _then) = _$MemberTypeEnumKnownCopyWithImpl;
@useResult
$Res call({
 MemberTypeEnumValue value
});




}
/// @nodoc
class _$MemberTypeEnumKnownCopyWithImpl<$Res>
    implements $MemberTypeEnumKnownCopyWith<$Res> {
  _$MemberTypeEnumKnownCopyWithImpl(this._self, this._then);

  final MemberTypeEnumKnown _self;
  final $Res Function(MemberTypeEnumKnown) _then;

/// Create a copy of MemberTypeEnumKnown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(MemberTypeEnumKnown(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as MemberTypeEnumValue,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberTypeEnumKnown].
extension MemberTypeEnumKnownPatterns on MemberTypeEnumKnown {
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
mixin _$MemberTypeEnumUnknown {


/// Create a copy of MemberTypeEnumUnknown
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberTypeEnumUnknownCopyWith<MemberTypeEnumUnknown> get copyWith => _$MemberTypeEnumUnknownCopyWithImpl<MemberTypeEnumUnknown>(this as MemberTypeEnumUnknown, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MemberTypeEnumUnknown;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberTypeEnumUnknown&&(identical(other.rawValue, _this.rawValue) || other.rawValue == _this.rawValue));
}


@override
int get hashCode {
  final _this = this as MemberTypeEnumUnknown;
  return Object.hash(runtimeType,_this.rawValue);
}

@override
String toString() {
  final _this = this as MemberTypeEnumUnknown;
  return 'MemberTypeEnumUnknown(rawValue: ${_this.rawValue})';
}


}

/// @nodoc
abstract mixin class $MemberTypeEnumUnknownCopyWith<$Res>  {
  factory $MemberTypeEnumUnknownCopyWith(MemberTypeEnumUnknown value, $Res Function(MemberTypeEnumUnknown) _then) = _$MemberTypeEnumUnknownCopyWithImpl;
@useResult
$Res call({
 String rawValue
});




}
/// @nodoc
class _$MemberTypeEnumUnknownCopyWithImpl<$Res>
    implements $MemberTypeEnumUnknownCopyWith<$Res> {
  _$MemberTypeEnumUnknownCopyWithImpl(this._self, this._then);

  final MemberTypeEnumUnknown _self;
  final $Res Function(MemberTypeEnumUnknown) _then;

/// Create a copy of MemberTypeEnumUnknown
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rawValue = null,}) {
  return _then(MemberTypeEnumUnknown(
null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberTypeEnumUnknown].
extension MemberTypeEnumUnknownPatterns on MemberTypeEnumUnknown {
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
