import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/old_boy_details_flow_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/parent_details_flow_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/student_details_flow_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/teacher_details_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/widgets/jc_otp.dart';
import 'package:material_ui/material_ui.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key, required this.data});
  final SignUpData data;

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final otp = TextEditingController();

  @override
  void dispose() {
    otp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        children: [
          const Center(child: JcLogo()),
          const SizedBox(height: 32),
          const Text(
            'Verify your email',
            style: JcTextStyles.title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            'We sent a 6-digit code to\n${widget.data.email}',
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
              color: JcColors.muted,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 48),
          JcOtp(controller: otp),
          const SizedBox(height: 24),
          JcButton(
            label: 'Verify email',
            onPressed: () {
              if (otp.text.length == 6) {
                _openRoleDetails(context);
              } else {
                showMessage(context, 'Enter the 6-digit code.');
              }
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: Wrap(
              children: [
                const Text(
                  'Didn’t receive the code? ',
                  style: JcTextStyles.small,
                ),
                TextButton(
                  onPressed: () =>
                      showMessage(context, 'A new code has been sent.'),
                  child: const Text('Resend'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 150),
          const Center(
            child: Text(
              'Jamaica College • True Blue Secure Access',
              style: TextStyle(fontSize: 12, color: Color(0xFF94A3B8)),
            ),
          ),
        ],
      ),
    );
  }

  void _openRoleDetails(BuildContext context) {
    final screen = switch (widget.data.role!) {
      JcRole.student => StudentDetailsFlowScreen(data: widget.data),
      JcRole.parent => ParentDetailsFlowScreen(data: widget.data),
      JcRole.teacher => TeacherDetailsScreen(data: widget.data),
      JcRole.oldBoy => OldBoyDetailsFlowScreen(data: widget.data),
    };
    pushScreen(context, screen);
  }
}
