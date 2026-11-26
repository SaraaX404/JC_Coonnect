// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enrollment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Enrollment {


/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnrollmentCopyWith<Enrollment> get copyWith => _$EnrollmentCopyWithImpl<Enrollment>(this as Enrollment, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Enrollment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Enrollment&&(identical(other.academicYear, _this.academicYear) || other.academicYear == _this.academicYear)&&(identical(other.schoolClass, _this.schoolClass) || other.schoolClass == _this.schoolClass)&&(identical(other.grade, _this.grade) || other.grade == _this.grade)&&(identical(other.academicTrack, _this.academicTrack) || other.academicTrack == _this.academicTrack)&&(identical(other.enrolledOn, _this.enrolledOn) || other.enrolledOn == _this.enrolledOn)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as Enrollment;
  return Object.hash(runtimeType,_this.academicYear,_this.schoolClass,_this.grade,_this.academicTrack,_this.enrolledOn,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as Enrollment;
  return 'Enrollment(academicYear: ${_this.academicYear}, schoolClass: ${_this.schoolClass}, grade: ${_this.grade}, academicTrack: ${_this.academicTrack}, enrolledOn: ${_this.enrolledOn}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $EnrollmentCopyWith<$Res>  {
  factory $EnrollmentCopyWith(Enrollment value, $Res Function(Enrollment) _then) = _$EnrollmentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "academic_year", required: true, disallowNullValue: true) Ref academicYear,@JsonKey(name: "school_class", required: true, disallowNullValue: true) Ref schoolClass,@JsonKey(required: true, disallowNullValue: true) Ref grade,@JsonKey(name: "academic_track", required: true) Ref? academicTrack,@JsonKey(name: "enrolled_on", required: true, disallowNullValue: true) String enrolledOn,@JsonKey(readValue: Enrollment._extras, fromJson: Enrollment._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$RefCopyWith<$Res> get academicYear;$RefCopyWith<$Res> get schoolClass;$RefCopyWith<$Res> get grade;$RefCopyWith<$Res>? get academicTrack;

}
/// @nodoc
class _$EnrollmentCopyWithImpl<$Res>
    implements $EnrollmentCopyWith<$Res> {
  _$EnrollmentCopyWithImpl(this._self, this._then);

  final Enrollment _self;
  final $Res Function(Enrollment) _then;

/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? academicYear = null,Object? schoolClass = null,Object? grade = null,Object? academicTrack = freezed,Object? enrolledOn = null,Object? additionalProperties = null,}) {
  return _then(Enrollment(
academicYear: null == academicYear ? _self.academicYear : academicYear // ignore: cast_nullable_to_non_nullable
as Ref,schoolClass: null == schoolClass ? _self.schoolClass : schoolClass // ignore: cast_nullable_to_non_nullable
as Ref,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as Ref,academicTrack: freezed == academicTrack ? _self.academicTrack : academicTrack // ignore: cast_nullable_to_non_nullable
as Ref?,enrolledOn: null == enrolledOn ? _self.enrolledOn : enrolledOn // ignore: cast_nullable_to_non_nullable
as String,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get academicYear {
  
  return $RefCopyWith<$Res>(_self.academicYear, (value) {
    return _then(_self.copyWith(academicYear: value));
  });
}/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get schoolClass {
  
  return $RefCopyWith<$Res>(_self.schoolClass, (value) {
    return _then(_self.copyWith(schoolClass: value));
  });
}/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res> get grade {
  
  return $RefCopyWith<$Res>(_self.grade, (value) {
    return _then(_self.copyWith(grade: value));
  });
}/// Create a copy of Enrollment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get academicTrack {
    if (_self.academicTrack == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.academicTrack!, (value) {
    return _then(_self.copyWith(academicTrack: value));
  });
}
}


/// Adds pattern-matching-related methods to [Enrollment].
extension EnrollmentPatterns on Enrollment {
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
