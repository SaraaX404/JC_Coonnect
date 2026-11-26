// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberRef _$MemberRefFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'first_name', 'last_name', 'member_type'],
    disallowNullValues: const ['id', 'first_name', 'last_name', 'member_type'],
  );
  return MemberRef(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    memberType: json['member_type'] as String,
    additionalProperties:
        MemberRef._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberRef._readExtras(
            MemberRef._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberRefToJson(MemberRef instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'member_type': instance.memberType,
};
