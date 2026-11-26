import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';

import 'dart:async';

import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:material_ui/material_ui.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  final name = TextEditingController(text: '');
  final email = TextEditingController(text: '');
  final phone = TextEditingController(text: '');
  final password = TextEditingController();
  final confirm = TextEditingController();
  bool obscure = true;
  bool canContinue = false;

  @override
  void initState() {
    super.initState();
    for (final controller in [name, email, phone, password, confirm]) {
      controller.addListener(_syncContinue);
    }
  }

  void _syncContinue() {
    final nextValue =
        name.text.trim().isNotEmpty &&
        RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(email.text.trim()) &&
        phone.text.trim().isNotEmpty &&
        password.text.length >= 8 &&
        RegExp(r'[A-Z]').hasMatch(password.text) &&
        RegExp(r'\d').hasMatch(password.text) &&
        RegExp(r'[^A-Za-z0-9]').hasMatch(password.text) &&
        password.text == confirm.text;
    if (nextValue != canContinue) setState(() => canContinue = nextValue);
  }

  @override
  void dispose() {
    for (final controller in [name, email, phone, password, confirm]) {
      controller.removeListener(_syncContinue);
    }
    for (final c in [name, email, phone, password, confirm]) {
      c.dispose();
    }
    super.dispose();
  }

  void next() {
    if (name.text.trim().isEmpty ||
        email.text.trim().isEmpty ||
        password.text.length < 8 ||
        password.text != confirm.text) {
      showMessage(context, context.l10n.accountRequiredFieldsMessage);
      return;
    }
    widget.data.name = name.text.trim();
    widget.data.email = email.text.trim();
    widget.data.phone = phone.text.trim();
    unawaited(context.push(Routes.signUpVerify, extra: widget.data));
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
        children: [
          JcProgress(step: 1, label: context.l10n.accountTitle),
          const SizedBox(height: 24),
          JcHeading(
            title: context.l10n.accountHeading,
            description: context.l10n.accountDescription,
          ),
          const SizedBox(height: 24),
          JcInput(
            label: context.l10n.commonFullName,
            hint: context.l10n.accountFullNameHint,
            controller: name,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: context.l10n.commonEmailLabel,
            hint: context.l10n.accountEmailHint,
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: context.l10n.accountPhoneLabel,
            hint: '+1 876 000 0000',
            controller: phone,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: context.l10n.commonPasswordLabel,
            controller: password,
            obscureText: obscure,
            trailing: IconButton(
              onPressed: () => setState(() => obscure = !obscure),
              icon: Icon(
                obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                size: 18,
              ),
            ),
            helper: context.l10n.accountPasswordHelp,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: context.l10n.accountConfirmPasswordLabel,
            controller: confirm,
            obscureText: obscure,
            trailing: Icon(
              obscure
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 18,
            ),
          ),
          const SizedBox(height: 24),
          JcButton(
            label: context.l10n.commonContinue,
            enabled: canContinue,
            onPressed: next,
          ),
        ],
      ),
    );
  }
}
