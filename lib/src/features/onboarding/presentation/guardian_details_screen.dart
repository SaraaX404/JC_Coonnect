import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:jc_api/jc_api.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_summary_card.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_outlined_action.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_select.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/role_details_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// Student sign-up step 3 (Figma "Guardian Details / Student"): at least one
/// parent or guardian, filled in one form at a time. Saved ones show as
/// cards above the form.
class GuardianDetailsScreen extends StatefulWidget {
  const GuardianDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<GuardianDetailsScreen> createState() => _GuardianDetailsScreenState();
}

class _GuardianDetailsScreenState extends State<GuardianDetailsScreen> {
  /// `guardians` maxItems in the sign-up request.
  static const _max = 4;

  final name = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  String relationship = '';
  late final List<GuardianContactRequest> saved = [...widget.data.guardians];

  /// Closed after Remove, so the saved guardians alone can continue.
  late bool formOpen = saved.isEmpty;

  bool get _ownEmail =>
      email.text.trim().isNotEmpty &&
      email.text.trim().toLowerCase() == widget.data.email.trim().toLowerCase();

  /// Optional, but in international form when given.
  bool get _phoneInvalid =>
      phone.text.trim().isNotEmpty && !isValidPhone(phone.text);

  bool get _formValid =>
      name.text.trim().isNotEmpty &&
      relationship.isNotEmpty &&
      isValidEmail(email.text) &&
      !_ownEmail &&
      !_phoneInvalid;

  @override
  void initState() {
    super.initState();
    for (final controller in [name, email, phone]) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  @override
  void dispose() {
    for (final controller in [name, email, phone]) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  /// Moves the form into [saved] and empties it.
  void _saveForm() {
    saved.add(
      GuardianContactRequest(
        fullName: name.text.trim(),
        relationship: relationship,
        email: email.text.trim(),
        phone: toE164(phone.text.trim()),
      ),
    );
    _clearForm();
  }

  void _clearForm() {
    name.clear();
    email.clear();
    phone.clear();
    relationship = '';
  }

  void _onAdd() => setState(() {
    if (formOpen) _saveForm();
    formOpen = true;
  });

  void _onRemove() => setState(() {
    _clearForm();
    formOpen = false;
  });

  // ponytail: an unfinished form is dropped when another guardian is edited.
  void _onEdit(int index) => setState(() {
    if (formOpen && _formValid) _saveForm();
    final guardian = saved.removeAt(index);
    name.text = guardian.fullName;
    email.text = guardian.email;
    phone.text = guardian.phone;
    relationship = guardian.relationship;
    formOpen = true;
  });

  void _continue() {
    if (formOpen) _saveForm();
    widget.data.guardians = [...saved];
    unawaited(context.push(Routes.signUpTerms, extra: widget.data));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final count = saved.length + (formOpen ? 1 : 0);
    return RoleDetailsScaffold(
      progress: 3,
      label: l10n.guardianTitle,
      title: l10n.guardianHeading,
      description: l10n.guardianDescription,
      enabled: formOpen ? _formValid : saved.isNotEmpty,
      onContinue: _continue,
      children: [
        for (final (index, guardian) in saved.indexed)
          JcSummaryCard(
            title: l10n.guardianNumber(index + 1),
            onEdit: () => _onEdit(index),
            values: {
              l10n.commonFullName: guardian.fullName,
              l10n.commonRelationship: guardian.relationship,
              l10n.commonEmailLabel: guardian.email,
              if (guardian.phone.isNotEmpty) l10n.reviewPhone: guardian.phone,
            },
          ),
        if (formOpen) ...[
          if (saved.isNotEmpty)
            _FormHeader(
              title: l10n.guardianNumber(saved.length + 1),
              onRemove: _onRemove,
            ),
          JcInput(
            label: l10n.guardianFullNameLabel,
            hint: l10n.guardianFullNameHint,
            controller: name,
          ),
          JcSelect(
            label: l10n.commonRelationship,
            hint: l10n.parentSelectRelationship,
            value: relationship,
            options: [
              l10n.parentMother,
              l10n.parentFather,
              l10n.parentGuardian,
            ],
            onSelected: (value) => setState(() => relationship = value),
          ),
          JcInput(
            label: l10n.guardianEmailLabel,
            hint: l10n.guardianEmailHint,
            controller: email,
            keyboardType: TextInputType.emailAddress,
            helper: l10n.guardianEmailHelp,
            errorText: _ownEmail ? l10n.guardianOwnEmail : null,
          ),
          JcInput(
            label: l10n.guardianPhoneLabel,
            hint: l10n.guardianPhoneHint,
            controller: phone,
            keyboardType: TextInputType.phone,
            errorText: _phoneInvalid ? l10n.commonPhoneInvalid : null,
          ),
        ],
        // Figma hides it while a second guardian's form is open.
        if ((saved.isEmpty || !formOpen) && count < _max)
          JcOutlinedAction(
            label: l10n.guardianAddAnother,
            icon: Icons.add_circle_outline,
            onPressed: !formOpen || _formValid ? _onAdd : null,
          ),
      ],
    );
  }
}

class _FormHeader extends StatelessWidget {
  const _FormHeader({required this.title, required this.onRemove});
  final String title;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const Divider(color: JcColors.border),
      const SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          TextButton.icon(
            onPressed: onRemove,
            icon: const Icon(Icons.delete_outline, size: 16),
            label: Text(context.l10n.guardianRemove),
            style: TextButton.styleFrom(
              foregroundColor: JcColors.error,
              textStyle: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    ],
  );
}
