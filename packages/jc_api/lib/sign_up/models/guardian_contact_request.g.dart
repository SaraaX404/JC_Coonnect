// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_contact_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuardianContactRequest _$GuardianContactRequestFromJson(
  Map<String, dynamic> json,
) {
  $checkKeys(
    json,
    requiredKeys: const ['full_name', 'relationship', 'email'],
    disallowNullValues: const ['full_name', 'relationship', 'email', 'phone'],
  );
  return GuardianContactRequest(
    fullName: json['full_name'] as String,
    relationship: json['relationship'] as String,
    email: json['email'] as String,
    phone: GuardianContactRequest._presentValue(json, 'phone') == null
        ? ""
        : GuardianContactRequest._read_phone(
            GuardianContactRequest._presentValue(json, 'phone') as Object,
          ),
    additionalProperties:
        GuardianContactRequest._extras(json, 'additionalProperties') == null
        ? const {}
        : GuardianContactRequest._readExtras(
            GuardianContactRequest._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$GuardianContactRequestToJson(
  GuardianContactRequest instance,
) => <String, dynamic>{
  'full_name': instance.fullName,
  'relationship': instance.relationship,
  'email': instance.email,
  'phone': ?GuardianContactRequest._write_phone(instance.phone),
};
