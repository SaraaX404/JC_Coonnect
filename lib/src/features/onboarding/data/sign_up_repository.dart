import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jc_api/jc_api.dart' as api;
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';

/// Self sign-up (backend ADR 0008): prove the email with a code, then apply.
class SignUpRepository {
  const SignUpRepository(this._api);
  final api.JcApi _api;

  /// Emails a 6-digit code; sending again replaces it.
  Future<void> sendCode(String email) => apiCall(
    () => _api.signUp.signupEmailCodeCreate(
      body: api.EmailCodeRequestRequest(schoolId: schoolId, email: email),
    ),
  );

  /// Returns the sign-up token.
  Future<String> verifyCode(String email, String code) async => (await apiCall(
    () => _api.signUp.signupEmailCodeVerifyCreate(
      body: api.EmailCodeVerifyRequest(
        schoolId: schoolId,
        email: email,
        code: code,
      ),
    ),
  )).data.signupToken;

  Future<api.Options2> options(String token) async => (await apiCall(
    () => _api.signUp.signupOptionsRetrieve(xSignupToken: token),
  )).data;

  /// Is [number] on the school's register (with [fullName]: that student's)?
  Future<bool> checkStudent(
    String token, {
    required String number,
    String? fullName,
  }) async => (await apiCall(
    () => _api.signUp.signupStudentCheckCreate(
      xSignupToken: token,
      body: api.StudentCheckRequest(studentNumber: number, fullName: fullName),
    ),
  )).data.match;

  /// Sends the application; returns when the school received it.
  Future<DateTime> submit(SignUpData data) async {
    final role = data.role!;
    final body = api.SignupRequest$Request(
      memberType: switch (role) {
        JcRole.student => api.SignupMemberTypeEnum.student,
        JcRole.parent => api.SignupMemberTypeEnum.guardian,
        JcRole.teacher => api.SignupMemberTypeEnum.staff,
        JcRole.oldBoy => api.SignupMemberTypeEnum.alumni,
      },
      firstName: data.firstName,
      lastName: data.lastName,
      phone: toE164(data.phone),
      password: data.password,
      addressLine1: data.address,
      acceptTerms: true,
      birthday: role == JcRole.student ? data.birthday : null,
      studentProfile: role == JcRole.student
          ? api.StudentProfileInputRequest(studentNumber: data.studentId)
          : null,
      enrollment: role == JcRole.student && data.schoolClass != null
          ? api.EnrollmentInputRequest(
              classId: data.schoolClass!.id,
              academicTrackId: data.academicTrack?.id,
            )
          : null,
      guardians: role == JcRole.student ? data.guardians : null,
      children: role == JcRole.parent
          ? [
              api.ChildRequest(
                fullName: data.sonName,
                studentNumber: data.studentId,
                relationship: data.relationship,
              ),
            ]
          : null,
      staffProfile: role == JcRole.teacher
          ? api.StaffProfileInputRequest(
              staffNumber: data.staffId,
              schoolEmail: api.StaffProfileInputRequestSchoolEmailString(
                data.schoolEmail,
              ),
              isTeacher: data.isTeacher,
              isCoach: data.isCoach,
            )
          : null,
      alumniProfile: role == JcRole.oldBoy
          ? api.AlumniProfileInputRequest(
              graduationYear: int.parse(data.graduationYear),
              lastGradeCompleted: data.lastGrade,
              houseId: data.house?.id,
              formerStudentNumber: data.studentId.isEmpty
                  ? null
                  : data.studentId,
            )
          : null,
    );
    return (await apiCall(
      () => _api.signUp.signupCreate(
        xSignupToken: data.signupToken,
        body: body,
      ),
    )).data.joinedAt;
  }
}

final signUpRepositoryProvider = Provider<SignUpRepository>(
  (ref) => SignUpRepository(ref.watch(jcApiProvider)),
);
