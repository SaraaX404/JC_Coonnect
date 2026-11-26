// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvitationPreview {


/// Create a copy of InvitationPreview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationPreviewCopyWith<InvitationPreview> get copyWith => _$InvitationPreviewCopyWithImpl<InvitationPreview>(this as InvitationPreview, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as InvitationPreview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvitationPreview&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.memberType, _this.memberType) || other.memberType == _this.memberType)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.memberStatus, _this.memberStatus) || other.memberStatus == _this.memberStatus)&&(identical(other.returnNote, _this.returnNote) || other.returnNote == _this.returnNote)&&(identical(other.termsVersion, _this.termsVersion) || other.termsVersion == _this.termsVersion)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as InvitationPreview;
  return Object.hash(runtimeType,_this.schoolName,_this.email,_this.fullName,_this.memberType,_this.status,_this.memberStatus,_this.returnNote,_this.termsVersion,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as InvitationPreview;
  return 'InvitationPreview(schoolName: ${_this.schoolName}, email: ${_this.email}, fullName: ${_this.fullName}, memberType: ${_this.memberType}, status: ${_this.status}, memberStatus: ${_this.memberStatus}, returnNote: ${_this.returnNote}, termsVersion: ${_this.termsVersion}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $InvitationPreviewCopyWith<$Res>  {
  factory $InvitationPreviewCopyWith(InvitationPreview value, $Res Function(InvitationPreview) _then) = _$InvitationPreviewCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "school_name", required: true, disallowNullValue: true) String schoolName,@JsonKey(required: true, disallowNullValue: true) String email,@JsonKey(name: "full_name", required: true, disallowNullValue: true) String fullName,@JsonKey(name: "member_type", required: true, disallowNullValue: true, fromJson: InvitationPreview._read_memberType, toJson: InvitationPreview._write_memberType) MemberTypeEnum memberType,@JsonKey(required: true, disallowNullValue: true, fromJson: InvitationPreview._read_status, toJson: InvitationPreview._write_status) InvitationStatusEnum status,@JsonKey(name: "member_status", required: true, fromJson: InvitationPreview._read_memberStatus, toJson: InvitationPreview._write_memberStatus) MemberStatusEnum? memberStatus,@JsonKey(name: "return_note", required: true, disallowNullValue: true) String returnNote,@JsonKey(name: "terms_version", required: true) String? termsVersion,@JsonKey(readValue: InvitationPreview._extras, fromJson: InvitationPreview._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$InvitationPreviewCopyWithImpl<$Res>
    implements $InvitationPreviewCopyWith<$Res> {
  _$InvitationPreviewCopyWithImpl(this._self, this._then);

  final InvitationPreview _self;
  final $Res Function(InvitationPreview) _then;

/// Create a copy of InvitationPreview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schoolName = null,Object? email = null,Object? fullName = null,Object? memberType = null,Object? status = null,Object? memberStatus = freezed,Object? returnNote = null,Object? termsVersion = freezed,Object? additionalProperties = null,}) {
  return _then(InvitationPreview(
schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,memberType: null == memberType ? _self.memberType : memberType // ignore: cast_nullable_to_non_nullable
as MemberTypeEnum,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvitationStatusEnum,memberStatus: freezed == memberStatus ? _self.memberStatus : memberStatus // ignore: cast_nullable_to_non_nullable
as MemberStatusEnum?,returnNote: null == returnNote ? _self.returnNote : returnNote // ignore: cast_nullable_to_non_nullable
as String,termsVersion: freezed == termsVersion ? _self.termsVersion : termsVersion // ignore: cast_nullable_to_non_nullable
as String?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [InvitationPreview].
extension InvitationPreviewPatterns on InvitationPreview {
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
