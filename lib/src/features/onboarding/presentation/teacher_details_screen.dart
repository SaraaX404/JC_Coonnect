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
      ..teacherRole = [
        if (teacher) 'Teacher',
        if (coach) 'Coach',
      ].join(' and ');
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
    label: 'Your details',
    title: 'Teacher or coach details',
    description: 'We’ll confirm your role with the school administration.',
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcInput(
        label: 'Staff ID',
        hint: 'e.g. JC-STF-0000',
        helper: 'Your JC employee number.',
        controller: staffId,
      ),
      JcInput(
        label: 'School email',
        hint: 'name@jc.edu.jm',
        helper: 'Your @jc.edu.jm email speeds up approval.',
        controller: schoolEmail,
        keyboardType: TextInputType.emailAddress,
      ),
      JcInput(
        label: 'Address',
        hint: 'e.g. 12 Hope Road, Kingston 6',
        controller: address,
      ),
      const SizedBox(height: 8),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('What do you do at JC?', style: JcTextStyles.label),
          Text('Select all that apply', style: JcTextStyles.small),
        ],
      ),
      JcCheckCard(
        title: 'Teacher',
        description: 'I teach subjects and classes',
        value: teacher,
        onChanged: (value) => setState(() => teacher = value),
      ),
      JcCheckCard(
        title: 'Coach',
        description: 'I coach a sports team',
        value: coach,
        onChanged: (value) => setState(() => coach = value),
      ),
      const JcHelper(
        'Pick at least one. We’ll ask a few questions about each.',
      ),
    ],
  );
}
