// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'age_groups',
      'coaching_roles',
      'leadership_roles',
      'giving_back',
      'giving_hours',
    ],
    disallowNullValues: const [
      'age_groups',
      'coaching_roles',
      'leadership_roles',
      'giving_back',
      'giving_hours',
    ],
  );
  return Choices(
    ageGroups: (json['age_groups'] as List<dynamic>)
        .map((e) => Choice.fromJson(e as Map<String, dynamic>))
        .toList(),
    coachingRoles: (json['coaching_roles'] as List<dynamic>)
        .map((e) => Choice.fromJson(e as Map<String, dynamic>))
        .toList(),
    leadershipRoles: (json['leadership_roles'] as List<dynamic>)
        .map((e) => Choice.fromJson(e as Map<String, dynamic>))
        .toList(),
    givingBack: (json['giving_back'] as List<dynamic>)
        .map((e) => Choice.fromJson(e as Map<String, dynamic>))
        .toList(),
    givingHours: (json['giving_hours'] as List<dynamic>)
        .map((e) => IntChoice.fromJson(e as Map<String, dynamic>))
        .toList(),
    additionalProperties: Choices._extras(json, 'additionalProperties') == null
        ? const {}
        : Choices._readExtras(Choices._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$ChoicesToJson(Choices instance) => <String, dynamic>{
  'age_groups': instance.ageGroups.map((e) => e.toJson()).toList(),
  'coaching_roles': instance.coachingRoles.map((e) => e.toJson()).toList(),
  'leadership_roles': instance.leadershipRoles.map((e) => e.toJson()).toList(),
  'giving_back': instance.givingBack.map((e) => e.toJson()).toList(),
  'giving_hours': instance.givingHours.map((e) => e.toJson()).toList(),
};
