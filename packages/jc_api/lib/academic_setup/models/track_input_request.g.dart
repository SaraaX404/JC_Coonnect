// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackInputRequest _$TrackInputRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name'],
    disallowNullValues: const ['name', 'code', 'description', 'is_active'],
  );
  return TrackInputRequest(
    name: json['name'] as String,
    code: json['code'] as String?,
    description: json['description'] as String?,
    isActive: TrackInputRequest._presentValue(json, 'is_active') == null
        ? true
        : TrackInputRequest._read_isActive(
            TrackInputRequest._presentValue(json, 'is_active') as Object,
          ),
    additionalProperties:
        TrackInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : TrackInputRequest._readExtras(
            TrackInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$TrackInputRequestToJson(TrackInputRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': ?instance.code,
      'description': ?instance.description,
      'is_active': ?TrackInputRequest._write_isActive(instance.isActive),
    };
