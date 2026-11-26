// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlumniProfile {


/// Create a copy of AlumniProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlumniProfileCopyWith<AlumniProfile> get copyWith => _$AlumniProfileCopyWithImpl<AlumniProfile>(this as AlumniProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AlumniProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlumniProfile&&(identical(other.graduationYear, _this.graduationYear) || other.graduationYear == _this.graduationYear)&&(identical(other.lastGradeCompleted, _this.lastGradeCompleted) || other.lastGradeCompleted == _this.lastGradeCompleted)&&(identical(other.formerStudentNumber, _this.formerStudentNumber) || other.formerStudentNumber == _this.formerStudentNumber)&&(identical(other.currentOccupation, _this.currentOccupation) || other.currentOccupation == _this.currentOccupation)&&(identical(other.organisation, _this.organisation) || other.organisation == _this.organisation)&&(identical(other.industry, _this.industry) || other.industry == _this.industry)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.linkedinUrl, _this.linkedinUrl) || other.linkedinUrl == _this.linkedinUrl)&&const DeepCollectionEquality().equals(other.leadershipRoles, _this.leadershipRoles)&&const DeepCollectionEquality().equals(other.givingBack, _this.givingBack)&&(identical(other.givingHours, _this.givingHours) || other.givingHours == _this.givingHours)&&(identical(other.house, _this.house) || other.house == _this.house)&&(identical(other.chapter, _this.chapter) || other.chapter == _this.chapter)&&const DeepCollectionEquality().equals(other.groups, _this.groups)&&(identical(other.graduationRecordFound, _this.graduationRecordFound) || other.graduationRecordFound == _this.graduationRecordFound)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as AlumniProfile;
  return Object.hash(runtimeType,_this.graduationYear,_this.lastGradeCompleted,_this.formerStudentNumber,_this.currentOccupation,_this.organisation,_this.industry,_this.city,_this.country,_this.linkedinUrl,const DeepCollectionEquality().hash(_this.leadershipRoles),const DeepCollectionEquality().hash(_this.givingBack),_this.givingHours,_this.house,_this.chapter,const DeepCollectionEquality().hash(_this.groups),_this.graduationRecordFound,const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as AlumniProfile;
  return 'AlumniProfile(graduationYear: ${_this.graduationYear}, lastGradeCompleted: ${_this.lastGradeCompleted}, formerStudentNumber: ${_this.formerStudentNumber}, currentOccupation: ${_this.currentOccupation}, organisation: ${_this.organisation}, industry: ${_this.industry}, city: ${_this.city}, country: ${_this.country}, linkedinUrl: ${_this.linkedinUrl}, leadershipRoles: ${_this.leadershipRoles}, givingBack: ${_this.givingBack}, givingHours: ${_this.givingHours}, house: ${_this.house}, chapter: ${_this.chapter}, groups: ${_this.groups}, graduationRecordFound: ${_this.graduationRecordFound}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $AlumniProfileCopyWith<$Res>  {
  factory $AlumniProfileCopyWith(AlumniProfile value, $Res Function(AlumniProfile) _then) = _$AlumniProfileCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "graduation_year", required: true, disallowNullValue: true, fromJson: AlumniProfile._read_graduationYear, toJson: AlumniProfile._write_graduationYear) int graduationYear,@JsonKey(name: "last_grade_completed", required: true, disallowNullValue: true) String lastGradeCompleted,@JsonKey(name: "former_student_number", required: true, disallowNullValue: true) String formerStudentNumber,@JsonKey(name: "current_occupation", required: true, disallowNullValue: true) String currentOccupation,@JsonKey(required: true, disallowNullValue: true) String organisation,@JsonKey(required: true, disallowNullValue: true) String industry,@JsonKey(required: true, disallowNullValue: true) String city,@JsonKey(required: true, disallowNullValue: true) String country,@JsonKey(name: "linkedin_url", required: true, disallowNullValue: true) String linkedinUrl,@JsonKey(name: "leadership_roles", required: true, disallowNullValue: true, fromJson: AlumniProfile._read_leadershipRoles, toJson: AlumniProfile._write_leadershipRoles) List<LeadershipRolesEnum> leadershipRoles,@JsonKey(name: "giving_back", required: true, disallowNullValue: true, fromJson: AlumniProfile._read_givingBack, toJson: AlumniProfile._write_givingBack) List<GivingBackEnum> givingBack,@JsonKey(name: "giving_hours", required: true, fromJson: AlumniProfile._read_givingHours, toJson: AlumniProfile._write_givingHours) GivingHoursEnum? givingHours,@JsonKey(required: true) Ref? house,@JsonKey(required: true) Ref? chapter,@JsonKey(required: true, disallowNullValue: true) List<Ref> groups,@JsonKey(name: "graduation_record_found", required: true, disallowNullValue: true) bool graduationRecordFound,@JsonKey(readValue: AlumniProfile._extras, fromJson: AlumniProfile._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});


$RefCopyWith<$Res>? get house;$RefCopyWith<$Res>? get chapter;

}
/// @nodoc
class _$AlumniProfileCopyWithImpl<$Res>
    implements $AlumniProfileCopyWith<$Res> {
  _$AlumniProfileCopyWithImpl(this._self, this._then);

  final AlumniProfile _self;
  final $Res Function(AlumniProfile) _then;

/// Create a copy of AlumniProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? graduationYear = null,Object? lastGradeCompleted = null,Object? formerStudentNumber = null,Object? currentOccupation = null,Object? organisation = null,Object? industry = null,Object? city = null,Object? country = null,Object? linkedinUrl = null,Object? leadershipRoles = null,Object? givingBack = null,Object? givingHours = freezed,Object? house = freezed,Object? chapter = freezed,Object? groups = null,Object? graduationRecordFound = null,Object? additionalProperties = null,}) {
  return _then(AlumniProfile(
graduationYear: null == graduationYear ? _self.graduationYear : graduationYear // ignore: cast_nullable_to_non_nullable
as int,lastGradeCompleted: null == lastGradeCompleted ? _self.lastGradeCompleted : lastGradeCompleted // ignore: cast_nullable_to_non_nullable
as String,formerStudentNumber: null == formerStudentNumber ? _self.formerStudentNumber : formerStudentNumber // ignore: cast_nullable_to_non_nullable
as String,currentOccupation: null == currentOccupation ? _self.currentOccupation : currentOccupation // ignore: cast_nullable_to_non_nullable
as String,organisation: null == organisation ? _self.organisation : organisation // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,linkedinUrl: null == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as String,leadershipRoles: null == leadershipRoles ? _self.leadershipRoles : leadershipRoles // ignore: cast_nullable_to_non_nullable
as List<LeadershipRolesEnum>,givingBack: null == givingBack ? _self.givingBack : givingBack // ignore: cast_nullable_to_non_nullable
as List<GivingBackEnum>,givingHours: freezed == givingHours ? _self.givingHours : givingHours // ignore: cast_nullable_to_non_nullable
as GivingHoursEnum?,house: freezed == house ? _self.house : house // ignore: cast_nullable_to_non_nullable
as Ref?,chapter: freezed == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as Ref?,groups: null == groups ? _self.groups : groups // ignore: cast_nullable_to_non_nullable
as List<Ref>,graduationRecordFound: null == graduationRecordFound ? _self.graduationRecordFound : graduationRecordFound // ignore: cast_nullable_to_non_nullable
as bool,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}
/// Create a copy of AlumniProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get house {
    if (_self.house == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.house!, (value) {
    return _then(_self.copyWith(house: value));
  });
}/// Create a copy of AlumniProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RefCopyWith<$Res>? get chapter {
    if (_self.chapter == null) {
    return null;
  }

  return $RefCopyWith<$Res>(_self.chapter!, (value) {
    return _then(_self.copyWith(chapter: value));
  });
}
}


/// Adds pattern-matching-related methods to [AlumniProfile].
extension AlumniProfilePatterns on AlumniProfile {
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
