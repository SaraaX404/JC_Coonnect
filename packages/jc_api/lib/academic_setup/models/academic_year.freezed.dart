// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'academic_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AcademicYear {


/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcademicYearCopyWith<AcademicYear> get copyWith => _$AcademicYearCopyWithImpl<AcademicYear>(this as AcademicYear, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AcademicYear;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcademicYear&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.endDate, _this.endDate) || other.endDate == _this.endDate)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.terms, _this.terms)&&(identical(other.classCount, _this.classCount) || other.classCount == _this.classCount)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as AcademicYear;
  return Object.hash(runtimeType,_this.id,_this.name,_this.startDate,_this.endDate,_this.status,const DeepCollectionEquality().hash(_this.terms),_this.classCount,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as AcademicYear;
  return 'AcademicYear(id: ${_this.id}, name: ${_this.name}, startDate: ${_this.startDate}, endDate: ${_this.endDate}, status: ${_this.status}, terms: ${_this.terms}, classCount: ${_this.classCount}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $AcademicYearCopyWith<$Res>  {
  factory $AcademicYearCopyWith(AcademicYear value, $Res Function(AcademicYear) _then) = _$AcademicYearCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(name: "start_date", required: true, disallowNullValue: true) String startDate,@JsonKey(name: "end_date", required: true, disallowNullValue: true) String endDate,@JsonKey(required: true, disallowNullValue: true, fromJson: AcademicYear._read_status, toJson: AcademicYear._write_status) AcademicYearStatusEnum status,@JsonKey(required: true, disallowNullValue: true) List<Term> terms,@JsonKey(name: "class_count", required: true, disallowNullValue: true, fromJson: AcademicYear._read_classCount, toJson: AcademicYear._write_classCount) int classCount,@JsonKey(readValue: AcademicYear._extras, fromJson: AcademicYear._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$AcademicYearCopyWithImpl<$Res>
    implements $AcademicYearCopyWith<$Res> {
  _$AcademicYearCopyWithImpl(this._self, this._then);

  final AcademicYear _self;
  final $Res Function(AcademicYear) _then;

/// Create a copy of AcademicYear
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? startDate = null,Object? endDate = null,Object? status = null,Object? terms = null,Object? classCount = null,Object? additionalProperties = null,}) {
  return _then(AcademicYear(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AcademicYearStatusEnum,terms: null == terms ? _self.terms : terms // ignore: cast_nullable_to_non_nullable
as List<Term>,classCount: null == classCount ? _self.classCount : classCount // ignore: cast_nullable_to_non_nullable
as int,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [AcademicYear].
extension AcademicYearPatterns on AcademicYear {
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
