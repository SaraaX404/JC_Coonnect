// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_academic_year_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedAcademicYearInputRequest _$PatchedAcademicYearInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    disallowNullValues: const ['name', 'start_date', 'end_date', 'term_count'],
  );
  return PatchedAcademicYearInputRequest(
    name: json['name'] as String?,
    startDate: json['start_date'] as String?,
    endDate: json['end_date'] as String?,
    termCount: PatchedAcademicYearInputRequest._read_termCount(
      json['term_count'],
    ),
    additionalProperties:
        PatchedAcademicYearInputRequest._extras(json, 'additionalProperties') ==
            null
        ? const {}
        : PatchedAcademicYearInputRequest._readExtras(
            PatchedAcademicYearInputRequest._extras(
              json,
              'additionalProperties',
            ),
          ),
  );
}

Map<String, dynamic> _$PatchedAcademicYearInputRequestToJson(
  PatchedAcademicYearInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'start_date': ?instance.startDate,
  'end_date': ?instance.endDate,
  'term_count': ?PatchedAcademicYearInputRequest._write_termCount(
    instance.termCount,
  ),
};
