// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_request_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignupRequest$Request {


/// Create a copy of SignupRequest$Request
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupRequest$RequestCopyWith<SignupRequest$Request> get copyWith => _$SignupRequest$RequestCopyWithImpl<SignupRequest$Request>(this as SignupRequest$Request, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SignupRequest$Request;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupRequest$Request&&(identical(other.studentProfile, _this.studentProfile) || other.studentProfile == _this.studentProfile)&&(identical(other.staffProfile, _this.staffProfile) || other.staffProfile == _this.staffProfile)&&(identical(other.alumniProfile, _this.alumniProfile) || other.alumniProfile == _this.alumniProfile)&&(identical(other.memberType, _this.memberType) || other.memberType == _this.memberType)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.birthday, _this.birthday) || other.birthday == _this.birthday)&&(identical(other.addressLine1, _this.addressLine1) || other.addressLine1 == _this.addressLine1)&&(identical(other.acceptTerms, _this.acceptTerms) || other.acceptTerms == _this.acceptTerms)&&(identical(other.newsOptIn, _this.newsOptIn) || other.newsOptIn == _this.newsOptIn)&&(identical(other.enrollment, _this.enrollment) || other.enrollment == _this.enrollment)&&const DeepCollectionEquality().equals(other.guardians, _this.guardians)&&const DeepCollectionEquality().equals(other.children, _this.children)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as SignupRequest$Request;
  return Object.hash(runtimeType,_this.studentProfile,_this.staffProfile,_this.alumniProfile,_this.memberType,_this.firstName,_this.lastName,_this.phone,_this.password,_this.birthday,_this.addressLine1,_this.acceptTerms,_this.newsOptIn,_this.enrollment,const DeepCollectionEquality().hash(_this.guardians),const DeepCollectionEquality().hash(_this.children),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as SignupRequest$Request;
  return 'SignupRequest\$Request(studentProfile: ${_this.studentProfile}, staffProfile: ${_this.staffProfile}, alumniProfile: ${_this.alumniProfile}, memberType: ${_this.memberType}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, phone: ${_this.phone}, password: ${_this.password}, birthday: ${_this.birthday}, addressLine1: ${_this.addressLine1}, acceptTerms: ${_this.acceptTerms}, newsOptIn: ${_this.newsOptIn}, enrollment: ${_this.enrollment}, guardians: ${_this.guardians}, children: ${_this.children}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $SignupRequest$RequestCopyWith<$Res>  {
  factory $SignupRequest$RequestCopyWith(SignupRequest$Request value, $Res Function(SignupRequest$Request) _then) = _$SignupRequest$RequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "student_profile", disallowNullValue: true, includeIfNull: false) StudentProfileInputRequest? studentProfile,@JsonKey(name: "staff_profile", disallowNullValue: true, includeIfNull: false) StaffProfileInputRequest? staffProfile,@JsonKey(name: "alumni_profile", disallowNullValue: true, includeIfNull: false) AlumniProfileInputRequest? alumniProfile,@JsonKey(name: "member_type", required: true, disallowNullValue: true, fromJson: SignupRequest$Request._read_memberType, toJson: SignupRequest$Request._write_memberType) SignupMemberTypeEnum memberType,@JsonKey(name: "first_name", required: true, disallowNullValue: true) String firstName,@JsonKey(name: "last_name", required: true, disallowNullValue: true) String lastName,@JsonKey(required: true, disallowNullValue: true) String phone,@JsonKey(required: true, disallowNullValue: true) String password,@JsonKey(includeIfNull: false) String? birthday,@JsonKey(name: "address_line1", disallowNullValue: true, readValue: SignupRequest$Request._presentValue, fromJson: SignupRequest$Request._read_addressLine1, toJson: SignupRequest$Request._write_addressLine1) String addressLine1,@JsonKey(name: "accept_terms", disallowNullValue: true, readValue: SignupRequest$Request._presentValue, fromJson: SignupRequest$Request._read_acceptTerms, toJson: SignupRequest$Request._write_acceptTerms) bool acceptTerms,@JsonKey(name: "news_opt_in", disallowNullValue: true, readValue: SignupRequest$Request._presentValue, fromJson: SignupRequest$Request._read_newsOptIn, toJson: SignupRequest$Request._write_newsOptIn) bool newsOptIn,@JsonKey(disallowNullValue: true, includeIfNull: false) EnrollmentInputRequest? enrollment,@JsonKey(disallowNullValue: true, includeIfNull: false) List<GuardianContactRequest>? guardians,@JsonKey(disallowNullValue: true, includeIfNull: false) List<ChildRequest>? children,@JsonKey(readValue: SignupRequest$Request._extras, fromJson: SignupRequest$Request._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$StudentProfileInputRequestCopyWith<$Res>? get studentProfile;$StaffProfileInputRequestCopyWith<$Res>? get staffProfile;$AlumniProfileInputRequestCopyWith<$Res>? get alumniProfile;$EnrollmentInputRequestCopyWith<$Res>? get enrollment;

}
/// @nodoc
class _$SignupRequest$RequestCopyWithImpl<$Res>
    implements $SignupRequest$RequestCopyWith<$Res> {
  _$SignupRequest$RequestCopyWithImpl(this._self, this._then);

  final SignupRequest$Request _self;
  final $Res Function(SignupRequest$Request) _then;

/// Create a copy of SignupRequest$Request
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? studentProfile = freezed,Object? staffProfile = freezed,Object? alumniProfile = freezed,Object? memberType = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? password = null,Object? birthday = freezed,Object? addressLine1 = null,Object? acceptTerms = null,Object? newsOptIn = null,Object? enrollment = freezed,Object? guardians = freezed,Object? children = freezed,Object? additionalProperties = null,}) {
  return _then(SignupRequest$Request(
studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as StudentProfileInputRequest?,staffProfile: freezed == staffProfile ? _self.staffProfile : staffProfile // ignore: cast_nullable_to_non_nullable
as StaffProfileInputRequest?,alumniProfile: freezed == alumniProfile ? _self.alumniProfile : alumniProfile // ignore: cast_nullable_to_non_nullable
as AlumniProfileInputRequest?,memberType: null == memberType ? _self.memberType : memberType // ignore: cast_nullable_to_non_nullable
as SignupMemberTypeEnum,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,birthday: freezed == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String?,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,acceptTerms: null == acceptTerms ? _self.acceptTerms : acceptTerms // ignore: cast_nullable_to_non_nullable
as bool,newsOptIn: null == newsOptIn ? _self.newsOptIn : newsOptIn // ignore: cast_nullable_to_non_nullable
as bool,enrollment: freezed == enrollment ? _self.enrollment : enrollment // ignore: cast_nullable_to_non_nullable
as EnrollmentInputRequest?,guardians: freezed == guardians ? _self.guardians : guardians // ignore: cast_nullable_to_non_nullable
as List<GuardianContactRequest>?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<ChildRequest>?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of SignupRequest$Request
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
}/// Create a copy of SignupRequest$Request
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
}/// Create a copy of SignupRequest$Request
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
}/// Create a copy of SignupRequest$Request
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


/// Adds pattern-matching-related methods to [SignupRequest$Request].
extension SignupRequest$RequestPatterns on SignupRequest$Request {
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
