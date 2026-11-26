// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolChoice _$SchoolChoiceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name', 'code'],
    disallowNullValues: const ['id', 'name', 'code'],
  );
  return SchoolChoice(
    id: json['id'] as String,
    name: json['name'] as String,
    code: json['code'] as String,
    additionalProperties:
        SchoolChoice._extras(json, 'additionalProperties') == null
        ? const {}
        : SchoolChoice._readExtras(
            SchoolChoice._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SchoolChoiceToJson(SchoolChoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };
