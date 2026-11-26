// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_checks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemChecks _$SystemChecksFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'email_verified',
      'graduation_record_found',
      'proof_of_attendance_uploaded',
      'school_email_on_domain',
      'terms_accepted',
      'terms_version',
    ],
    disallowNullValues: const ['email_verified', 'terms_accepted'],
  );
  return SystemChecks(
    emailVerified: json['email_verified'] as bool,
    graduationRecordFound: json['graduation_record_found'] as bool?,
    proofOfAttendanceUploaded: json['proof_of_attendance_uploaded'] as bool?,
    schoolEmailOnDomain: json['school_email_on_domain'] as bool?,
    termsAccepted: json['terms_accepted'] as bool,
    termsVersion: json['terms_version'] as String?,
    additionalProperties:
        SystemChecks._extras(json, 'additionalProperties') == null
        ? const {}
        : SystemChecks._readExtras(
            SystemChecks._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$SystemChecksToJson(SystemChecks instance) =>
    <String, dynamic>{
      'email_verified': instance.emailVerified,
      'graduation_record_found': instance.graduationRecordFound,
      'proof_of_attendance_uploaded': instance.proofOfAttendanceUploaded,
      'school_email_on_domain': instance.schoolEmailOnDomain,
      'terms_accepted': instance.termsAccepted,
      'terms_version': instance.termsVersion,
    };
