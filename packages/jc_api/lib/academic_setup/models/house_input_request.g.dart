// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HouseInputRequest _$HouseInputRequestFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'colour'],
    disallowNullValues: const ['name', 'colour', 'motto'],
  );
  return HouseInputRequest(
    name: json['name'] as String,
    colour: json['colour'] as String,
    motto: json['motto'] as String?,
    captainId: json['captain_id'] as String?,
    houseMasterId: json['house_master_id'] as String?,
    additionalProperties:
        HouseInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : HouseInputRequest._readExtras(
            HouseInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$HouseInputRequestToJson(HouseInputRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'colour': instance.colour,
      'motto': ?instance.motto,
      'captain_id': ?instance.captainId,
      'house_master_id': ?instance.houseMasterId,
    };
