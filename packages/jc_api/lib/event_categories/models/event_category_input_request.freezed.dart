// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_category_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventCategoryInputRequest {


/// Create a copy of EventCategoryInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCategoryInputRequestCopyWith<EventCategoryInputRequest> get copyWith => _$EventCategoryInputRequestCopyWithImpl<EventCategoryInputRequest>(this as EventCategoryInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EventCategoryInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventCategoryInputRequest&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.categoryGroup, _this.categoryGroup) || other.categoryGroup == _this.categoryGroup)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as EventCategoryInputRequest;
  return Object.hash(runtimeType,_this.name,_this.categoryGroup,_this.description,_this.isActive,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as EventCategoryInputRequest;
  return 'EventCategoryInputRequest(name: ${_this.name}, categoryGroup: ${_this.categoryGroup}, description: ${_this.description}, isActive: ${_this.isActive}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $EventCategoryInputRequestCopyWith<$Res>  {
  factory $EventCategoryInputRequestCopyWith(EventCategoryInputRequest value, $Res Function(EventCategoryInputRequest) _then) = _$EventCategoryInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) String name,@JsonKey(name: "category_group", required: true, disallowNullValue: true, fromJson: EventCategoryInputRequest._read_categoryGroup, toJson: EventCategoryInputRequest._write_categoryGroup) CategoryGroupEnum categoryGroup,@JsonKey(disallowNullValue: true, includeIfNull: false) String? description,@JsonKey(name: "is_active", disallowNullValue: true, readValue: EventCategoryInputRequest._presentValue, fromJson: EventCategoryInputRequest._read_isActive, toJson: EventCategoryInputRequest._write_isActive) bool isActive,@JsonKey(readValue: EventCategoryInputRequest._extras, fromJson: EventCategoryInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$EventCategoryInputRequestCopyWithImpl<$Res>
    implements $EventCategoryInputRequestCopyWith<$Res> {
  _$EventCategoryInputRequestCopyWithImpl(this._self, this._then);

  final EventCategoryInputRequest _self;
  final $Res Function(EventCategoryInputRequest) _then;

/// Create a copy of EventCategoryInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? categoryGroup = null,Object? description = freezed,Object? isActive = null,Object? additionalProperties = null,}) {
  return _then(EventCategoryInputRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryGroup: null == categoryGroup ? _self.categoryGroup : categoryGroup // ignore: cast_nullable_to_non_nullable
as CategoryGroupEnum,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [EventCategoryInputRequest].
extension EventCategoryInputRequestPatterns on EventCategoryInputRequest {
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
