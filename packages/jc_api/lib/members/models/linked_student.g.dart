// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linked_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LinkedStudent _$LinkedStudentFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'student',
      'relationship',
      'is_primary',
      'linked_at',
      'verified_at',
      'verified_by',
    ],
    disallowNullValues: const [
      'student',
      'relationship',
      'is_primary',
      'linked_at',
    ],
  );
  return LinkedStudent(
    student: MemberRef.fromJson(json['student'] as Map<String, dynamic>),
    relationship: json['relationship'] as String,
    isPrimary: json['is_primary'] as bool,
    linkedAt: LinkedStudent._read_linkedAt(json['linked_at']),
    verifiedAt: LinkedStudent._read_verifiedAt(json['verified_at']),
    verifiedBy: json['verified_by'] == null
        ? null
        : MemberRef.fromJson(json['verified_by'] as Map<String, dynamic>),
    additionalProperties:
        LinkedStudent._extras(json, 'additionalProperties') == null
        ? const {}
        : LinkedStudent._readExtras(
            LinkedStudent._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$LinkedStudentToJson(LinkedStudent instance) =>
    <String, dynamic>{
      'student': instance.student.toJson(),
      'relationship': instance.relationship,
      'is_primary': instance.isPrimary,
      'linked_at': ?LinkedStudent._write_linkedAt(instance.linkedAt),
      'verified_at': LinkedStudent._write_verifiedAt(instance.verifiedAt),
      'verified_by': instance.verifiedBy?.toJson(),
    };
