import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:material_ui/material_ui.dart';

/// The full-screen states in Figma "Login" > System / Session.
enum JcSystemStateKind { offline, serverError, maintenance, sessionExpired }

/// Crest with a status badge, heading, message, one action and
/// "Need help? Contact support".
class JcSystemState extends StatelessWidget {
  const JcSystemState({
    super.key,
    required this.kind,
    required this.onAction,
    this.backBy,
  }) : assert(
         kind != JcSystemStateKind.maintenance || backBy != null,
         'maintenance needs the time service returns (backBy)',
       );
  final JcSystemStateKind kind;
  final VoidCallback onAction;

  /// When maintenance ends, already formatted ("6:00 AM").
  final String? backBy;

  // ponytail: Material icons stand in for the Figma badge SVGs (wifi-off,
  // compass, clock-circle); export them when the Figma MCP quota allows.
  IconData get _badge => switch (kind) {
    JcSystemStateKind.offline ||
    JcSystemStateKind.serverError => Icons.wifi_off_rounded,
    JcSystemStateKind.maintenance => Icons.explore_outlined,
    JcSystemStateKind.sessionExpired => Icons.schedule_rounded,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final (title, message, action) = switch (kind) {
      JcSystemStateKind.offline => (
        l10n.systemOfflineTitle,
        l10n.systemOfflineMessage,
        l10n.systemTryAgain,
      ),
      JcSystemStateKind.serverError => (
        l10n.systemServerErrorTitle,
        l10n.systemServerErrorMessage,
        l10n.systemTryAgain,
      ),
      JcSystemStateKind.maintenance => (
        l10n.systemMaintenanceTitle,
        l10n.systemMaintenanceMessage(backBy!),
        l10n.systemCheckAgain,
      ),
      JcSystemStateKind.sessionExpired => (
        l10n.systemSessionExpiredTitle,
        l10n.systemSessionExpiredMessage,
        l10n.systemLogInAgain,
      ),
    };
    return JcScaffold(
      showBack: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _CrestWithBadge(icon: _badge),
                      const SizedBox(height: 12),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          height: 28 / 20,
                          fontWeight: FontWeight.w600,
                          color: JcColors.text,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 303),
                        child: Text(
                          message,
                          textAlign: TextAlign.center,
                          style: JcTextStyles.body,
                        ),
                      ),
                      const SizedBox(height: 32),
                      JcButton(
                        label: action,
                        showIcon: false,
                        onPressed: onAction,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            JcPromptLink(
              prompt: l10n.commonNeedHelp,
              link: l10n.commonContactSupport,
              // shortcut: no support channel yet (email, chat?); decide with
              // the product owner.
              onTap: () => showMessage(context, l10n.commonSupportMessage),
            ),
          ],
        ),
      ),
    );
  }
}

/// Figma: 38px primary circle with a white hairline and soft blue shadow,
/// overlapping the crest's lower right.
class _CrestWithBadge extends StatelessWidget {
  const _CrestWithBadge({required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 64,
    height: 64 * 217 / 186,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        const JcLogo(),
        Positioned(
          left: 37.5,
          top: 37,
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: JcColors.primary,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 0.5),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x330079D4),
                  blurRadius: 5.395,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Icon(icon, size: 16, color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
