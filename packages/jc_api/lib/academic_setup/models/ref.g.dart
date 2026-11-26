// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ref _$RefFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name'],
    disallowNullValues: const ['id', 'name'],
  );
  return Ref(
    id: json['id'] as String,
    name: json['name'] as String,
    additionalProperties: Ref._extras(json, 'additionalProperties') == null
        ? const {}
        : Ref._readExtras(Ref._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$RefToJson(Ref instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
