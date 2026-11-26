// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Connection _$ConnectionFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'kind',
      'status',
      'since',
      'from_member',
      'to_member',
      'session_count',
      'last_session_at',
    ],
    disallowNullValues: const [
      'id',
      'kind',
      'status',
      'from_member',
      'to_member',
      'session_count',
    ],
  );
  return Connection(
    id: json['id'] as String,
    kind: Connection._read_kind(json['kind']),
    status: Connection._read_status(json['status']),
    since: Connection._read_since(json['since']),
    fromMember: MemberRef.fromJson(json['from_member'] as Map<String, dynamic>),
    toMember: MemberRef.fromJson(json['to_member'] as Map<String, dynamic>),
    sessionCount: Connection._read_sessionCount(json['session_count']),
    lastSessionAt: Connection._read_lastSessionAt(json['last_session_at']),
    additionalProperties:
        Connection._extras(json, 'additionalProperties') == null
        ? const {}
        : Connection._readExtras(
            Connection._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ConnectionToJson(
  Connection instance,
) => <String, dynamic>{
  'id': instance.id,
  'kind': ?Connection._write_kind(instance.kind),
  'status': ?Connection._write_status(instance.status),
  'since': Connection._write_since(instance.since),
  'from_member': instance.fromMember.toJson(),
  'to_member': instance.toMember.toJson(),
  'session_count': ?Connection._write_sessionCount(instance.sessionCount),
  'last_session_at': Connection._write_lastSessionAt(instance.lastSessionAt),
};
