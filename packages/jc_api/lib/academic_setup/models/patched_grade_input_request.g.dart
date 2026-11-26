// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_grade_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedGradeInputRequest _$PatchedGradeInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    disallowNullValues: const [
      'name',
      'code',
      'level',
      'sort_order',
      'is_active',
    ],
  );
  return PatchedGradeInputRequest(
    name: json['name'] as String?,
    code: json['code'] as String?,
    level: PatchedGradeInputRequest._read_level(json['level']),
    sortOrder:
        PatchedGradeInputRequest._presentValue(json, 'sort_order') == null
        ? 0
        : PatchedGradeInputRequest._read_sortOrder(
            PatchedGradeInputRequest._presentValue(json, 'sort_order')
                as Object,
          ),
    isActive: PatchedGradeInputRequest._presentValue(json, 'is_active') == null
        ? true
        : PatchedGradeInputRequest._read_isActive(
            PatchedGradeInputRequest._presentValue(json, 'is_active') as Object,
          ),
    additionalProperties:
        PatchedGradeInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedGradeInputRequest._readExtras(
            PatchedGradeInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedGradeInputRequestToJson(
  PatchedGradeInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'code': ?instance.code,
  'level': ?PatchedGradeInputRequest._write_level(instance.level),
  'sort_order': ?PatchedGradeInputRequest._write_sortOrder(instance.sortOrder),
  'is_active': ?PatchedGradeInputRequest._write_isActive(instance.isActive),
};
