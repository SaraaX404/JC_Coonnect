import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';

import 'dart:async';

import 'package:jc_connect_app/src/features/onboarding/data/mock_onboarding.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
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
    unawaited(context.push(Routes.signUpTerms, extra: widget.data));
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
    label: context.l10n.commonYourDetails,
    title: context.l10n.oldBoyHeading,
    description: context.l10n.oldBoyDescription,
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcSelect(
        label: context.l10n.commonGraduationYear,
        hint: context.l10n.oldBoySelectYear,
        value: graduationYear,
        options: const ['1990', '2000', '2010', '2020', '2026'],
        onSelected: (value) => setState(() => graduationYear = value),
      ),
      JcSelect(
        label: context.l10n.oldBoyLastGrade,
        hint: context.l10n.oldBoySelectGrade,
        value: lastGrade,
        options: mockOldBoyGrades,
        onSelected: (value) => setState(() => lastGrade = value),
      ),
      JcSelect(
        label: context.l10n.commonHouse,
        hint: context.l10n.oldBoySelectHouse,
        value: house,
        options: mockHouses,
        onSelected: (value) => setState(() => house = value),
      ),
      JcInput(
        label: context.l10n.oldBoyFormerStudentId,
        hint: context.l10n.oldBoyFormerStudentIdHint,
        controller: formerStudentId,
        helper: context.l10n.oldBoyFormerStudentIdHelp,
      ),
      JcFileField(
        selected: proofUploaded,
        onChanged: (value) => setState(() => proofUploaded = value),
      ),
      const Divider(height: 32),
      Text(context.l10n.oldBoyProfileTitle, style: JcTextStyles.label),
      JcAccordion(
        title: context.l10n.oldBoyClubs,
        subtitle: context.l10n.oldBoyClubsDescription,
        icon: Icons.emoji_events_outlined,
      ),
      JcAccordion(
        title: context.l10n.oldBoyLeadership,
        subtitle: context.l10n.oldBoyLeadershipDescription,
        icon: Icons.star_border,
      ),
      JcAccordion(
        title: context.l10n.oldBoyCareer,
        subtitle: context.l10n.oldBoyCareerDescription,
        icon: Icons.business_center_outlined,
      ),
      JcAccordion(
        title: context.l10n.oldBoyGivingBack,
        subtitle: context.l10n.oldBoyGivingBackDescription,
        icon: Icons.favorite_border,
      ),
      JcHelper(context.l10n.oldBoyProfileHelp),
    ],
  );
}
