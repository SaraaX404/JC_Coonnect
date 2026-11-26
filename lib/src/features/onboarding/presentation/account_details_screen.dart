import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/verify_email_screen.dart';
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
      showMessage(context, 'Complete the required fields to continue.');
      return;
    }
    widget.data.name = name.text.trim();
    widget.data.email = email.text.trim();
    widget.data.phone = phone.text.trim();
    pushScreen(context, VerifyEmailScreen(data: widget.data));
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
        children: [
          const JcProgress(step: 1, label: 'Account details'),
          const SizedBox(height: 24),
          const JcHeading(
            title: 'Create your account',
            description:
                'Use an email you check often. We’ll send a code to verify it.',
          ),
          const SizedBox(height: 24),
          JcInput(
            label: 'Full name',
            hint: 'e.g. Kemar Brown',
            controller: name,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Email',
            hint: 'you@example.com',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Phone number',
            hint: '+1 876 000 0000',
            controller: phone,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Password',
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
            helper: 'At least 8 characters, with an uppercase letter, a number and a symbol.',
          ),
          const SizedBox(height: 16),
          JcInput(
            label: 'Confirm password',
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
          JcButton(label: 'Continue', enabled: canContinue, onPressed: next),
        ],
      ),
    );
  }
}
