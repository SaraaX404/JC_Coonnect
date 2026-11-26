// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StaffProfile {


/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StaffProfileCopyWith<StaffProfile> get copyWith => _$StaffProfileCopyWithImpl<StaffProfile>(this as StaffProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StaffProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StaffProfile&&(identical(other.staffNumber, _this.staffNumber) || other.staffNumber == _this.staffNumber)&&(identical(other.schoolEmail, _this.schoolEmail) || other.schoolEmail == _this.schoolEmail)&&(identical(other.jobTitle, _this.jobTitle) || other.jobTitle == _this.jobTitle)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.isTeacher, _this.isTeacher) || other.isTeacher == _this.isTeacher)&&(identical(other.isCoach, _this.isCoach) || other.isCoach == _this.isCoach)&&const DeepCollectionEquality().equals(other.subjects, _this.subjects)&&const DeepCollectionEquality().equals(other.grades, _this.grades)&&(identical(other.formClass, _this.formClass) || other.formClass == _this.formClass)&&const DeepCollectionEquality().equals(other.sports, _this.sports)&&const DeepCollectionEquality().equals(other.ageGroups, _this.ageGroups)&&(identical(other.coachingRole, _this.coachingRole) || other.coachingRole == _this.coachingRole)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as StaffProfile;
  return Object.hash(runtimeType,_this.staffNumber,_this.schoolEmail,_this.jobTitle,_this.department,_this.isTeacher,_this.isCoach,const DeepCollectionEquality().hash(_this.subjects),const DeepCollectionEquality().hash(_this.grades),_this.formClass,const DeepCollectionEquality().hash(_this.sports),const DeepCollectionEquality().hash(_this.ageGroups),_this.coachingRole,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as StaffProfile;
  return 'StaffProfile(staffNumber: ${_this.staffNumber}, schoolEmail: ${_this.schoolEmail}, jobTitle: ${_this.jobTitle}, department: ${_this.department}, isTeacher: ${_this.isTeacher}, isCoach: ${_this.isCoach}, subjects: ${_this.subjects}, grades: ${_this.grades}, formClass: ${_this.formClass}, sports: ${_this.sports}, ageGroups: ${_this.ageGroups}, coachingRole: ${_this.coachingRole}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $StaffProfileCopyWith<$Res>  {
  factory $StaffProfileCopyWith(StaffProfile value, $Res Function(StaffProfile) _then) = _$StaffProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "staff_number", required: true, disallowNullValue: true) String staffNumber,@JsonKey(name: "school_email", required: true, disallowNullValue: true) String schoolEmail,@JsonKey(name: "job_title", required: true, disallowNullValue: true) String jobTitle,@JsonKey(required: true) Ref? department,@JsonKey(name: "is_teacher", required: true, disallowNullValue: true) bool isTeacher,@JsonKey(name: "is_coach", required: true, disallowNullValue: true) bool isCoach,@JsonKey(required: true, disallowNullValue: true) List<Ref> subjects,@JsonKey(required: true, disallowNullValue: true) List<Ref> grades,@JsonKey(name: "form_class", required: true) Ref? formClass,@JsonKey(required: true, disallowNullValue: true) List<Ref> sports,@JsonKey(name: "age_groups", required: true, disallowNullValue: true, fromJson: StaffProfile._read_ageGroups, toJson: StaffProfile._write_ageGroups) List<AgeGroupsEnum> ageGroups,@JsonKey(name: "coaching_role", required: true, disallowNullValue: true, fromJson: StaffProfile._read_coachingRole, toJson: StaffProfile._write_coachingRole) CoachingRoleEnum coachingRole,@JsonKey(readValue: StaffProfile._extras, fromJson: StaffProfile._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$RefCopyWith<$Res>? get department;$RefCopyWith<$Res>? get formClass;

}
/// @nodoc
class _$StaffProfileCopyWithImpl<$Res>
    implements $StaffProfileCopyWith<$Res> {
  _$StaffProfileCopyWithImpl(this._self, this._then);

  final StaffProfile _self;
  final $Res Function(StaffProfile) _then;

/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? staffNumber = null,Object? schoolEmail = null,Object? jobTitle = null,Object? department = freezed,Object? isTeacher = null,Object? isCoach = null,Object? subjects = null,Object? grades = null,Object? formClass = freezed,Object? sports = null,Object? ageGroups = null,Object? coachingRole = null,Object? additionalProperties = null,}) {
  return _then(StaffProfile(
staffNumber: null == staffNumber ? _self.staffNumber : staffNumber // ignore: cast_nullable_to_non_nullable
as String,schoolEmail: null == schoolEmail ? _self.schoolEmail : schoolEmail // ignore: cast_nullable_to_non_nullable
as String,jobTitle: null == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Ref?,isTeacher: null == isTeacher ? _self.isTeacher : isTeacher // ignore: cast_nullable_to_non_nullable
as bool,isCoach: null == isCoach ? _self.isCoach : isCoach // ignore: cast_nullable_to_non_nullable
as bool,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<Ref>,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<Ref>,formClass: freezed == formClass ? _self.formClass : formClass // ignore: cast_nullable_to_non_nullable
as Ref?,sports: null == sports ? _self.sports : sports // ignore: cast_nullable_to_non_nullable
as List<Ref>,ageGroups: null == ageGroups ? _self.ageGroups : ageGroups // ignore: cast_nullable_to_non_nullable
as List<AgeGroupsEnum>,coachingRole: null == coachingRole ? _self.coachingRole : coachingRole // ignore: cast_nullable_to_non_nullable
as CoachingRoleEnum,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of StaffProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get formClass {
    if (_self.formClass == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.formClass!, (value) {
    return _then(_self.copyWith(formClass: value));
  });
}
}


/// Adds pattern-matching-related methods to [StaffProfile].
extension StaffProfilePatterns on StaffProfile {
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
