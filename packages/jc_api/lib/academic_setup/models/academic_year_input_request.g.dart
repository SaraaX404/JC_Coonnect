// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicYearInputRequest _$AcademicYearInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'start_date', 'end_date', 'term_count'],
    disallowNullValues: const ['name', 'start_date', 'end_date', 'term_count'],
  );
  return AcademicYearInputRequest(
    name: json['name'] as String,
    startDate: json['start_date'] as String,
    endDate: json['end_date'] as String,
    termCount: AcademicYearInputRequest._read_termCount(json['term_count']),
    additionalProperties:
        AcademicYearInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : AcademicYearInputRequest._readExtras(
            AcademicYearInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AcademicYearInputRequestToJson(
  AcademicYearInputRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'start_date': instance.startDate,
  'end_date': instance.endDate,
  'term_count': ?AcademicYearInputRequest._write_termCount(instance.termCount),
};
