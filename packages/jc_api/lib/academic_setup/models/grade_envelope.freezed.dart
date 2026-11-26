// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grade_envelope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GradeEnvelope {


/// Create a copy of GradeEnvelope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GradeEnvelopeCopyWith<GradeEnvelope> get copyWith => _$GradeEnvelopeCopyWithImpl<GradeEnvelope>(this as GradeEnvelope, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GradeEnvelope;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GradeEnvelope&&(identical(other.data, _this.data) || other.data == _this.data)&&const DeepCollectionEquality().equals(other.error, _this.error)&&const DeepCollectionEquality().equals(other.meta, _this.meta)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as GradeEnvelope;
  return Object.hash(runtimeType,_this.data,const DeepCollectionEquality().hash(_this.error),const DeepCollectionEquality().hash(_this.meta),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as GradeEnvelope;
  return 'GradeEnvelope(data: ${_this.data}, error: ${_this.error}, meta: ${_this.meta}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $GradeEnvelopeCopyWith<$Res>  {
  factory $GradeEnvelopeCopyWith(GradeEnvelope value, $Res Function(GradeEnvelope) _then) = _$GradeEnvelopeCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) Grade data,@JsonKey(includeIfNull: false) Object? error,@JsonKey(includeIfNull: false) Object? meta,@JsonKey(readValue: GradeEnvelope._extras, fromJson: GradeEnvelope._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$GradeCopyWith<$Res> get data;

}
/// @nodoc
class _$GradeEnvelopeCopyWithImpl<$Res>
    implements $GradeEnvelopeCopyWith<$Res> {
  _$GradeEnvelopeCopyWithImpl(this._self, this._then);

  final GradeEnvelope _self;
  final $Res Function(GradeEnvelope) _then;

/// Create a copy of GradeEnvelope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? error = freezed,Object? meta = freezed,Object? additionalProperties = null,}) {
  return _then(GradeEnvelope(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Grade,error: freezed == error ? _self.error : error ,meta: freezed == meta ? _self.meta : meta ,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of GradeEnvelope
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GradeCopyWith<$Res> get data {
  
  return $GradeCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GradeEnvelope].
extension GradeEnvelopePatterns on GradeEnvelope {
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
