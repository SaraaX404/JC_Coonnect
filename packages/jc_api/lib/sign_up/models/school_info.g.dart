// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchoolInfo _$SchoolInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'email_domain'],
    disallowNullValues: const ['name', 'email_domain'],
  );
  return SchoolInfo(
    name: json['name'] as String,
    emailDomain: json['email_domain'] as String,
    additionalProperties:
        SchoolInfo._extras(json, 'additionalProperties') == null
        ? const {}
        : SchoolInfo._readExtras(
            SchoolInfo._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SchoolInfoToJson(SchoolInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email_domain': instance.emailDomain,
    };
