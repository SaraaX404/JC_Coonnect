// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grade_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GradeInputRequest _$GradeInputRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'code', 'level'],
    disallowNullValues: const [
      'name',
      'code',
      'level',
      'sort_order',
      'is_active',
    ],
  );
  return GradeInputRequest(
    name: json['name'] as String,
    code: json['code'] as String,
    level: GradeInputRequest._read_level(json['level']),
    sortOrder: GradeInputRequest._presentValue(json, 'sort_order') == null
        ? 0
        : GradeInputRequest._read_sortOrder(
            GradeInputRequest._presentValue(json, 'sort_order') as Object,
          ),
    isActive: GradeInputRequest._presentValue(json, 'is_active') == null
        ? true
        : GradeInputRequest._read_isActive(
            GradeInputRequest._presentValue(json, 'is_active') as Object,
          ),
    additionalProperties:
        GradeInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : GradeInputRequest._readExtras(
            GradeInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GradeInputRequestToJson(GradeInputRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'level': ?GradeInputRequest._write_level(instance.level),
      'sort_order': ?GradeInputRequest._write_sortOrder(instance.sortOrder),
      'is_active': ?GradeInputRequest._write_isActive(instance.isActive),
    };
