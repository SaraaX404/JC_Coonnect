// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setup_steps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SetupSteps {


/// Create a copy of SetupSteps
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetupStepsCopyWith<SetupSteps> get copyWith => _$SetupStepsCopyWithImpl<SetupSteps>(this as SetupSteps, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SetupSteps;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetupSteps&&(identical(other.academicYears, _this.academicYears) || other.academicYears == _this.academicYears)&&(identical(other.grades, _this.grades) || other.grades == _this.grades)&&(identical(other.academicTracks, _this.academicTracks) || other.academicTracks == _this.academicTracks)&&(identical(other.classes, _this.classes) || other.classes == _this.classes)&&(identical(other.houses, _this.houses) || other.houses == _this.houses)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as SetupSteps;
  return Object.hash(runtimeType,_this.academicYears,_this.grades,_this.academicTracks,_this.classes,_this.houses,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as SetupSteps;
  return 'SetupSteps(academicYears: ${_this.academicYears}, grades: ${_this.grades}, academicTracks: ${_this.academicTracks}, classes: ${_this.classes}, houses: ${_this.houses}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $SetupStepsCopyWith<$Res>  {
  factory $SetupStepsCopyWith(SetupSteps value, $Res Function(SetupSteps) _then) = _$SetupStepsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "academic_years", required: true, disallowNullValue: true) bool academicYears,@JsonKey(required: true, disallowNullValue: true) bool grades,@JsonKey(name: "academic_tracks", required: true, disallowNullValue: true) bool academicTracks,@JsonKey(required: true, disallowNullValue: true) bool classes,@JsonKey(required: true, disallowNullValue: true) bool houses,@JsonKey(readValue: SetupSteps._extras, fromJson: SetupSteps._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$SetupStepsCopyWithImpl<$Res>
    implements $SetupStepsCopyWith<$Res> {
  _$SetupStepsCopyWithImpl(this._self, this._then);

  final SetupSteps _self;
  final $Res Function(SetupSteps) _then;

/// Create a copy of SetupSteps
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? academicYears = null,Object? grades = null,Object? academicTracks = null,Object? classes = null,Object? houses = null,Object? additionalProperties = null,}) {
  return _then(SetupSteps(
academicYears: null == academicYears ? _self.academicYears : academicYears // ignore: cast_nullable_to_non_nullable
as bool,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as bool,academicTracks: null == academicTracks ? _self.academicTracks : academicTracks // ignore: cast_nullable_to_non_nullable
as bool,classes: null == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as bool,houses: null == houses ? _self.houses : houses // ignore: cast_nullable_to_non_nullable
as bool,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [SetupSteps].
extension SetupStepsPatterns on SetupSteps {
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
