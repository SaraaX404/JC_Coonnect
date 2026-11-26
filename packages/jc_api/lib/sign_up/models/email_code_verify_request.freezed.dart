// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_code_verify_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailCodeVerifyRequest {


/// Create a copy of EmailCodeVerifyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailCodeVerifyRequestCopyWith<EmailCodeVerifyRequest> get copyWith => _$EmailCodeVerifyRequestCopyWithImpl<EmailCodeVerifyRequest>(this as EmailCodeVerifyRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EmailCodeVerifyRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailCodeVerifyRequest&&(identical(other.schoolId, _this.schoolId) || other.schoolId == _this.schoolId)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.code, _this.code) || other.code == _this.code)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as EmailCodeVerifyRequest;
  return Object.hash(runtimeType,_this.schoolId,_this.email,_this.code,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as EmailCodeVerifyRequest;
  return 'EmailCodeVerifyRequest(schoolId: ${_this.schoolId}, email: ${_this.email}, code: ${_this.code}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $EmailCodeVerifyRequestCopyWith<$Res>  {
  factory $EmailCodeVerifyRequestCopyWith(EmailCodeVerifyRequest value, $Res Function(EmailCodeVerifyRequest) _then) = _$EmailCodeVerifyRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "school_id", required: true, disallowNullValue: true) String schoolId,@JsonKey(required: true, disallowNullValue: true) String email,@JsonKey(required: true, disallowNullValue: true) String code,@JsonKey(readValue: EmailCodeVerifyRequest._extras, fromJson: EmailCodeVerifyRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$EmailCodeVerifyRequestCopyWithImpl<$Res>
    implements $EmailCodeVerifyRequestCopyWith<$Res> {
  _$EmailCodeVerifyRequestCopyWithImpl(this._self, this._then);

  final EmailCodeVerifyRequest _self;
  final $Res Function(EmailCodeVerifyRequest) _then;

/// Create a copy of EmailCodeVerifyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schoolId = null,Object? email = null,Object? code = null,Object? additionalProperties = null,}) {
  return _then(EmailCodeVerifyRequest(
schoolId: null == schoolId ? _self.schoolId : schoolId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailCodeVerifyRequest].
extension EmailCodeVerifyRequestPatterns on EmailCodeVerifyRequest {
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
