import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/terms_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_accordion.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_file_field.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_helper.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_select.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

class OldBoyDetailsFlowScreen extends StatefulWidget {
  const OldBoyDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<OldBoyDetailsFlowScreen> createState() =>
      _OldBoyDetailsFlowScreenState();
}

class _OldBoyDetailsFlowScreenState extends State<OldBoyDetailsFlowScreen> {
  final formerStudentId = TextEditingController();
  String graduationYear = '';
  String lastGrade = '';
  String house = '';
  bool proofUploaded = false;

  bool get canContinue =>
      graduationYear.isNotEmpty && lastGrade.isNotEmpty && house.isNotEmpty;

  void _continue(BuildContext context) {
    widget.data
      ..graduationYear = graduationYear
      ..lastGrade = lastGrade
      ..house = house
      ..studentId = formerStudentId.text.trim()
      ..proofUploaded = proofUploaded;
    pushScreen(context, TermsScreen(data: widget.data));
  }

  @override
  void dispose() {
    formerStudentId.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: 'Your details',
    title: 'Your JC years',
    description: 'Help us confirm you’re an Old Boy of Jamaica College.',
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcSelect(
        label: 'Graduation year',
        hint: 'Select year',
        value: graduationYear,
        options: const ['1990', '2000', '2010', '2020', '2026'],
        onSelected: (value) => setState(() => graduationYear = value),
      ),
      JcSelect(
        label: 'Last grade completed',
        hint: 'Select grade',
        value: lastGrade,
        options: const ['Fifth Form', 'Lower Sixth', 'Upper Sixth'],
        onSelected: (value) => setState(() => lastGrade = value),
      ),
      JcSelect(
        label: 'House',
        hint: 'Select your house',
        value: house,
        options: const ['Bell', 'East', 'Hobbs', 'Ricketts'],
        onSelected: (value) => setState(() => house = value),
      ),
      JcInput(
        label: 'Former student ID (optional)',
        hint: 'e.g. JC-2010-0000',
        controller: formerStudentId,
        helper: 'Speeds up verification if you have it.',
      ),
      JcFileField(
        selected: proofUploaded,
        onChanged: (value) => setState(() => proofUploaded = value),
      ),
      const Divider(height: 32),
      const Text('Your Old Boy profile (optional)', style: JcTextStyles.label),
      const JcAccordion(
        title: 'Clubs and sports',
        subtitle: 'Teams and clubs you were part of',
        icon: Icons.emoji_events_outlined,
      ),
      const JcAccordion(
        title: 'Leadership',
        subtitle: 'Roles you held at JC',
        icon: Icons.star_border,
      ),
      const JcAccordion(
        title: 'Career',
        subtitle: 'What you do today',
        icon: Icons.business_center_outlined,
      ),
      const JcAccordion(
        title: 'Giving back',
        subtitle: 'Mentorship, scholarships and events',
        icon: Icons.favorite_border,
      ),
      const JcHelper('You can add or change these later in your profile.'),
    ],
  );
}
