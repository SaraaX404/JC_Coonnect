// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_request_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AcceptRequest$Request {


/// Create a copy of AcceptRequest$Request
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcceptRequest$RequestCopyWith<AcceptRequest$Request> get copyWith => _$AcceptRequest$RequestCopyWithImpl<AcceptRequest$Request>(this as AcceptRequest$Request, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AcceptRequest$Request;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AcceptRequest$Request&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.studentProfile, _this.studentProfile) || other.studentProfile == _this.studentProfile)&&(identical(other.staffProfile, _this.staffProfile) || other.staffProfile == _this.staffProfile)&&(identical(other.alumniProfile, _this.alumniProfile) || other.alumniProfile == _this.alumniProfile)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.acceptTerms, _this.acceptTerms) || other.acceptTerms == _this.acceptTerms)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as AcceptRequest$Request;
  return Object.hash(runtimeType,_this.token,_this.studentProfile,_this.staffProfile,_this.alumniProfile,_this.phone,_this.password,_this.firstName,_this.lastName,_this.acceptTerms,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as AcceptRequest$Request;
  return 'AcceptRequest\$Request(token: ${_this.token}, studentProfile: ${_this.studentProfile}, staffProfile: ${_this.staffProfile}, alumniProfile: ${_this.alumniProfile}, phone: ${_this.phone}, password: ${_this.password}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, acceptTerms: ${_this.acceptTerms}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $AcceptRequest$RequestCopyWith<$Res>  {
  factory $AcceptRequest$RequestCopyWith(AcceptRequest$Request value, $Res Function(AcceptRequest$Request) _then) = _$AcceptRequest$RequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String token,@JsonKey(name: "student_profile", disallowNullValue: true, includeIfNull: false) StudentProfileInputRequest? studentProfile,@JsonKey(name: "staff_profile", disallowNullValue: true, includeIfNull: false) StaffProfileInputRequest? staffProfile,@JsonKey(name: "alumni_profile", disallowNullValue: true, includeIfNull: false) AlumniProfileInputRequest? alumniProfile,@JsonKey(required: true, disallowNullValue: true) String phone,@JsonKey(required: true, disallowNullValue: true) String password,@JsonKey(name: "first_name", required: true, disallowNullValue: true) String firstName,@JsonKey(name: "last_name", required: true, disallowNullValue: true) String lastName,@JsonKey(name: "accept_terms", disallowNullValue: true, readValue: AcceptRequest$Request._presentValue, fromJson: AcceptRequest$Request._read_acceptTerms, toJson: AcceptRequest$Request._write_acceptTerms) bool acceptTerms,@JsonKey(readValue: AcceptRequest$Request._extras, fromJson: AcceptRequest$Request._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$StudentProfileInputRequestCopyWith<$Res>? get studentProfile;$StaffProfileInputRequestCopyWith<$Res>? get staffProfile;$AlumniProfileInputRequestCopyWith<$Res>? get alumniProfile;

}
/// @nodoc
class _$AcceptRequest$RequestCopyWithImpl<$Res>
    implements $AcceptRequest$RequestCopyWith<$Res> {
  _$AcceptRequest$RequestCopyWithImpl(this._self, this._then);

  final AcceptRequest$Request _self;
  final $Res Function(AcceptRequest$Request) _then;

/// Create a copy of AcceptRequest$Request
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? studentProfile = freezed,Object? staffProfile = freezed,Object? alumniProfile = freezed,Object? phone = null,Object? password = null,Object? firstName = null,Object? lastName = null,Object? acceptTerms = null,Object? additionalProperties = null,}) {
  return _then(AcceptRequest$Request(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as StudentProfileInputRequest?,staffProfile: freezed == staffProfile ? _self.staffProfile : staffProfile // ignore: cast_nullable_to_non_nullable
as StaffProfileInputRequest?,alumniProfile: freezed == alumniProfile ? _self.alumniProfile : alumniProfile // ignore: cast_nullable_to_non_nullable
as AlumniProfileInputRequest?,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,acceptTerms: null == acceptTerms ? _self.acceptTerms : acceptTerms // ignore: cast_nullable_to_non_nullable
as bool,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of AcceptRequest$Request
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
}/// Create a copy of AcceptRequest$Request
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
}/// Create a copy of AcceptRequest$Request
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
}
}


/// Adds pattern-matching-related methods to [AcceptRequest$Request].
extension AcceptRequest$RequestPatterns on AcceptRequest$Request {
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
