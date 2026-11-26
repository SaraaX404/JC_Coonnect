// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'right.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Right _$RightFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['code', 'description', 'granted', 'overridden'],
    disallowNullValues: const ['code', 'description', 'granted', 'overridden'],
  );
  return Right(
    code: json['code'] as String,
    description: json['description'] as String,
    granted: json['granted'] as bool,
    overridden: json['overridden'] as bool,
    additionalProperties: Right._extras(json, 'additionalProperties') == null
        ? const {}
        : Right._readExtras(Right._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$RightToJson(Right instance) => <String, dynamic>{
  'code': instance.code,
  'description': instance.description,
  'granted': instance.granted,
  'overridden': instance.overridden,
};
