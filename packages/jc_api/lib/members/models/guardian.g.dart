// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Guardian _$GuardianFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'guardian',
      'relationship',
      'is_primary',
      'linked_at',
      'verified_at',
      'verified_by',
    ],
    disallowNullValues: const [
      'guardian',
      'relationship',
      'is_primary',
      'linked_at',
    ],
  );
  return Guardian(
    guardian: MemberRef.fromJson(json['guardian'] as Map<String, dynamic>),
    relationship: json['relationship'] as String,
    isPrimary: json['is_primary'] as bool,
    linkedAt: Guardian._read_linkedAt(json['linked_at']),
    verifiedAt: Guardian._read_verifiedAt(json['verified_at']),
    verifiedBy: json['verified_by'] == null
        ? null
        : MemberRef.fromJson(json['verified_by'] as Map<String, dynamic>),
    additionalProperties: Guardian._extras(json, 'additionalProperties') == null
        ? const {}
        : Guardian._readExtras(Guardian._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$GuardianToJson(Guardian instance) => <String, dynamic>{
  'guardian': instance.guardian.toJson(),
  'relationship': instance.relationship,
  'is_primary': instance.isPrimary,
  'linked_at': ?Guardian._write_linkedAt(instance.linkedAt),
  'verified_at': Guardian._write_verifiedAt(instance.verifiedAt),
  'verified_by': instance.verifiedBy?.toJson(),
};
