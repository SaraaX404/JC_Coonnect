// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentEnvelope _$DepartmentEnvelopeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['data'],
    disallowNullValues: const ['data'],
  );
  return DepartmentEnvelope(
    data: Department.fromJson(json['data'] as Map<String, dynamic>),
    error: json['error'],
    meta: json['meta'],
    additionalProperties:
        DepartmentEnvelope._extras(json, 'additionalProperties') == null
        ? const {}
        : DepartmentEnvelope._readExtras(
            DepartmentEnvelope._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$DepartmentEnvelopeToJson(DepartmentEnvelope instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'error': ?instance.error,
      'meta': ?instance.meta,
    };
