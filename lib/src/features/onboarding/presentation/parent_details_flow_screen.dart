import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/terms_screen.dart';
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
    pushScreen(context, TermsScreen(data: widget.data));
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
    label: 'Your details',
    title: 'Your son at JC',
    description:
        'Link your account to your son so you can follow his school life.',
    enabled: canContinue,
    onContinue: () => _continue(context),
    children: [
      JcSelect(
        label: 'Relationship',
        hint: 'Select relationship',
        value: relationship,
        options: const ['Mother', 'Father', 'Guardian'],
        onSelected: (value) => setState(() => relationship = value),
      ),
      JcInput(
        label: 'Son’s full name',
        hint: 'Kemar Brown',
        controller: sonName,
      ),
      JcInput(
        label: 'Son’s student ID',
        hint: 'JC-2026-4815',
        controller: studentId,
      ),
      const JcHelper('Ask your son or check his report card.'),
      if (additionalSon)
        JcInput(
          label: 'Another son’s name',
          hint: 'Optional',
          controller: anotherSonName,
        ),
      JcOutlinedAction(
        label: additionalSon ? 'Remove another son' : 'Add another son',
        icon: additionalSon
            ? Icons.remove_circle_outline
            : Icons.add_circle_outline,
        onPressed: () => setState(() => additionalSon = !additionalSon),
      ),
    ],
  );
}
