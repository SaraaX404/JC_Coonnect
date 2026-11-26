import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';

/// The sign-up form, filled step by step and submitted on review.
class SignUpData {
  JcRole? role;
  String name = '';
  String email = '';
  String phone = '';
  String password = '';

  /// From /signup/email-code/verify: allows options, the register check and
  /// one submit, for 30 minutes.
  String signupToken = '';

  /// What the pickers offer, loaded once the email is verified.
  Options2? options;

  // Student; a parent's son's id also goes in [studentId].
  String studentId = '';
  Ref? grade;
  ClassOption? schoolClass;
  Ref? academicTrack;
  String academicYear = '';
  String dateOfBirth = '';
  String address = '';

  /// A student's parents or guardians, invited once the school approves.
  List<GuardianContactRequest> guardians = [];

  // Parent.
  String relationship = '';
  String sonName = '';
  String anotherSonName = '';

  // Teacher or coach.
  String staffId = '';
  String schoolEmail = '';
  bool isTeacher = false;
  bool isCoach = false;
  String teacherRole = '';

  // Old boy.
  String graduationYear = '';
  String lastGrade = '';
  Ref? house;
  bool proofUploaded = false;

  /// When the school received the application.
  DateTime? submittedAt;

  List<String> get _names => name.trim().split(RegExp(r'\s+'));

  /// The API takes first and last name; the form has one field.
  String get firstName => _names.first;
  String get lastName => _names.skip(1).join(' ');

  /// [dateOfBirth] as an ISO date (see [isoDate]).
  String? get birthday => isoDate(dateOfBirth);

  /// "14 / 03 / 2010" -> "2010-03-14", or null if it isn't a real past date.
  static String? isoDate(String text) {
    final parts = RegExp(
      r'\d+',
    ).allMatches(text).map((m) => int.parse(m[0]!)).toList();
    if (parts case [final day, final month, final year]) {
      final date = DateTime(year, month, day);
      if (date.day == day &&
          date.month == month &&
          year >= 1900 &&
          date.isBefore(DateTime.now())) {
        return date.toIso8601String().substring(0, 10);
      }
    }
    return null;
  }
}
