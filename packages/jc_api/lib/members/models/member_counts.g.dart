// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberCounts _$MemberCountsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'total',
      'student',
      'staff',
      'alumni',
      'guardian',
      'admin',
    ],
    disallowNullValues: const [
      'total',
      'student',
      'staff',
      'alumni',
      'guardian',
      'admin',
    ],
  );
  return MemberCounts(
    total: MemberCounts._read_total(json['total']),
    student: MemberCounts._read_student(json['student']),
    staff: MemberCounts._read_staff(json['staff']),
    alumni: MemberCounts._read_alumni(json['alumni']),
    guardian: MemberCounts._read_guardian(json['guardian']),
    admin: MemberCounts._read_admin(json['admin']),
    additionalProperties:
        MemberCounts._extras(json, 'additionalProperties') == null
        ? const {}
        : MemberCounts._readExtras(
            MemberCounts._extras(json, 'additionalProperties'),
          ),
  );
}

Map<String, dynamic> _$MemberCountsToJson(MemberCounts instance) =>
    <String, dynamic>{
      'total': ?MemberCounts._write_total(instance.total),
      'student': ?MemberCounts._write_student(instance.student),
      'staff': ?MemberCounts._write_staff(instance.staff),
      'alumni': ?MemberCounts._write_alumni(instance.alumni),
      'guardian': ?MemberCounts._write_guardian(instance.guardian),
      'admin': ?MemberCounts._write_admin(instance.admin),
    };
