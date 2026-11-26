// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patched_member_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PatchedMemberUpdateRequest {


/// Create a copy of PatchedMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PatchedMemberUpdateRequestCopyWith<PatchedMemberUpdateRequest> get copyWith => _$PatchedMemberUpdateRequestCopyWithImpl<PatchedMemberUpdateRequest>(this as PatchedMemberUpdateRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PatchedMemberUpdateRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PatchedMemberUpdateRequest&&(identical(other.studentProfile, _this.studentProfile) || other.studentProfile == _this.studentProfile)&&(identical(other.staffProfile, _this.staffProfile) || other.staffProfile == _this.staffProfile)&&(identical(other.alumniProfile, _this.alumniProfile) || other.alumniProfile == _this.alumniProfile)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.birthday, _this.birthday) || other.birthday == _this.birthday)&&(identical(other.addressLine1, _this.addressLine1) || other.addressLine1 == _this.addressLine1)&&(identical(other.addressLine2, _this.addressLine2) || other.addressLine2 == _this.addressLine2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.district, _this.district) || other.district == _this.district)&&(identical(other.enrollment, _this.enrollment) || other.enrollment == _this.enrollment)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as PatchedMemberUpdateRequest;
  return Object.hash(runtimeType,_this.studentProfile,_this.staffProfile,_this.alumniProfile,_this.firstName,_this.lastName,_this.email,_this.birthday,_this.addressLine1,_this.addressLine2,_this.city,_this.district,_this.enrollment,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as PatchedMemberUpdateRequest;
  return 'PatchedMemberUpdateRequest(studentProfile: ${_this.studentProfile}, staffProfile: ${_this.staffProfile}, alumniProfile: ${_this.alumniProfile}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, email: ${_this.email}, birthday: ${_this.birthday}, addressLine1: ${_this.addressLine1}, addressLine2: ${_this.addressLine2}, city: ${_this.city}, district: ${_this.district}, enrollment: ${_this.enrollment}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $PatchedMemberUpdateRequestCopyWith<$Res>  {
  factory $PatchedMemberUpdateRequestCopyWith(PatchedMemberUpdateRequest value, $Res Function(PatchedMemberUpdateRequest) _then) = _$PatchedMemberUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "student_profile", disallowNullValue: true, includeIfNull: false) StudentProfileInputRequest? studentProfile,@JsonKey(name: "staff_profile", disallowNullValue: true, includeIfNull: false) StaffProfileInputRequest? staffProfile,@JsonKey(name: "alumni_profile", disallowNullValue: true, includeIfNull: false) AlumniProfileInputRequest? alumniProfile,@JsonKey(name: "first_name", disallowNullValue: true, includeIfNull: false) String? firstName,@JsonKey(name: "last_name", disallowNullValue: true, includeIfNull: false) String? lastName,@JsonKey(disallowNullValue: true, includeIfNull: false) String? email,@JsonKey(includeIfNull: false) String? birthday,@JsonKey(name: "address_line1", disallowNullValue: true, includeIfNull: false) String? addressLine1,@JsonKey(name: "address_line2", disallowNullValue: true, includeIfNull: false) String? addressLine2,@JsonKey(disallowNullValue: true, includeIfNull: false) String? city,@JsonKey(disallowNullValue: true, includeIfNull: false) String? district,@JsonKey(disallowNullValue: true, includeIfNull: false) EnrollmentInputRequest? enrollment,@JsonKey(readValue: PatchedMemberUpdateRequest._extras, fromJson: PatchedMemberUpdateRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$StudentProfileInputRequestCopyWith<$Res>? get studentProfile;$StaffProfileInputRequestCopyWith<$Res>? get staffProfile;$AlumniProfileInputRequestCopyWith<$Res>? get alumniProfile;$EnrollmentInputRequestCopyWith<$Res>? get enrollment;

}
/// @nodoc
class _$PatchedMemberUpdateRequestCopyWithImpl<$Res>
    implements $PatchedMemberUpdateRequestCopyWith<$Res> {
  _$PatchedMemberUpdateRequestCopyWithImpl(this._self, this._then);

  final PatchedMemberUpdateRequest _self;
  final $Res Function(PatchedMemberUpdateRequest) _then;

/// Create a copy of PatchedMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentProfile = freezed,Object? staffProfile = freezed,Object? alumniProfile = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? birthday = freezed,Object? addressLine1 = freezed,Object? addressLine2 = freezed,Object? city = freezed,Object? district = freezed,Object? enrollment = freezed,Object? additionalProperties = null,}) {
  return _then(PatchedMemberUpdateRequest(
studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as StudentProfileInputRequest?,staffProfile: freezed == staffProfile ? _self.staffProfile : staffProfile // ignore: cast_nullable_to_non_nullable
as StaffProfileInputRequest?,alumniProfile: freezed == alumniProfile ? _self.alumniProfile : alumniProfile // ignore: cast_nullable_to_non_nullable
as AlumniProfileInputRequest?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: freezed == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String?,addressLine2: freezed == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,district: freezed == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String?,enrollment: freezed == enrollment ? _self.enrollment : enrollment // ignore: cast_nullable_to_non_nullable
as EnrollmentInputRequest?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of PatchedMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentProfileInputRequestCopyWith<$Res>? get studentProfile {
    if (_self.studentProfile == null) {
    return null;
  }

  return $StudentProfileInputRequestCopyWith<$Res>(_self.studentProfile!, (value) {
    return _then(_self.copyWith(studentProfile: value));
  });
}/// Create a copy of PatchedMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffProfileInputRequestCopyWith<$Res>? get staffProfile {
    if (_self.staffProfile == null) {
    return null;
  }

  return $StaffProfileInputRequestCopyWith<$Res>(_self.staffProfile!, (value) {
    return _then(_self.copyWith(staffProfile: value));
  });
}/// Create a copy of PatchedMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlumniProfileInputRequestCopyWith<$Res>? get alumniProfile {
    if (_self.alumniProfile == null) {
    return null;
  }

  return $AlumniProfileInputRequestCopyWith<$Res>(_self.alumniProfile!, (value) {
    return _then(_self.copyWith(alumniProfile: value));
  });
}/// Create a copy of PatchedMemberUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EnrollmentInputRequestCopyWith<$Res>? get enrollment {
    if (_self.enrollment == null) {
    return null;
  }

  return $EnrollmentInputRequestCopyWith<$Res>(_self.enrollment!, (value) {
    return _then(_self.copyWith(enrollment: value));
  });
}
}


/// Adds pattern-matching-related methods to [PatchedMemberUpdateRequest].
extension PatchedMemberUpdateRequestPatterns on PatchedMemberUpdateRequest {
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
