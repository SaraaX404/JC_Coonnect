// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_point_input_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HousePointInputRequest _$HousePointInputRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['points', 'reason'],
    disallowNullValues: const ['points', 'reason'],
  );
  return HousePointInputRequest(
    points: HousePointInputRequest._read_points(json['points']),
    reason: json['reason'] as String,
    additionalProperties:
        HousePointInputRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : HousePointInputRequest._readExtras(
            HousePointInputRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$HousePointInputRequestToJson(
  HousePointInputRequest instance,
) => <String, dynamic>{
  'points': ?HousePointInputRequest._write_points(instance.points),
  'reason': instance.reason,
};
