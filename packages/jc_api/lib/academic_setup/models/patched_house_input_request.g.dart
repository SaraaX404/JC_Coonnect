// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_house_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedHouseInputRequest _$PatchedHouseInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(json, disallowNullValues: const ['name', 'colour', 'motto']);
  return PatchedHouseInputRequest(
    name: json['name'] as String?,
    colour: json['colour'] as String?,
    motto: json['motto'] as String?,
    captainId: json['captain_id'] as String?,
    houseMasterId: json['house_master_id'] as String?,
    additionalProperties:
        PatchedHouseInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : PatchedHouseInputRequest._readExtras(
            PatchedHouseInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$PatchedHouseInputRequestToJson(
  PatchedHouseInputRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'colour': ?instance.colour,
  'motto': ?instance.motto,
  'captain_id': ?instance.captainId,
  'house_master_id': ?instance.houseMasterId,
};
