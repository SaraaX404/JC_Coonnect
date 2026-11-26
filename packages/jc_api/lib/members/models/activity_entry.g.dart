// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityEntry _$ActivityEntryFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'action',
      'subject_type',
      'subject_id',
      'changes',
      'actor',
      'created_at',
    ],
    disallowNullValues: const [
      'id',
      'action',
      'subject_type',
      'subject_id',
      'created_at',
    ],
  );
  return ActivityEntry(
    id: json['id'] as String,
    action: json['action'] as String,
    subjectType: json['subject_type'] as String,
    subjectId: json['subject_id'] as String,
    changes: json['changes'],
    actor: json['actor'] == null
        ? null
        : MemberRef.fromJson(json['actor'] as Map<String, dynamic>),
    createdAt: ActivityEntry._read_createdAt(json['created_at']),
    additionalProperties:
        ActivityEntry._extras(json, 'additionalProperties') == null
        ? const {}
        : ActivityEntry._readExtras(
            ActivityEntry._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$ActivityEntryToJson(ActivityEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'subject_type': instance.subjectType,
      'subject_id': instance.subjectId,
      'changes': instance.changes,
      'actor': instance.actor?.toJson(),
      'created_at': ?ActivityEntry._write_createdAt(instance.createdAt),
    };
