// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatusEvent {


/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusEventCopyWith<StatusEvent> get copyWith => _$StatusEventCopyWithImpl<StatusEvent>(this as StatusEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StatusEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusEvent&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.fromStatus, _this.fromStatus) || other.fromStatus == _this.fromStatus)&&(identical(other.toStatus, _this.toStatus) || other.toStatus == _this.toStatus)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.note, _this.note) || other.note == _this.note)&&(identical(other.actor, _this.actor) || other.actor == _this.actor)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as StatusEvent;
  return Object.hash(runtimeType,_this.id,_this.action,_this.fromStatus,_this.toStatus,_this.reason,_this.note,_this.actor,_this.createdAt,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as StatusEvent;
  return 'StatusEvent(id: ${_this.id}, action: ${_this.action}, fromStatus: ${_this.fromStatus}, toStatus: ${_this.toStatus}, reason: ${_this.reason}, note: ${_this.note}, actor: ${_this.actor}, createdAt: ${_this.createdAt}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $StatusEventCopyWith<$Res>  {
  factory $StatusEventCopyWith(StatusEvent value, $Res Function(StatusEvent) _then) = _$StatusEventCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String id,@JsonKey(required: true, disallowNullValue: true, fromJson: StatusEvent._read_action, toJson: StatusEvent._write_action) ActionEnum action,@JsonKey(name: "from_status", required: true, disallowNullValue: true, fromJson: StatusEvent._read_fromStatus, toJson: StatusEvent._write_fromStatus) MemberStatusEnum fromStatus,@JsonKey(name: "to_status", required: true, disallowNullValue: true, fromJson: StatusEvent._read_toStatus, toJson: StatusEvent._write_toStatus) MemberStatusEnum toStatus,@JsonKey(required: true, disallowNullValue: true) String reason,@JsonKey(required: true, disallowNullValue: true) String note,@JsonKey(required: true) MemberRef? actor,@JsonKey(name: "created_at", required: true, disallowNullValue: true, fromJson: StatusEvent._read_createdAt, toJson: StatusEvent._write_createdAt) DateTime createdAt,@JsonKey(readValue: StatusEvent._extras, fromJson: StatusEvent._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$MemberRefCopyWith<$Res>? get actor;

}
/// @nodoc
class _$StatusEventCopyWithImpl<$Res>
    implements $StatusEventCopyWith<$Res> {
  _$StatusEventCopyWithImpl(this._self, this._then);

  final StatusEvent _self;
  final $Res Function(StatusEvent) _then;

/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? action = null,Object? fromStatus = null,Object? toStatus = null,Object? reason = null,Object? note = null,Object? actor = freezed,Object? createdAt = null,Object? additionalProperties = null,}) {
  return _then(StatusEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionEnum,fromStatus: null == fromStatus ? _self.fromStatus : fromStatus // ignore: cast_nullable_to_non_nullable
as MemberStatusEnum,toStatus: null == toStatus ? _self.toStatus : toStatus // ignore: cast_nullable_to_non_nullable
as MemberStatusEnum,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,actor: freezed == actor ? _self.actor : actor // ignore: cast_nullable_to_non_nullable
as MemberRef?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of StatusEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberRefCopyWith<$Res>? get actor {
    if (_self.actor == null) {
    return null;
  }

  return $MemberRefCopyWith<$Res>(_self.actor!, (value) {
    return _then(_self.copyWith(actor: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatusEvent].
extension StatusEventPatterns on StatusEvent {
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
