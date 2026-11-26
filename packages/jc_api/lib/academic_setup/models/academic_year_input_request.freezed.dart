// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_year_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AcademicYearInputRequest {


/// Create a copy of AcademicYearInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicYearInputRequestCopyWith<AcademicYearInputRequest> get copyWith => _$AcademicYearInputRequestCopyWithImpl<AcademicYearInputRequest>(this as AcademicYearInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AcademicYearInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicYearInputRequest&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.termCount, _this.termCount) || other.termCount == _this.termCount)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as AcademicYearInputRequest;
  return Object.hash(runtimeType,_this.name,_this.startDate,_this.endDate,_this.termCount,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as AcademicYearInputRequest;
  return 'AcademicYearInputRequest(name: ${_this.name}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, termCount: ${_this.termCount}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $AcademicYearInputRequestCopyWith<$Res>  {
  factory $AcademicYearInputRequestCopyWith(AcademicYearInputRequest value, $Res Function(AcademicYearInputRequest) _then) = _$AcademicYearInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(name: "start_date", required: true, disallowNullValue: true) String startDate,@JsonKey(name: "end_date", required: true, disallowNullValue: true) String endDate,@JsonKey(name: "term_count", required: true, disallowNullValue: true, fromJson: AcademicYearInputRequest._read_termCount, toJson: AcademicYearInputRequest._write_termCount) int termCount,@JsonKey(readValue: AcademicYearInputRequest._extras, fromJson: AcademicYearInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$AcademicYearInputRequestCopyWithImpl<$Res>
    implements $AcademicYearInputRequestCopyWith<$Res> {
  _$AcademicYearInputRequestCopyWithImpl(this._self, this._then);

  final AcademicYearInputRequest _self;
  final $Res Function(AcademicYearInputRequest) _then;

/// Create a copy of AcademicYearInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? startDate = null,Object? endDate = null,Object? termCount = null,Object? additionalProperties = null,}) {
  return _then(AcademicYearInputRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,termCount: null == termCount ? _self.termCount : termCount // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicYearInputRequest].
extension AcademicYearInputRequestPatterns on AcademicYearInputRequest {
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
