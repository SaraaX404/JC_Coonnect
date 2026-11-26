// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

House _$HouseFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'name',
      'colour',
      'motto',
      'captain',
      'house_master',
      'member_count',
      'points_total',
      'archived_at',
    ],
    disallowNullValues: const [
      'id',
      'name',
      'colour',
      'motto',
      'member_count',
      'points_total',
    ],
  );
  return House(
    id: json['id'] as String,
    name: json['name'] as String,
    colour: json['colour'] as String,
    motto: json['motto'] as String,
    captain: json['captain'] == null
        ? null
        : MemberRef.fromJson(json['captain'] as Map<String, dynamic>),
    houseMaster: json['house_master'] == null
        ? null
        : MemberRef.fromJson(json['house_master'] as Map<String, dynamic>),
    memberCount: House._read_memberCount(json['member_count']),
    pointsTotal: House._read_pointsTotal(json['points_total']),
    archivedAt: House._read_archivedAt(json['archived_at']),
    additionalProperties: House._extras(json, 'additionalProperties') == null
        ? const {}
        : House._readExtras(House._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$HouseToJson(House instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'colour': instance.colour,
  'motto': instance.motto,
  'captain': instance.captain?.toJson(),
  'house_master': instance.houseMaster?.toJson(),
  'member_count': ?House._write_memberCount(instance.memberCount),
  'points_total': ?House._write_pointsTotal(instance.pointsTotal),
  'archived_at': House._write_archivedAt(instance.archivedAt),
};
