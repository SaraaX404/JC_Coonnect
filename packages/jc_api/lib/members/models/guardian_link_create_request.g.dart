// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_link_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuardianLinkCreateRequest _$GuardianLinkCreateRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['guardian_id', 'relationship'],
    disallowNullValues: const ['guardian_id', 'relationship', 'is_primary'],
  );
  return GuardianLinkCreateRequest(
    guardianId: json['guardian_id'] as String,
    relationship: json['relationship'] as String,
    isPrimary:
        GuardianLinkCreateRequest._presentValue(json, 'is_primary') == null
        ? false
        : GuardianLinkCreateRequest._read_isPrimary(
            GuardianLinkCreateRequest._presentValue(json, 'is_primary')
                as Object,
          ),
    additionalProperties:
        GuardianLinkCreateRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : GuardianLinkCreateRequest._readExtras(
            GuardianLinkCreateRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GuardianLinkCreateRequestToJson(
  GuardianLinkCreateRequest instance,
) => <String, dynamic>{
  'guardian_id': instance.guardianId,
  'relationship': instance.relationship,
  'is_primary': ?GuardianLinkCreateRequest._write_isPrimary(instance.isPrimary),
};
