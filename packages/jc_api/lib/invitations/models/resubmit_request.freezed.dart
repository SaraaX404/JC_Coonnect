// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resubmit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResubmitRequest {


/// Create a copy of ResubmitRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResubmitRequestCopyWith<ResubmitRequest> get copyWith => _$ResubmitRequestCopyWithImpl<ResubmitRequest>(this as ResubmitRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ResubmitRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResubmitRequest&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.studentProfile, _this.studentProfile) || other.studentProfile == _this.studentProfile)&&(identical(other.staffProfile, _this.staffProfile) || other.staffProfile == _this.staffProfile)&&(identical(other.alumniProfile, _this.alumniProfile) || other.alumniProfile == _this.alumniProfile)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as ResubmitRequest;
  return Object.hash(runtimeType,_this.token,_this.studentProfile,_this.staffProfile,_this.alumniProfile,_this.firstName,_this.lastName,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as ResubmitRequest;
  return 'ResubmitRequest(token: ${_this.token}, studentProfile: ${_this.studentProfile}, staffProfile: ${_this.staffProfile}, alumniProfile: ${_this.alumniProfile}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ResubmitRequestCopyWith<$Res>  {
  factory $ResubmitRequestCopyWith(ResubmitRequest value, $Res Function(ResubmitRequest) _then) = _$ResubmitRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String token,@JsonKey(name: "student_profile", disallowNullValue: true, includeIfNull: false) StudentProfileInputRequest? studentProfile,@JsonKey(name: "staff_profile", disallowNullValue: true, includeIfNull: false) StaffProfileInputRequest? staffProfile,@JsonKey(name: "alumni_profile", disallowNullValue: true, includeIfNull: false) AlumniProfileInputRequest? alumniProfile,@JsonKey(name: "first_name", disallowNullValue: true, includeIfNull: false) String? firstName,@JsonKey(name: "last_name", disallowNullValue: true, includeIfNull: false) String? lastName,@JsonKey(readValue: ResubmitRequest._extras, fromJson: ResubmitRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$StudentProfileInputRequestCopyWith<$Res>? get studentProfile;$StaffProfileInputRequestCopyWith<$Res>? get staffProfile;$AlumniProfileInputRequestCopyWith<$Res>? get alumniProfile;

}
/// @nodoc
class _$ResubmitRequestCopyWithImpl<$Res>
    implements $ResubmitRequestCopyWith<$Res> {
  _$ResubmitRequestCopyWithImpl(this._self, this._then);

  final ResubmitRequest _self;
  final $Res Function(ResubmitRequest) _then;

/// Create a copy of ResubmitRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? studentProfile = freezed,Object? staffProfile = freezed,Object? alumniProfile = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? additionalProperties = null,}) {
  return _then(ResubmitRequest(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,studentProfile: freezed == studentProfile ? _self.studentProfile : studentProfile // ignore: cast_nullable_to_non_nullable
as StudentProfileInputRequest?,staffProfile: freezed == staffProfile ? _self.staffProfile : staffProfile // ignore: cast_nullable_to_non_nullable
as StaffProfileInputRequest?,alumniProfile: freezed == alumniProfile ? _self.alumniProfile : alumniProfile // ignore: cast_nullable_to_non_nullable
as AlumniProfileInputRequest?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of ResubmitRequest
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
}/// Create a copy of ResubmitRequest
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
}/// Create a copy of ResubmitRequest
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


/// Adds pattern-matching-related methods to [ResubmitRequest].
extension ResubmitRequestPatterns on ResubmitRequest {
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
