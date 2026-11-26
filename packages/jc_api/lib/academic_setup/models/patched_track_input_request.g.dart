// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_track_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTrackInputRequest _$PatchedTrackInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    disallowNullValues: const ['name', 'code', 'description', 'is_active'],
  );
  return PatchedTrackInputRequest(
    name: json['name'] as String?,
    code: json['code'] as String?,
    description: json['description'] as String?,
    isActive: PatchedTrackInputRequest._presentValue(json, 'is_active') == null
        ? true
        : PatchedTrackInputRequest._read_isActive(
            PatchedTrackInputRequest._presentValue(json, 'is_active') as Object,
          ),
    additionalProperties:
        PatchedTrackInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedTrackInputRequest._readExtras(
            PatchedTrackInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedTrackInputRequestToJson(
  PatchedTrackInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'code': ?instance.code,
  'description': ?instance.description,
  'is_active': ?PatchedTrackInputRequest._write_isActive(instance.isActive),
};
