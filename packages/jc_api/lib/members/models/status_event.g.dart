// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusEvent _$StatusEventFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'action',
      'from_status',
      'to_status',
      'reason',
      'note',
      'actor',
      'created_at',
    ],
    disallowNullValues: const [
      'id',
      'action',
      'from_status',
      'to_status',
      'reason',
      'note',
      'created_at',
    ],
  );
  return StatusEvent(
    id: json['id'] as String,
    action: StatusEvent._read_action(json['action']),
    fromStatus: StatusEvent._read_fromStatus(json['from_status']),
    toStatus: StatusEvent._read_toStatus(json['to_status']),
    reason: json['reason'] as String,
    note: json['note'] as String,
    actor: json['actor'] == null
        ? null
        : MemberRef.fromJson(json['actor'] as Map<String, dynamic>),
    createdAt: StatusEvent._read_createdAt(json['created_at']),
    additionalProperties:
        StatusEvent._extras(json, 'additionalProperties') == null
        ? const {}
        : StatusEvent._readExtras(
            StatusEvent._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$StatusEventToJson(StatusEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': ?StatusEvent._write_action(instance.action),
      'from_status': ?StatusEvent._write_fromStatus(instance.fromStatus),
      'to_status': ?StatusEvent._write_toStatus(instance.toStatus),
      'reason': instance.reason,
      'note': instance.note,
      'actor': instance.actor?.toJson(),
      'created_at': ?StatusEvent._write_createdAt(instance.createdAt),
    };
