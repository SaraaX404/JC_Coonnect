// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_profile_input_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AlumniProfileInputRequest {


/// Create a copy of AlumniProfileInputRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlumniProfileInputRequestCopyWith<AlumniProfileInputRequest> get copyWith => _$AlumniProfileInputRequestCopyWithImpl<AlumniProfileInputRequest>(this as AlumniProfileInputRequest, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AlumniProfileInputRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlumniProfileInputRequest&&(identical(other.graduationYear, _this.graduationYear) || other.graduationYear == _this.graduationYear)&&(identical(other.lastGradeCompleted, _this.lastGradeCompleted) || other.lastGradeCompleted == _this.lastGradeCompleted)&&(identical(other.houseId, _this.houseId) || other.houseId == _this.houseId)&&(identical(other.formerStudentNumber, _this.formerStudentNumber) || other.formerStudentNumber == _this.formerStudentNumber)&&(identical(other.chapterId, _this.chapterId) || other.chapterId == _this.chapterId)&&(identical(other.currentOccupation, _this.currentOccupation) || other.currentOccupation == _this.currentOccupation)&&(identical(other.organisation, _this.organisation) || other.organisation == _this.organisation)&&(identical(other.industry, _this.industry) || other.industry == _this.industry)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.country, _this.country) || other.country == _this.country)&&(identical(other.linkedinUrl, _this.linkedinUrl) || other.linkedinUrl == _this.linkedinUrl)&&const DeepCollectionEquality().equals(other.leadershipRoles, _this.leadershipRoles)&&const DeepCollectionEquality().equals(other.givingBack, _this.givingBack)&&(identical(other.givingHours, _this.givingHours) || other.givingHours == _this.givingHours)&&const DeepCollectionEquality().equals(other.groupIds, _this.groupIds)&&const DeepCollectionEquality().equals(other.additionalProperties, _this.additionalProperties));
}


@override
int get hashCode {
  final _this = this as AlumniProfileInputRequest;
  return Object.hash(runtimeType,_this.graduationYear,_this.lastGradeCompleted,_this.houseId,_this.formerStudentNumber,_this.chapterId,_this.currentOccupation,_this.organisation,_this.industry,_this.city,_this.country,_this.linkedinUrl,const DeepCollectionEquality().hash(_this.leadershipRoles),const DeepCollectionEquality().hash(_this.givingBack),_this.givingHours,const DeepCollectionEquality().hash(_this.groupIds),const DeepCollectionEquality().hash(_this.additionalProperties));
}

@override
String toString() {
  final _this = this as AlumniProfileInputRequest;
  return 'AlumniProfileInputRequest(graduationYear: ${_this.graduationYear}, lastGradeCompleted: ${_this.lastGradeCompleted}, houseId: ${_this.houseId}, formerStudentNumber: ${_this.formerStudentNumber}, chapterId: ${_this.chapterId}, currentOccupation: ${_this.currentOccupation}, organisation: ${_this.organisation}, industry: ${_this.industry}, city: ${_this.city}, country: ${_this.country}, linkedinUrl: ${_this.linkedinUrl}, leadershipRoles: ${_this.leadershipRoles}, givingBack: ${_this.givingBack}, givingHours: ${_this.givingHours}, groupIds: ${_this.groupIds}, additionalProperties: ${_this.additionalProperties})';
}


}

/// @nodoc
abstract mixin class $AlumniProfileInputRequestCopyWith<$Res>  {
  factory $AlumniProfileInputRequestCopyWith(AlumniProfileInputRequest value, $Res Function(AlumniProfileInputRequest) _then) = _$AlumniProfileInputRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "graduation_year", required: true, disallowNullValue: true, fromJson: AlumniProfileInputRequest._read_graduationYear, toJson: AlumniProfileInputRequest._write_graduationYear) int graduationYear,@JsonKey(name: "last_grade_completed", disallowNullValue: true, includeIfNull: false) String? lastGradeCompleted,@JsonKey(name: "house_id", includeIfNull: false) String? houseId,@JsonKey(name: "former_student_number", disallowNullValue: true, includeIfNull: false) String? formerStudentNumber,@JsonKey(name: "chapter_id", includeIfNull: false) String? chapterId,@JsonKey(name: "current_occupation", disallowNullValue: true, includeIfNull: false) String? currentOccupation,@JsonKey(disallowNullValue: true, includeIfNull: false) String? organisation,@JsonKey(disallowNullValue: true, includeIfNull: false) String? industry,@JsonKey(disallowNullValue: true, includeIfNull: false) String? city,@JsonKey(disallowNullValue: true, includeIfNull: false) String? country,@JsonKey(name: "linkedin_url", explicitJsonNullWhenNonNullField: true, fromJson: AlumniProfileInputRequest._read_linkedinUrl, toJson: AlumniProfileInputRequest._write_linkedinUrl) AlumniProfileInputRequestLinkedinUrl? linkedinUrl,@JsonKey(name: "leadership_roles", disallowNullValue: true, includeIfNull: false, fromJson: AlumniProfileInputRequest._read_leadershipRoles, toJson: AlumniProfileInputRequest._write_leadershipRoles) List<LeadershipRolesEnum>? leadershipRoles,@JsonKey(name: "giving_back", disallowNullValue: true, includeIfNull: false, fromJson: AlumniProfileInputRequest._read_givingBack, toJson: AlumniProfileInputRequest._write_givingBack) List<GivingBackEnum>? givingBack,@JsonKey(name: "giving_hours", includeIfNull: false, fromJson: AlumniProfileInputRequest._read_givingHours, toJson: AlumniProfileInputRequest._write_givingHours) GivingHoursEnum? givingHours,@JsonKey(name: "group_ids", disallowNullValue: true, includeIfNull: false) List<String>? groupIds,@JsonKey(readValue: AlumniProfileInputRequest._extras, fromJson: AlumniProfileInputRequest._readExtras, includeToJson: false) Map<String, Object?> additionalProperties
});




}
/// @nodoc
class _$AlumniProfileInputRequestCopyWithImpl<$Res>
    implements $AlumniProfileInputRequestCopyWith<$Res> {
  _$AlumniProfileInputRequestCopyWithImpl(this._self, this._then);

  final AlumniProfileInputRequest _self;
  final $Res Function(AlumniProfileInputRequest) _then;

/// Create a copy of AlumniProfileInputRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? graduationYear = null,Object? lastGradeCompleted = freezed,Object? houseId = freezed,Object? formerStudentNumber = freezed,Object? chapterId = freezed,Object? currentOccupation = freezed,Object? organisation = freezed,Object? industry = freezed,Object? city = freezed,Object? country = freezed,Object? linkedinUrl = freezed,Object? leadershipRoles = freezed,Object? givingBack = freezed,Object? givingHours = freezed,Object? groupIds = freezed,Object? additionalProperties = null,}) {
  return _then(AlumniProfileInputRequest(
graduationYear: null == graduationYear ? _self.graduationYear : graduationYear // ignore: cast_nullable_to_non_nullable
as int,lastGradeCompleted: freezed == lastGradeCompleted ? _self.lastGradeCompleted : lastGradeCompleted // ignore: cast_nullable_to_non_nullable
as String?,houseId: freezed == houseId ? _self.houseId : houseId // ignore: cast_nullable_to_non_nullable
as String?,formerStudentNumber: freezed == formerStudentNumber ? _self.formerStudentNumber : formerStudentNumber // ignore: cast_nullable_to_non_nullable
as String?,chapterId: freezed == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as String?,currentOccupation: freezed == currentOccupation ? _self.currentOccupation : currentOccupation // ignore: cast_nullable_to_non_nullable
as String?,organisation: freezed == organisation ? _self.organisation : organisation // ignore: cast_nullable_to_non_nullable
as String?,industry: freezed == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,linkedinUrl: freezed == linkedinUrl ? _self.linkedinUrl : linkedinUrl // ignore: cast_nullable_to_non_nullable
as AlumniProfileInputRequestLinkedinUrl?,leadershipRoles: freezed == leadershipRoles ? _self.leadershipRoles : leadershipRoles // ignore: cast_nullable_to_non_nullable
as List<LeadershipRolesEnum>?,givingBack: freezed == givingBack ? _self.givingBack : givingBack // ignore: cast_nullable_to_non_nullable
as List<GivingBackEnum>?,givingHours: freezed == givingHours ? _self.givingHours : givingHours // ignore: cast_nullable_to_non_nullable
as GivingHoursEnum?,groupIds: freezed == groupIds ? _self.groupIds : groupIds // ignore: cast_nullable_to_non_nullable
as List<String>?,additionalProperties: null == additionalProperties ? _self.additionalProperties : additionalProperties // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>,
  ));
}

}


/// Adds pattern-matching-related methods to [AlumniProfileInputRequest].
extension AlumniProfileInputRequestPatterns on AlumniProfileInputRequest {
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
