// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_profile_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StaffProfileInputRequest {


/// Create a copy of StaffProfileInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffProfileInputRequestCopyWith<StaffProfileInputRequest> get copyWith => _$StaffProfileInputRequestCopyWithImpl<StaffProfileInputRequest>(this as StaffProfileInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StaffProfileInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffProfileInputRequest&&(identical(other.staffNumber, _this.staffNumber) || other.staffNumber == _this.staffNumber)&&(identical(other.schoolEmail, _this.schoolEmail) || other.schoolEmail == _this.schoolEmail)&&(identical(other.jobTitle, _this.jobTitle) || other.jobTitle == _this.jobTitle)&&(identical(other.departmentId, _this.departmentId) || other.departmentId == _this.departmentId)&&(identical(other.isTeacher, _this.isTeacher) || other.isTeacher == _this.isTeacher)&&(identical(other.isCoach, _this.isCoach) || other.isCoach == _this.isCoach)&&const DeepCollectionEquality().equals(other.subjectIds, _this.subjectIds)&&const DeepCollectionEquality().equals(other.gradeIds, _this.gradeIds)&&(identical(other.formClassId, _this.formClassId) || other.formClassId == _this.formClassId)&&const DeepCollectionEquality().equals(other.sportIds, _this.sportIds)&&const DeepCollectionEquality().equals(other.ageGroups, _this.ageGroups)&&(identical(other.coachingRole, _this.coachingRole) || other.coachingRole == _this.coachingRole)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as StaffProfileInputRequest;
  return Object.hash(runtimeType,_this.staffNumber,_this.schoolEmail,_this.jobTitle,_this.departmentId,_this.isTeacher,_this.isCoach,const DeepCollectionEquality().hash(_this.subjectIds),const DeepCollectionEquality().hash(_this.gradeIds),_this.formClassId,const DeepCollectionEquality().hash(_this.sportIds),const DeepCollectionEquality().hash(_this.ageGroups),_this.coachingRole,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as StaffProfileInputRequest;
  return 'StaffProfileInputRequest(staffNumber: ${_this.staffNumber}, schoolEmail: ${_this.schoolEmail}, jobTitle: ${_this.jobTitle}, departmentId: ${_this.departmentId}, isTeacher: ${_this.isTeacher}, isCoach: ${_this.isCoach}, subjectIds: ${_this.subjectIds}, gradeIds: ${_this.gradeIds}, formClassId: ${_this.formClassId}, sportIds: ${_this.sportIds}, ageGroups: ${_this.ageGroups}, coachingRole: ${_this.coachingRole}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $StaffProfileInputRequestCopyWith<$Res>  {
  factory $StaffProfileInputRequestCopyWith(StaffProfileInputRequest value, $Res Function(StaffProfileInputRequest) _then) = _$StaffProfileInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "staff_number", required: true, disallowNullValue: true) String staffNumber,@JsonKey(name: "school_email", explicitJsonNullWhenNonNullField: true, fromJson: StaffProfileInputRequest._read_schoolEmail, toJson: StaffProfileInputRequest._write_schoolEmail) StaffProfileInputRequestSchoolEmail? schoolEmail,@JsonKey(name: "job_title", disallowNullValue: true, includeIfNull: false) String? jobTitle,@JsonKey(name: "department_id", includeIfNull: false) String? departmentId,@JsonKey(name: "is_teacher", disallowNullValue: true, includeIfNull: false) bool? isTeacher,@JsonKey(name: "is_coach", disallowNullValue: true, includeIfNull: false) bool? isCoach,@JsonKey(name: "subject_ids", disallowNullValue: true, includeIfNull: false) List<String>? subjectIds,@JsonKey(name: "grade_ids", disallowNullValue: true, includeIfNull: false) List<String>? gradeIds,@JsonKey(name: "form_class_id", includeIfNull: false) String? formClassId,@JsonKey(name: "sport_ids", disallowNullValue: true, includeIfNull: false) List<String>? sportIds,@JsonKey(name: "age_groups", disallowNullValue: true, includeIfNull: false, fromJson: StaffProfileInputRequest._read_ageGroups, toJson: StaffProfileInputRequest._write_ageGroups) List<AgeGroupsEnum>? ageGroups,@JsonKey(name: "coaching_role", explicitJsonNullWhenNonNullField: true, fromJson: StaffProfileInputRequest._read_coachingRole, toJson: StaffProfileInputRequest._write_coachingRole) StaffProfileInputRequestCoachingRole? coachingRole,@JsonKey(readValue: StaffProfileInputRequest._extras, fromJson: StaffProfileInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$StaffProfileInputRequestCopyWithImpl<$Res>
    implements $StaffProfileInputRequestCopyWith<$Res> {
  _$StaffProfileInputRequestCopyWithImpl(this._self, this._then);

  final StaffProfileInputRequest _self;
  final $Res Function(StaffProfileInputRequest) _then;

/// Create a copy of StaffProfileInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffNumber = null,Object? schoolEmail = freezed,Object? jobTitle = freezed,Object? departmentId = freezed,Object? isTeacher = freezed,Object? isCoach = freezed,Object? subjectIds = freezed,Object? gradeIds = freezed,Object? formClassId = freezed,Object? sportIds = freezed,Object? ageGroups = freezed,Object? coachingRole = freezed,Object? additionalProperties = null,}) {
  return _then(StaffProfileInputRequest(
staffNumber: null == staffNumber ? _self.staffNumber : staffNumber // ignore: cast_nullable_to_non_nullable
as String,schoolEmail: freezed == schoolEmail ? _self.schoolEmail : schoolEmail // ignore: cast_nullable_to_non_nullable
as StaffProfileInputRequestSchoolEmail?,jobTitle: freezed == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String?,departmentId: freezed == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String?,isTeacher: freezed == isTeacher ? _self.isTeacher : isTeacher // ignore: cast_nullable_to_non_nullable
as bool?,isCoach: freezed == isCoach ? _self.isCoach : isCoach // ignore: cast_nullable_to_non_nullable
as bool?,subjectIds: freezed == subjectIds ? _self.subjectIds : subjectIds // ignore: cast_nullable_to_non_nullable
as List<String>?,gradeIds: freezed == gradeIds ? _self.gradeIds : gradeIds // ignore: cast_nullable_to_non_nullable
as List<String>?,formClassId: freezed == formClassId ? _self.formClassId : formClassId // ignore: cast_nullable_to_non_nullable
as String?,sportIds: freezed == sportIds ? _self.sportIds : sportIds // ignore: cast_nullable_to_non_nullable
as List<String>?,ageGroups: freezed == ageGroups ? _self.ageGroups : ageGroups // ignore: cast_nullable_to_non_nullable
as List<AgeGroupsEnum>?,coachingRole: freezed == coachingRole ? _self.coachingRole : coachingRole // ignore: cast_nullable_to_non_nullable
as StaffProfileInputRequestCoachingRole?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [StaffProfileInputRequest].
extension StaffProfileInputRequestPatterns on StaffProfileInputRequest {
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
