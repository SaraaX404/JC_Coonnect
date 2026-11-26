import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:material_ui/material_ui.dart';

enum JcRole { student, parent, teacher, oldBoy }

extension JcRoleLabel on JcRole {
  String title(AppLocalizations l10n) => switch (this) {
    JcRole.student => l10n.roleStudent,
    JcRole.parent => l10n.roleParent,
    JcRole.teacher => l10n.roleTeacher,
    JcRole.oldBoy => l10n.roleOldBoy,
  };

  String subtitle(AppLocalizations l10n) => switch (this) {
    JcRole.student => l10n.roleStudentDescription,
    JcRole.parent => l10n.roleParentDescription,
    JcRole.teacher => l10n.roleTeacherDescription,
    JcRole.oldBoy => l10n.roleOldBoyDescription,
  };

  IconData get icon => switch (this) {
    JcRole.student => Icons.school_outlined,
    JcRole.parent => Icons.people_outline,
    JcRole.teacher => Icons.dashboard_outlined,
    JcRole.oldBoy => Icons.badge_outlined,
  };
}
