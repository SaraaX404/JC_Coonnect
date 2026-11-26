import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
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
          Text(
            context.l10n.welcomeBrand,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: JcColors.titleBlue,
            ),
          ),
          const SizedBox(height: 8),
          Text(context.l10n.welcomeTagline, style: JcTextStyles.body),
          const Spacer(flex: 4),
          JcButton(
            label: context.l10n.welcomeLoginButton,
            onPressed: () => context.push(Routes.login),
          ),
          const SizedBox(height: 12),
          JcButton(
            label: context.l10n.welcomeJoinButton,
            outlined: true,
            onPressed: () => context.push(Routes.signUp),
          ),
          const SizedBox(height: 10),
          TextButton.icon(
            onPressed: () => context.push(Routes.events),
            icon: const Icon(Icons.event_outlined, size: 18),
            label: Text(context.l10n.welcomeBrowseEvents),
          ),
          TextButton.icon(
            onPressed: () => context.push(Routes.education),
            icon: const Icon(Icons.school_outlined, size: 18),
            label: Text(context.l10n.welcomeOpenEducation),
          ),
          const SizedBox(height: 32),
          Text(
            context.l10n.welcomeFooter,
            style: JcTextStyles.small,
          ),
          const SizedBox(height: 4),
          Text(
            context.l10n.welcomeVersion,
            style: JcTextStyles.small,
          ),
          const SizedBox(height: 28),
        ],
      ),
    );
  }
}
