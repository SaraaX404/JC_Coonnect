// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mfa_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MfaChallenge {


/// Create a copy of MfaChallenge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MfaChallengeCopyWith<MfaChallenge> get copyWith => _$MfaChallengeCopyWithImpl<MfaChallenge>(this as MfaChallenge, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MfaChallenge;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MfaChallenge&&(identical(other.challenge, _this.challenge) || other.challenge == _this.challenge)&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.expiresIn, _this.expiresIn) || other.expiresIn == _this.expiresIn)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as MfaChallenge;
  return Object.hash(runtimeType,_this.challenge,_this.method,_this.expiresIn,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as MfaChallenge;
  return 'MfaChallenge(challenge: ${_this.challenge}, method: ${_this.method}, expiresIn: ${_this.expiresIn}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $MfaChallengeCopyWith<$Res>  {
  factory $MfaChallengeCopyWith(MfaChallenge value, $Res Function(MfaChallenge) _then) = _$MfaChallengeCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String challenge,@JsonKey(required: true, disallowNullValue: true, fromJson: MfaChallenge._read_method, toJson: MfaChallenge._write_method) MethodEnum method,@JsonKey(name: "expires_in", required: true, disallowNullValue: true, fromJson: MfaChallenge._read_expiresIn, toJson: MfaChallenge._write_expiresIn) int expiresIn,@JsonKey(readValue: MfaChallenge._extras, fromJson: MfaChallenge._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$MfaChallengeCopyWithImpl<$Res>
    implements $MfaChallengeCopyWith<$Res> {
  _$MfaChallengeCopyWithImpl(this._self, this._then);

  final MfaChallenge _self;
  final $Res Function(MfaChallenge) _then;

/// Create a copy of MfaChallenge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? challenge = null,Object? method = null,Object? expiresIn = null,Object? additionalProperties = null,}) {
  return _then(MfaChallenge(
challenge: null == challenge ? _self.challenge : challenge // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as MethodEnum,expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [MfaChallenge].
extension MfaChallengePatterns on MfaChallenge {
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
