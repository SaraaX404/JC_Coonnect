import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:material_ui/material_ui.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final email = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      title: 'Password reset',
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const JcLogo(),
          const SizedBox(height: 32),
          const Text(
            'Reset your password',
            style: JcTextStyles.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          const Text(
            'Enter your email and we’ll send you a reset link.',
            style: JcTextStyles.body,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          JcInput(
            label: 'Email',
            hint: 'Enter your email',
            controller: email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 24),
          JcButton(
            label: 'Send reset link',
            onPressed: () => showMessage(context, 'Reset link requested.'),
          ),
        ],
      ),
    );
  }
}
