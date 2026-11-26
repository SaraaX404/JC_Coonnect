// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'options2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Options2 {


/// Create a copy of Options2
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Options2CopyWith<Options2> get copyWith => _$Options2CopyWithImpl<Options2>(this as Options2, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Options2;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Options2&&(identical(other.school, _this.school) || other.school == _this.school)&&(identical(other.terms, _this.terms) || other.terms == _this.terms)&&(identical(other.currentYear, _this.currentYear) || other.currentYear == _this.currentYear)&&const DeepCollectionEquality().equals(other.grades, _this.grades)&&const DeepCollectionEquality().equals(other.classes, _this.classes)&&const DeepCollectionEquality().equals(other.academicTracks, _this.academicTracks)&&const DeepCollectionEquality().equals(other.houses, _this.houses)&&const DeepCollectionEquality().equals(other.subjects, _this.subjects)&&const DeepCollectionEquality().equals(other.departments, _this.departments)&&const DeepCollectionEquality().equals(other.sports, _this.sports)&&const DeepCollectionEquality().equals(other.clubs, _this.clubs)&&(identical(other.choices, _this.choices) || other.choices == _this.choices)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as Options2;
  return Object.hash(runtimeType,_this.school,_this.terms,_this.currentYear,const DeepCollectionEquality().hash(_this.grades),const DeepCollectionEquality().hash(_this.classes),const DeepCollectionEquality().hash(_this.academicTracks),const DeepCollectionEquality().hash(_this.houses),const DeepCollectionEquality().hash(_this.subjects),const DeepCollectionEquality().hash(_this.departments),const DeepCollectionEquality().hash(_this.sports),const DeepCollectionEquality().hash(_this.clubs),_this.choices,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as Options2;
  return 'Options2(school: ${_this.school}, terms: ${_this.terms}, currentYear: ${_this.currentYear}, grades: ${_this.grades}, classes: ${_this.classes}, academicTracks: ${_this.academicTracks}, houses: ${_this.houses}, subjects: ${_this.subjects}, departments: ${_this.departments}, sports: ${_this.sports}, clubs: ${_this.clubs}, choices: ${_this.choices}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $Options2CopyWith<$Res>  {
  factory $Options2CopyWith(Options2 value, $Res Function(Options2) _then) = _$Options2CopyWithImpl;
@useResult
$Res call({
@JsonKey(required: true, disallowNullValue: true) SchoolInfo school,@JsonKey(required: true) Terms? terms,@JsonKey(name: "current_year", required: true) Ref? currentYear,@JsonKey(required: true, disallowNullValue: true) List<Ref> grades,@JsonKey(required: true, disallowNullValue: true) List<ClassOption> classes,@JsonKey(name: "academic_tracks", required: true, disallowNullValue: true) List<Ref> academicTracks,@JsonKey(required: true, disallowNullValue: true) List<Ref> houses,@JsonKey(required: true, disallowNullValue: true) List<Ref> subjects,@JsonKey(required: true, disallowNullValue: true) List<Ref> departments,@JsonKey(required: true, disallowNullValue: true) List<Ref> sports,@JsonKey(required: true, disallowNullValue: true) List<Ref> clubs,@JsonKey(required: true, disallowNullValue: true) Choices choices,@JsonKey(readValue: Options2._extras, fromJson: Options2._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$SchoolInfoCopyWith<$Res> get school;$TermsCopyWith<$Res>? get terms;$RefCopyWith<$Res>? get currentYear;$ChoicesCopyWith<$Res> get choices;

}
/// @nodoc
class _$Options2CopyWithImpl<$Res>
    implements $Options2CopyWith<$Res> {
  _$Options2CopyWithImpl(this._self, this._then);

  final Options2 _self;
  final $Res Function(Options2) _then;

/// Create a copy of Options2
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? school = null,Object? terms = freezed,Object? currentYear = freezed,Object? grades = null,Object? classes = null,Object? academicTracks = null,Object? houses = null,Object? subjects = null,Object? departments = null,Object? sports = null,Object? clubs = null,Object? choices = null,Object? additionalProperties = null,}) {
  return _then(Options2(
school: null == school ? _self.school : school // ignore: cast_nullable_to_non_nullable
as SchoolInfo,terms: freezed == terms ? _self.terms : terms // ignore: cast_nullable_to_non_nullable
as Terms?,currentYear: freezed == currentYear ? _self.currentYear : currentYear // ignore: cast_nullable_to_non_nullable
as Ref?,grades: null == grades ? _self.grades : grades // ignore: cast_nullable_to_non_nullable
as List<Ref>,classes: null == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as List<ClassOption>,academicTracks: null == academicTracks ? _self.academicTracks : academicTracks // ignore: cast_nullable_to_non_nullable
as List<Ref>,houses: null == houses ? _self.houses : houses // ignore: cast_nullable_to_non_nullable
as List<Ref>,subjects: null == subjects ? _self.subjects : subjects // ignore: cast_nullable_to_non_nullable
as List<Ref>,departments: null == departments ? _self.departments : departments // ignore: cast_nullable_to_non_nullable
as List<Ref>,sports: null == sports ? _self.sports : sports // ignore: cast_nullable_to_non_nullable
as List<Ref>,clubs: null == clubs ? _self.clubs : clubs // ignore: cast_nullable_to_non_nullable
as List<Ref>,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as Choices,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of Options2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SchoolInfoCopyWith<$Res> get school {
  
  return $SchoolInfoCopyWith<$Res>(_self.school, (value) {
    return _then(_self.copyWith(school: value));
  });
}/// Create a copy of Options2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TermsCopyWith<$Res>? get terms {
    if (_self.terms == null) {
    return null;
  }

  return $TermsCopyWith<$Res>(_self.terms!, (value) {
    return _then(_self.copyWith(terms: value));
  });
}/// Create a copy of Options2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get currentYear {
    if (_self.currentYear == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.currentYear!, (value) {
    return _then(_self.copyWith(currentYear: value));
  });
}/// Create a copy of Options2
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChoicesCopyWith<$Res> get choices {
  
  return $ChoicesCopyWith<$Res>(_self.choices, (value) {
    return _then(_self.copyWith(choices: value));
  });
}
}


/// Adds pattern-matching-related methods to [Options2].
extension Options2Patterns on Options2 {
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
