import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/utils/validators.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/data/sign_up_repository.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_error.dart';
import 'package:material_ui/material_ui.dart';

/// Sign-up step 1. Continue emails the code that proves the address.
class AccountDetailsScreen extends ConsumerStatefulWidget {
  const AccountDetailsScreen({super.key, required this.data});
  final SignUpData data;

  @override
  ConsumerState<AccountDetailsScreen> createState() =>
      _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends ConsumerState<AccountDetailsScreen> {
  // Filled from the data when the sign-up token ran out and the user is
  // sent back here.
  late final name = TextEditingController(text: widget.data.name);
  late final email = TextEditingController(text: widget.data.email);
  late final phone = TextEditingController(text: widget.data.phone);
  late final password = TextEditingController(text: widget.data.password);
  late final confirm = TextEditingController(text: widget.data.password);
  bool obscure = true;
  bool busy = false;

  /// The email belongs to a member already (409).
  String? takenEmail;

  List<TextEditingController> get _fields => [
    name,
    email,
    phone,
    password,
    confirm,
  ];

  bool get _phoneInvalid =>
      phone.text.trim().isNotEmpty && !isValidPhone(phone.text);

  bool get canContinue =>
      // First and last name: the API wants both.
      name.text.trim().contains(' ') &&
      isValidEmail(email.text) &&
      email.text.trim() != takenEmail &&
      isValidPhone(phone.text) &&
      password.text.length >= 8 &&
      RegExp(r'[A-Z]').hasMatch(password.text) &&
      RegExp(r'\d').hasMatch(password.text) &&
      RegExp(r'[^A-Za-z0-9]').hasMatch(password.text) &&
      password.text == confirm.text;

  @override
  void initState() {
    super.initState();
    for (final controller in _fields) {
      controller.addListener(_refresh);
    }
  }

  void _refresh() => setState(() {});

  @override
  void dispose() {
    for (final controller in _fields) {
      controller.removeListener(_refresh);
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> next() async {
    final address = email.text.trim();
    setState(() => busy = true);
    try {
      await ref.read(signUpRepositoryProvider).sendCode(address);
      if (!mounted) return;
      widget.data
        ..name = name.text.trim()
        ..email = address
        ..phone = phone.text.trim()
        ..password = password.text;
      unawaited(context.push(Routes.signUpVerify, extra: widget.data));
    } on ApiException catch (e) {
      if (!mounted) return;
      if (e.status == 409) {
        setState(() => takenEmail = address);
      } else {
        showSignUpError(context, e, widget.data);
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
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
            errorText: email.text.trim() == takenEmail
                ? context.l10n.accountEmailTaken
                : null,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: context.l10n.accountPhoneLabel,
            hint: '+1 876 000 0000',
            controller: phone,
            keyboardType: TextInputType.phone,
            errorText: _phoneInvalid ? context.l10n.commonPhoneInvalid : null,
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
            enabled: canContinue && !busy,
            onPressed: () => unawaited(next()),
          ),
        ],
      ),
    );
  }
}
