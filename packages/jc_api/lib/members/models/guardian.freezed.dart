// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guardian.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Guardian {


/// Create a copy of Guardian
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuardianCopyWith<Guardian> get copyWith => _$GuardianCopyWithImpl<Guardian>(this as Guardian, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Guardian;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Guardian&&(identical(other.guardian, _this.guardian) || other.guardian == _this.guardian)&&(identical(other.relationship, _this.relationship) || other.relationship == _this.relationship)&&(identical(other.isPrimary, _this.isPrimary) || other.isPrimary == _this.isPrimary)&&(identical(other.linkedAt, _this.linkedAt) || other.linkedAt == _this.linkedAt)&&(identical(other.verifiedAt, _this.verifiedAt) || other.verifiedAt == _this.verifiedAt)&&(identical(other.verifiedBy, _this.verifiedBy) || other.verifiedBy == _this.verifiedBy)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as Guardian;
  return Object.hash(runtimeType,_this.guardian,_this.relationship,_this.isPrimary,_this.linkedAt,_this.verifiedAt,_this.verifiedBy,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as Guardian;
  return 'Guardian(guardian: ${_this.guardian}, relationship: ${_this.relationship}, isPrimary: ${_this.isPrimary}, linkedAt: ${_this.linkedAt}, verifiedAt: ${_this.verifiedAt}, verifiedBy: ${_this.verifiedBy}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $GuardianCopyWith<$Res>  {
  factory $GuardianCopyWith(Guardian value, $Res Function(Guardian) _then) = _$GuardianCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) MemberRef guardian,@JsonKey(required: true, disallowNullValue: true) String relationship,@JsonKey(name: "is_primary", required: true, disallowNullValue: true) bool isPrimary,@JsonKey(name: "linked_at", required: true, disallowNullValue: true, fromJson: Guardian._read_linkedAt, toJson: Guardian._write_linkedAt) DateTime linkedAt,@JsonKey(name: "verified_at", required: true, fromJson: Guardian._read_verifiedAt, toJson: Guardian._write_verifiedAt) DateTime? verifiedAt,@JsonKey(name: "verified_by", required: true) MemberRef? verifiedBy,@JsonKey(readValue: Guardian._extras, fromJson: Guardian._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$MemberRefCopyWith<$Res> get guardian;$MemberRefCopyWith<$Res>? get verifiedBy;

}
/// @nodoc
class _$GuardianCopyWithImpl<$Res>
    implements $GuardianCopyWith<$Res> {
  _$GuardianCopyWithImpl(this._self, this._then);

  final Guardian _self;
  final $Res Function(Guardian) _then;

/// Create a copy of Guardian
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? guardian = null,Object? relationship = null,Object? isPrimary = null,Object? linkedAt = null,Object? verifiedAt = freezed,Object? verifiedBy = freezed,Object? additionalProperties = null,}) {
  return _then(Guardian(
guardian: null == guardian ? _self.guardian : guardian // ignore: cast_nullable_to_non_nullable
as MemberRef,relationship: null == relationship ? _self.relationship : relationship // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,linkedAt: null == linkedAt ? _self.linkedAt : linkedAt // ignore: cast_nullable_to_non_nullable
as DateTime,verifiedAt: freezed == verifiedAt ? _self.verifiedAt : verifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,verifiedBy: freezed == verifiedBy ? _self.verifiedBy : verifiedBy // ignore: cast_nullable_to_non_nullable
as MemberRef?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of Guardian
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res> get guardian {
  
  return $MemberRefCopyWith<$Res>(_self.guardian, (value) {
    return _then(_self.copyWith(guardian: value));
  });
}/// Create a copy of Guardian
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get verifiedBy {
    if (_self.verifiedBy == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.verifiedBy!, (value) {
    return _then(_self.copyWith(verifiedBy: value));
  });
}
}


/// Adds pattern-matching-related methods to [Guardian].
extension GuardianPatterns on Guardian {
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
