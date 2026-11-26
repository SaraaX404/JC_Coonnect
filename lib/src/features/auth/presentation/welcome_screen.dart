import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/presentation/login_screen.dart';
import 'package:jc_connect_app/src/features/education/presentation/education_screen.dart';
import 'package:jc_connect_app/src/features/events/presentation/events_screen.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:jc_connect_app/src/features/onboarding/presentation/sign_up_role_screen.dart';
import 'package:material_ui/material_ui.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return JcScaffold(
      showBack: false,
      child: Column(
        children: [
          const Spacer(flex: 3),
          const JcLogo(),
          const SizedBox(height: 32),
          const Text(
            'JC CONNECT',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: JcColors.titleBlue,
            ),
          ),
          const SizedBox(height: 8),
          const Text('One College. One Community.', style: JcTextStyles.body),
          const Spacer(flex: 4),
          JcButton(
            label: 'Login',
            onPressed: () => pushScreen(context, const LoginScreen()),
          ),
          const SizedBox(height: 12),
          JcButton(
            label: 'Join as a Member',
            outlined: true,
            onPressed: () =>
                pushScreen(context, SignUpRoleScreen(data: SignUpData())),
          ),
          const SizedBox(height: 10),
          TextButton.icon(
            onPressed: () => pushScreen(context, const EventsScreen()),
            icon: const Icon(Icons.event_outlined, size: 18),
            label: const Text('Browse events'),
          ),
          TextButton.icon(
            onPressed: () => pushScreen(context, const EducationScreen()),
            icon: const Icon(Icons.school_outlined, size: 18),
            label: const Text('Open Education'),
          ),
          const SizedBox(height: 32),
          const Text(
            'Jamaica College • Founded 1789 • Kingston, JA',
            style: JcTextStyles.small,
          ),
          const SizedBox(height: 4),
          const Text(
            '●  v2.4.0 • True Blue Secure Connect',
            style: JcTextStyles.small,
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }
}
