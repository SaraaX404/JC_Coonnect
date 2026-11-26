import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';

import 'dart:async';

import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_helper.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_outlined_action.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_select.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

class ParentDetailsFlowScreen extends StatefulWidget {
  const ParentDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<ParentDetailsFlowScreen> createState() =>
      _ParentDetailsFlowScreenState();
}

class _ParentDetailsFlowScreenState extends State<ParentDetailsFlowScreen> {
  final sonName = TextEditingController();
  final studentId = TextEditingController();
  final anotherSonName = TextEditingController();
  String relationship = '';
  bool additionalSon = false;

  bool get canContinue =>
      relationship.isNotEmpty &&
      sonName.text.trim().isNotEmpty &&
      studentId.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    sonName.addListener(_refresh);
    studentId.addListener(_refresh);
  }

  void _refresh() => setState(() {});

  void _continue(BuildContext context) {
    widget.data
      ..relationship = relationship
      ..sonName = sonName.text.trim()
      ..studentId = studentId.text.trim()
      ..anotherSonName = anotherSonName.text.trim();
    unawaited(context.push(Routes.signUpTerms, extra: widget.data));
  }

  @override
  void dispose() {
    sonName.removeListener(_refresh);
    studentId.removeListener(_refresh);
    sonName.dispose();
    studentId.dispose();
    anotherSonName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RoleDetailsScaffold(
    progress: 2,
    total: 4,
    label: context.l10n.commonYourDetails,
    title: context.l10n.parentHeading,
    description: context.l10n.parentDescription,
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcSelect(
        label: context.l10n.commonRelationship,
        hint: context.l10n.parentSelectRelationship,
        value: relationship,
        options: [
          context.l10n.parentMother,
          context.l10n.parentFather,
          context.l10n.parentGuardian,
        ],
        onSelected: (value) => setState(() => relationship = value),
      ),
      JcInput(
        label: context.l10n.parentSonName,
        hint: context.l10n.commonFullNameExample,
        controller: sonName,
      ),
      JcInput(
        label: context.l10n.parentSonStudentId,
        hint: context.l10n.parentSonStudentIdHint,
        controller: studentId,
      ),
      JcHelper(context.l10n.parentSonStudentIdHelp),
      if (additionalSon)
        JcInput(
          label: context.l10n.parentAnotherSonName,
          hint: context.l10n.commonOptional,
          controller: anotherSonName,
        ),
      JcOutlinedAction(
        label: additionalSon
            ? context.l10n.parentRemoveAnotherSon
            : context.l10n.parentAddAnotherSon,
        icon: additionalSon
            ? Icons.remove_circle_outline
            : Icons.add_circle_outline,
        onPressed: () => setState(() => additionalSon = !additionalSon),
      ),
    ],
  );
}
