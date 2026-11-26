// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectionCreateRequest _$ConnectionCreateRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['member_id', 'kind'],
    disallowNullValues: const ['member_id', 'kind'],
  );
  return ConnectionCreateRequest(
    memberId: json['member_id'] as String,
    kind: ConnectionCreateRequest._read_kind(json['kind']),
    additionalProperties:
        ConnectionCreateRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : ConnectionCreateRequest._readExtras(
            ConnectionCreateRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ConnectionCreateRequestToJson(
  ConnectionCreateRequest instance,
) => <String, dynamic>{
  'member_id': instance.memberId,
  'kind': ?ConnectionCreateRequest._write_kind(instance.kind),
};
