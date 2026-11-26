import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/terms_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_check_card.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_helper.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

class TeacherDetailsScreen extends StatefulWidget {
  const TeacherDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<TeacherDetailsScreen> createState() => _TeacherDetailsScreenState();
}

class _TeacherDetailsScreenState extends State<TeacherDetailsScreen> {
  final staffId = TextEditingController();
  final schoolEmail = TextEditingController();
  final address = TextEditingController();
  bool teacher = false;
  bool coach = false;

  bool get canContinue =>
      staffId.text.trim().isNotEmpty &&
      RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(schoolEmail.text.trim()) &&
      address.text.trim().isNotEmpty &&
      (teacher || coach);

  @override
  void initState() {
    super.initState();
    for (final controller in [staffId, schoolEmail, address]) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  void _continue(BuildContext context) {
    widget.data
      ..staffId = staffId.text.trim()
      ..schoolEmail = schoolEmail.text.trim()
      ..address = address.text.trim()
      ..teacherRole = context.l10n.teacherRoleSummary(
        teacher && coach
            ? 'both'
            : (teacher ? 'teacher' : (coach ? 'coach' : 'none')),
      );
    pushScreen(context, TermsScreen(data: widget.data));
  }

  @override
  void dispose() {
    for (final controller in [staffId, schoolEmail, address]) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: context.l10n.commonYourDetails,
    title: context.l10n.teacherHeading,
    description: context.l10n.teacherDescription,
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcInput(
        label: context.l10n.commonStaffId,
        hint: context.l10n.teacherStaffIdHint,
        helper: context.l10n.teacherStaffIdHelp,
        controller: staffId,
      ),
      JcInput(
        label: context.l10n.commonSchoolEmail,
        hint: context.l10n.teacherSchoolEmailHint,
        helper: context.l10n.teacherSchoolEmailHelp,
        controller: schoolEmail,
        keyboardType: TextInputType.emailAddress,
      ),
      JcInput(
        label: context.l10n.commonAddress,
        hint: context.l10n.commonAddressHint,
        controller: address,
      ),
      const SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(context.l10n.teacherWhatDoYouDo, style: JcTextStyles.label),
          Text(context.l10n.teacherSelectAll, style: JcTextStyles.small),
        ],
      ),
      JcCheckCard(
        title: context.l10n.teacherTeacher,
        description: context.l10n.teacherTeacherDescription,
        value: teacher,
        onChanged: (value) => setState(() => teacher = value),
      ),
      JcCheckCard(
        title: context.l10n.teacherCoach,
        description: context.l10n.teacherCoachDescription,
        value: coach,
        onChanged: (value) => setState(() => coach = value),
      ),
      JcHelper(
        context.l10n.teacherPickOne,
      ),
    ],
  );
}
