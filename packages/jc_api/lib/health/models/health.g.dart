// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Health _$HealthFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['status'],
    disallowNullValues: const ['status', 'checks'],
  );
  return Health(
    status: json['status'] as String,
    checks: (json['checks'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
    additionalProperties: Health._extras(json, 'additionalProperties') == null
        ? const {}
        : Health._readExtras(Health._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$HealthToJson(Health instance) => <String, dynamic>{
  'status': instance.status,
  'checks': ?instance.checks,
};
