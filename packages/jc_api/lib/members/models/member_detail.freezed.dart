// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MemberDetail {


/// Create a copy of MemberDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDetailCopyWith<MemberDetail> get copyWith => _$MemberDetailCopyWithImpl<MemberDetail>(this as MemberDetail, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MemberDetail;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDetail&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.memberType, _this.memberType) || other.memberType == _this.memberType)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.verifiedAt, _this.verifiedAt) || other.verifiedAt == _this.verifiedAt)&&(identical(other.joinedAt, _this.joinedAt) || other.joinedAt == _this.joinedAt)&&const DeepCollectionEquality().equals(other.roles, _this.roles)&&const DeepCollectionEquality().equals(other.clubs, _this.clubs)&&(identical(other.birthday, _this.birthday) || other.birthday == _this.birthday)&&(identical(other.addressLine1, _this.addressLine1) || other.addressLine1 == _this.addressLine1)&&(identical(other.addressLine2, _this.addressLine2) || other.addressLine2 == _this.addressLine2)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.district, _this.district) || other.district == _this.district)&&(identical(other.emailVerifiedAt, _this.emailVerifiedAt) || other.emailVerifiedAt == _this.emailVerifiedAt)&&(identical(other.newsOptIn, _this.newsOptIn) || other.newsOptIn == _this.newsOptIn)&&(identical(other.studentProfile, _this.studentProfile) || other.studentProfile == _this.studentProfile)&&(identical(other.staffProfile, _this.staffProfile) || other.staffProfile == _this.staffProfile)&&(identical(other.alumniProfile, _this.alumniProfile) || other.alumniProfile == _this.alumniProfile)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as MemberDetail;
  return Object.hashAll([runtimeType,_this.id,_this.firstName,_this.lastName,_this.phone,_this.email,_this.memberType,_this.status,_this.verifiedAt,_this.joinedAt,const DeepCollectionEquality().hash(_this.roles),const DeepCollectionEquality().hash(_this.clubs),_this.birthday,_this.addressLine1,_this.addressLine2,_this.city,_this.district,_this.emailVerifiedAt,_this.newsOptIn,_this.studentProfile,_this.staffProfile,_this.alumniProfile,const DeepCollectionEquality().hash(_this.additionalProperties)]);
}

@override
String toString() {
  final _this = this as MemberDetail;
  return 'MemberDetail(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, phone: ${_this.phone}, email: ${_this.email}, memberType: ${_this.memberType}, status: ${_this.status}, verifiedAt: ${_this.verifiedAt}, joinedAt: ${_this.joinedAt}, roles: ${_this.roles}, clubs: ${_this.clubs}, birthday: ${_this.birthday}, addressLine1: ${_this.addressLine1}, addressLine2: ${_this.addressLine2}, city: ${_this.city}, district: ${_this.district}, emailVerifiedAt: ${_this.emailVerifiedAt}, newsOptIn: ${_this.newsOptIn}, studentProfile: ${_this.studentProfile}, staffProfile: ${_this.staffProfile}, alumniProfile: ${_this.alumniProfile}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $MemberDetailCopyWith<$Res>  {
  factory $MemberDetailCopyWith(MemberDetail value, $Res Function(MemberDetail) _then) = _$MemberDetailCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(name: "first_name", required: true, disallowNullValue: true) String firstName,@JsonKey(name: "last_name", required: true, disallowNullValue: true) String lastName,@JsonKey(required: true, disallowNullValue: true) String phone,@JsonKey(required: true, disallowNullValue: true) String email,@JsonKey(name: "member_type", required: true, disallowNullValue: true, fromJson: MemberDetail._read_memberType, toJson: MemberDetail._write_memberType) MemberTypeEnum memberType,@JsonKey(required: true, disallowNullValue: true, fromJson: MemberDetail._read_status, toJson: MemberDetail._write_status) MemberStatusEnum status,@JsonKey(name: "verified_at", required: true, fromJson: MemberDetail._read_verifiedAt, toJson: MemberDetail._write_verifiedAt) DateTime? verifiedAt,@JsonKey(name: "joined_at", required: true, disallowNullValue: true, fromJson: MemberDetail._read_joinedAt, toJson: MemberDetail._write_joinedAt) DateTime joinedAt,@JsonKey(required: true, disallowNullValue: true) List<RoleRef> roles,@JsonKey(required: true, disallowNullValue: true) List<Ref> clubs,@JsonKey(required: true, disallowNullValue: true) String birthday,@JsonKey(name: "address_line1", required: true, disallowNullValue: true) String addressLine1,@JsonKey(name: "address_line2", required: true, disallowNullValue: true) String addressLine2,@JsonKey(required: true, disallowNullValue: true) String city,@JsonKey(required: true, disallowNullValue: true) String district,@JsonKey(name: "email_verified_at", required: true, disallowNullValue: true, fromJson: MemberDetail._read_emailVerifiedAt, toJson: MemberDetail._write_emailVerifiedAt) DateTime emailVerifiedAt,@JsonKey(name: "news_opt_in", required: true, disallowNullValue: true) bool newsOptIn,@JsonKey(name: "student_profile", required: true) StudentProfile? studentProfile,@JsonKey(name: "staff_profile", required: true) StaffProfile? staffProfile,@JsonKey(name: "alumni_profile", required: true) AlumniProfile? alumniProfile,@JsonKey(readValue: MemberDetail._extras, fromJson: MemberDetail._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$StudentProfileCopyWith<$Res>? get studentProfile;$StaffProfileCopyWith<$Res>? get staffProfile;$AlumniProfileCopyWith<$Res>? get alumniProfile;

}
/// @nodoc
class _$MemberDetailCopyWithImpl<$Res>
    implements $MemberDetailCopyWith<$Res> {
  _$MemberDetailCopyWithImpl(this._self, this._then);

  final MemberDetail _self;
  final $Res Function(MemberDetail) _then;

/// Create a copy of MemberDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? phone = null,Object? email = null,Object? memberType = null,Object? status = null,Object? verifiedAt = freezed,Object? joinedAt = null,Object? roles = null,Object? clubs = null,Object? birthday = null,Object? addressLine1 = null,Object? addressLine2 = null,Object? city = null,Object? district = null,Object? emailVerifiedAt = null,Object? newsOptIn = null,Object? studentProfile = freezed,Object? staffProfile = freezed,Object? alumniProfile = freezed,Object? additionalProperties = null,}) {
  return _then(MemberDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,memberType: null == memberType ? _self.memberType : memberType // ignore: cast_nullable_to_non_nullable
as MemberTypeEnum,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MemberStatusEnum,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<RoleRef>,clubs: null == clubs ? _self.clubs : clubs // ignore: cast_nullable_to_non_nullable
as List<Ref>,birthday: null == birthday ? _self.birthday : birthday // ignore: cast_nullable_to_non_nullable
as String,addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,addressLine2: null == addressLine2 ? _self.addressLine2 : addressLine2 // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,emailVerifiedAt: null == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime,newsOptIn: null == newsOptIn ? _self.newsOptIn : newsOptIn // ignore: cast_nullable_to_non_nullable
as bool,studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as StudentProfile?,staffProfile: freezed == staffProfile ? _self.staffProfile : staffProfile // ignore: cast_nullable_to_non_nullable
as StaffProfile?,alumniProfile: freezed == alumniProfile ? _self.alumniProfile : alumniProfile // ignore: cast_nullable_to_non_nullable
as AlumniProfile?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of MemberDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentProfileCopyWith<$Res>? get studentProfile {
    if (_self.studentProfile == null) {
    return null;
  }

  return $StudentProfileCopyWith<$Res>(_self.studentProfile!, (value) {
    return _then(_self.copyWith(studentProfile: value));
  });
}/// Create a copy of MemberDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StaffProfileCopyWith<$Res>? get staffProfile {
    if (_self.staffProfile == null) {
    return null;
  }

  return $StaffProfileCopyWith<$Res>(_self.staffProfile!, (value) {
    return _then(_self.copyWith(staffProfile: value));
  });
}/// Create a copy of MemberDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AlumniProfileCopyWith<$Res>? get alumniProfile {
    if (_self.alumniProfile == null) {
    return null;
  }

  return $AlumniProfileCopyWith<$Res>(_self.alumniProfile!, (value) {
    return _then(_self.copyWith(alumniProfile: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberDetail].
extension MemberDetailPatterns on MemberDetail {
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
