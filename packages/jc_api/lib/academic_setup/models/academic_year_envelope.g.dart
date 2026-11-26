// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcademicYearEnvelope _$AcademicYearEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return AcademicYearEnvelope(
    data: AcademicYear.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        AcademicYearEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : AcademicYearEnvelope._readExtras(
            AcademicYearEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$AcademicYearEnvelopeToJson(
  AcademicYearEnvelope instance,
) => <String, dynamic>{
  'data': instance.data.toJson(),
  'error': ?instance.error,
  'meta': ?instance.meta,
};
