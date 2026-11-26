// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Choices {


/// Create a copy of Choices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChoicesCopyWith<Choices> get copyWith => _$ChoicesCopyWithImpl<Choices>(this as Choices, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Choices;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Choices&&const DeepCollectionEquality().equals(other.ageGroups, _this.ageGroups)&&const DeepCollectionEquality().equals(other.coachingRoles, _this.coachingRoles)&&const DeepCollectionEquality().equals(other.leadershipRoles, _this.leadershipRoles)&&const DeepCollectionEquality().equals(other.givingBack, _this.givingBack)&&const DeepCollectionEquality().equals(other.givingHours, _this.givingHours)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as Choices;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.ageGroups),const DeepCollectionEquality().hash(_this.coachingRoles),const DeepCollectionEquality().hash(_this.leadershipRoles),const DeepCollectionEquality().hash(_this.givingBack),const DeepCollectionEquality().hash(_this.givingHours),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as Choices;
  return 'Choices(ageGroups: ${_this.ageGroups}, coachingRoles: ${_this.coachingRoles}, leadershipRoles: ${_this.leadershipRoles}, givingBack: ${_this.givingBack}, givingHours: ${_this.givingHours}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $ChoicesCopyWith<$Res>  {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) _then) = _$ChoicesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "age_groups", required: true, disallowNullValue: true) List<Choice> ageGroups,@JsonKey(name: "coaching_roles", required: true, disallowNullValue: true) List<Choice> coachingRoles,@JsonKey(name: "leadership_roles", required: true, disallowNullValue: true) List<Choice> leadershipRoles,@JsonKey(name: "giving_back", required: true, disallowNullValue: true) List<Choice> givingBack,@JsonKey(name: "giving_hours", required: true, disallowNullValue: true) List<IntChoice> givingHours,@JsonKey(readValue: Choices._extras, fromJson: Choices._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$ChoicesCopyWithImpl<$Res>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._self, this._then);

  final Choices _self;
  final $Res Function(Choices) _then;

/// Create a copy of Choices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ageGroups = null,Object? coachingRoles = null,Object? leadershipRoles = null,Object? givingBack = null,Object? givingHours = null,Object? additionalProperties = null,}) {
  return _then(Choices(
ageGroups: null == ageGroups ? _self.ageGroups : ageGroups // ignore: cast_nullable_to_non_nullable
as List<Choice>,coachingRoles: null == coachingRoles ? _self.coachingRoles : coachingRoles // ignore: cast_nullable_to_non_nullable
as List<Choice>,leadershipRoles: null == leadershipRoles ? _self.leadershipRoles : leadershipRoles // ignore: cast_nullable_to_non_nullable
as List<Choice>,givingBack: null == givingBack ? _self.givingBack : givingBack // ignore: cast_nullable_to_non_nullable
as List<Choice>,givingHours: null == givingHours ? _self.givingHours : givingHours // ignore: cast_nullable_to_non_nullable
as List<IntChoice>,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [Choices].
extension ChoicesPatterns on Choices {
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
