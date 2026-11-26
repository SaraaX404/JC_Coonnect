// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HousePoint _$HousePointFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'points', 'reason', 'awarded_by', 'created_at'],
    disallowNullValues: const ['id', 'points', 'reason', 'created_at'],
  );
  return HousePoint(
    id: json['id'] as String,
    points: HousePoint._read_points(json['points']),
    reason: json['reason'] as String,
    awardedBy: json['awarded_by'] == null
        ? null
        : MemberRef.fromJson(json['awarded_by'] as Map<String, dynamic>),
    createdAt: HousePoint._read_createdAt(json['created_at']),
    additionalProperties:
        HousePoint._extras(json, 'additionalProperties') == null
        ? const {}
        : HousePoint._readExtras(
            HousePoint._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$HousePointToJson(HousePoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': ?HousePoint._write_points(instance.points),
      'reason': instance.reason,
      'awarded_by': instance.awardedBy?.toJson(),
      'created_at': ?HousePoint._write_createdAt(instance.createdAt),
    };
