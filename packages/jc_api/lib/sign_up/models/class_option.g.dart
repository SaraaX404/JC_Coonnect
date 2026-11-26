// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassOption _$ClassOptionFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name', 'grade_id'],
    disallowNullValues: const ['id', 'name', 'grade_id'],
  );
  return ClassOption(
    id: json['id'] as String,
    name: json['name'] as String,
    gradeId: json['grade_id'] as String,
    additionalProperties:
        ClassOption._extras(json, 'additionalProperties') == null
        ? const {}
        : ClassOption._readExtras(
            ClassOption._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ClassOptionToJson(ClassOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'grade_id': instance.gradeId,
    };
