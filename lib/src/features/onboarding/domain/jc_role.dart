import 'package:material_ui/material_ui.dart';

enum JcRole { student, parent, teacher, oldBoy }

extension JcRoleLabel on JcRole {
  String get title => switch (this) {
    JcRole.student => 'Student',
    JcRole.parent => 'Parent or guardian',
    JcRole.teacher => 'Teacher or coach',
    JcRole.oldBoy => 'Old Boy',
  };

  String get subtitle => switch (this) {
    JcRole.student => 'I’m currently enrolled at JC',
    JcRole.parent => 'I have a son at JC',
    JcRole.teacher => 'I teach or coach at Jamaica College',
    JcRole.oldBoy => 'I’m a JC alumnus',
  };

  IconData get icon => switch (this) {
    JcRole.student => Icons.school_outlined,
    JcRole.parent => Icons.people_outline,
    JcRole.teacher => Icons.dashboard_outlined,
    JcRole.oldBoy => Icons.badge_outlined,
  };
}
