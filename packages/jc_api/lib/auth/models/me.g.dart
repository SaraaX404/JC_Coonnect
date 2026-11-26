// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Me _$MeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'first_name',
      'last_name',
      'phone',
      'email',
      'school_id',
      'perms',
    ],
    disallowNullValues: const [
      'id',
      'first_name',
      'last_name',
      'phone',
      'email',
      'address_line1',
      'address_line2',
      'city',
      'district',
      'school_id',
      'perms',
    ],
  );
  return Me(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    birthday: json['birthday'] as String?,
    addressLine1: json['address_line1'] as String?,
    addressLine2: json['address_line2'] as String?,
    city: json['city'] as String?,
    district: json['district'] as String?,
    schoolId: json['school_id'] as String,
    perms: (json['perms'] as List<dynamic>).map((e) => e as String).toList(),
    additionalProperties: Me._extras(json, 'additionalProperties') == null
        ? const {}
        : Me._readExtras(Me._extras(json, 'additionalProperties')),
  );
}

Map<String, dynamic> _$MeToJson(Me instance) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'phone': instance.phone,
  'email': instance.email,
  'birthday': ?instance.birthday,
  'address_line1': ?instance.addressLine1,
  'address_line2': ?instance.addressLine2,
  'city': ?instance.city,
  'district': ?instance.district,
  'school_id': instance.schoolId,
  'perms': instance.perms,
};
