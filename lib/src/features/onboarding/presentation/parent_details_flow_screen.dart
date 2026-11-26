import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_error.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_helper.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_outlined_action.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_select.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// Parent sign-up step 2. Continue checks the son's ID and name against the
/// school's register.
class ParentDetailsFlowScreen extends ConsumerStatefulWidget {
  const ParentDetailsFlowScreen({super.key, required this.data});
  final SignUpData data;

  @override
  ConsumerState<ParentDetailsFlowScreen> createState() =>
      _ParentDetailsFlowScreenState();
}

class _ParentDetailsFlowScreenState
    extends ConsumerState<ParentDetailsFlowScreen> {
  final sonName = TextEditingController();
  final studentId = TextEditingController();
  final anotherSonName = TextEditingController();
  String relationship = '';
  bool additionalSon = false;
  bool busy = false;

  /// The name and ID the register didn't match.
  ({String name, String id})? noMatch;

  bool get _noMatch =>
      noMatch == (name: sonName.text.trim(), id: studentId.text.trim());

  bool get canContinue =>
      relationship.isNotEmpty &&
      sonName.text.trim().isNotEmpty &&
      studentId.text.trim().isNotEmpty &&
      !_noMatch;

  @override
  void initState() {
    super.initState();
    sonName.addListener(_refresh);
    studentId.addListener(_refresh);
  }

  void _refresh() => setState(() {});

  Future<void> _continue() async {
    final name = sonName.text.trim();
    final id = studentId.text.trim();
    setState(() => busy = true);
    try {
      final match = await ref
          .read(signUpRepositoryProvider)
          .checkStudent(widget.data.signupToken, number: id, fullName: name);
      if (!mounted) return;
      if (!match) {
        setState(() => noMatch = (name: name, id: id));
        return;
      }
      widget.data
        ..relationship = relationship
        ..sonName = name
        ..studentId = id
        ..anotherSonName = anotherSonName.text.trim();
      unawaited(context.push(Routes.signUpTerms, extra: widget.data));
    } on ApiException catch (e) {
      if (mounted) showSignUpError(context, e, widget.data);
    } finally {
      if (mounted) setState(() => busy = false);
    }
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
    enabled: canContinue && !busy,
    onContinue: () => unawaited(_continue()),
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
        errorText: _noMatch ? context.l10n.parentIdNoMatch : null,
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
