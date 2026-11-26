// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetupProgress {


/// Create a copy of SetupProgress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetupProgressCopyWith<SetupProgress> get copyWith => _$SetupProgressCopyWithImpl<SetupProgress>(this as SetupProgress, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SetupProgress;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetupProgress&&(identical(other.steps, _this.steps) || other.steps == _this.steps)&&(identical(other.done, _this.done) || other.done == _this.done)&&(identical(other.total, _this.total) || other.total == _this.total)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as SetupProgress;
  return Object.hash(runtimeType,_this.steps,_this.done,_this.total,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as SetupProgress;
  return 'SetupProgress(steps: ${_this.steps}, done: ${_this.done}, total: ${_this.total}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $SetupProgressCopyWith<$Res>  {
  factory $SetupProgressCopyWith(SetupProgress value, $Res Function(SetupProgress) _then) = _$SetupProgressCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) SetupSteps steps,@JsonKey(required: true, disallowNullValue: true, fromJson: SetupProgress._read_done, toJson: SetupProgress._write_done) int done,@JsonKey(required: true, disallowNullValue: true, fromJson: SetupProgress._read_total, toJson: SetupProgress._write_total) int total,@JsonKey(readValue: SetupProgress._extras, fromJson: SetupProgress._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$SetupStepsCopyWith<$Res> get steps;

}
/// @nodoc
class _$SetupProgressCopyWithImpl<$Res>
    implements $SetupProgressCopyWith<$Res> {
  _$SetupProgressCopyWithImpl(this._self, this._then);

  final SetupProgress _self;
  final $Res Function(SetupProgress) _then;

/// Create a copy of SetupProgress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? steps = null,Object? done = null,Object? total = null,Object? additionalProperties = null,}) {
  return _then(SetupProgress(
steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as SetupSteps,done: null == done ? _self.done : done // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of SetupProgress
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SetupStepsCopyWith<$Res> get steps {
  
  return $SetupStepsCopyWith<$Res>(_self.steps, (value) {
    return _then(_self.copyWith(steps: value));
  });
}
}


/// Adds pattern-matching-related methods to [SetupProgress].
extension SetupProgressPatterns on SetupProgress {
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
