// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Connection {


/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionCopyWith<Connection> get copyWith => _$ConnectionCopyWithImpl<Connection>(this as Connection, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Connection;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Connection&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.since, _this.since) || other.since == _this.since)&&(identical(other.fromMember, _this.fromMember) || other.fromMember == _this.fromMember)&&(identical(other.toMember, _this.toMember) || other.toMember == _this.toMember)&&(identical(other.sessionCount, _this.sessionCount) || other.sessionCount == _this.sessionCount)&&(identical(other.lastSessionAt, _this.lastSessionAt) || other.lastSessionAt == _this.lastSessionAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as Connection;
  return Object.hash(runtimeType,_this.id,_this.kind,_this.status,_this.since,_this.fromMember,_this.toMember,_this.sessionCount,_this.lastSessionAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as Connection;
  return 'Connection(id: ${_this.id}, kind: ${_this.kind}, status: ${_this.status}, since: ${_this.since}, fromMember: ${_this.fromMember}, toMember: ${_this.toMember}, sessionCount: ${_this.sessionCount}, lastSessionAt: ${_this.lastSessionAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ConnectionCopyWith<$Res>  {
  factory $ConnectionCopyWith(Connection value, $Res Function(Connection) _then) = _$ConnectionCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true, fromJson: Connection._read_kind, toJson: Connection._write_kind) ConnectionKindEnum kind,@JsonKey(required: true, disallowNullValue: true, fromJson: Connection._read_status, toJson: Connection._write_status) ConnectionStatusEnum status,@JsonKey(required: true, fromJson: Connection._read_since, toJson: Connection._write_since) DateTime? since,@JsonKey(name: "from_member", required: true, disallowNullValue: true) MemberRef fromMember,@JsonKey(name: "to_member", required: true, disallowNullValue: true) MemberRef toMember,@JsonKey(name: "session_count", required: true, disallowNullValue: true, fromJson: Connection._read_sessionCount, toJson: Connection._write_sessionCount) int sessionCount,@JsonKey(name: "last_session_at", required: true, fromJson: Connection._read_lastSessionAt, toJson: Connection._write_lastSessionAt) DateTime? lastSessionAt,@JsonKey(readValue: Connection._extras, fromJson: Connection._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$MemberRefCopyWith<$Res> get fromMember;$MemberRefCopyWith<$Res> get toMember;

}
/// @nodoc
class _$ConnectionCopyWithImpl<$Res>
    implements $ConnectionCopyWith<$Res> {
  _$ConnectionCopyWithImpl(this._self, this._then);

  final Connection _self;
  final $Res Function(Connection) _then;

/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? status = null,Object? since = freezed,Object? fromMember = null,Object? toMember = null,Object? sessionCount = null,Object? lastSessionAt = freezed,Object? additionalProperties = null,}) {
  return _then(Connection(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as ConnectionKindEnum,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ConnectionStatusEnum,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as DateTime?,fromMember: null == fromMember ? _self.fromMember : fromMember // ignore: cast_nullable_to_non_nullable
as MemberRef,toMember: null == toMember ? _self.toMember : toMember // ignore: cast_nullable_to_non_nullable
as MemberRef,sessionCount: null == sessionCount ? _self.sessionCount : sessionCount // ignore: cast_nullable_to_non_nullable
as int,lastSessionAt: freezed == lastSessionAt ? _self.lastSessionAt : lastSessionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res> get fromMember {
  
  return $MemberRefCopyWith<$Res>(_self.fromMember, (value) {
    return _then(_self.copyWith(fromMember: value));
  });
}/// Create a copy of Connection
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res> get toMember {
  
  return $MemberRefCopyWith<$Res>(_self.toMember, (value) {
    return _then(_self.copyWith(toMember: value));
  });
}
}


/// Adds pattern-matching-related methods to [Connection].
extension ConnectionPatterns on Connection {
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
