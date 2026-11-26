import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_logo.dart';
import 'package:jc_connect_app/src/core/widgets/jc_otp.dart';
import 'package:jc_connect_app/src/core/widgets/jc_prompt_link.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/auth/data/auth_repository.dart';
import 'package:material_ui/material_ui.dart';

/// Errors on the verify step. [enterCode] is the only one the app raises
/// itself; POST /auth/login/verify returns `invalid_code` (incorrect) and
/// 429 (too many attempts).
enum MfaError { enterCode, incorrectCode, tooManyAttempts }

/// Login step 2 (ADR 0005): a code from the authenticator app, or one of
/// the recovery codes if the phone is lost.
class MfaScreen extends ConsumerStatefulWidget {
  const MfaScreen({super.key, required this.challenge});

  /// From `POST /auth/login` (`mfa.challenge`).
  final String challenge;

  @override
  ConsumerState<MfaScreen> createState() => _MfaScreenState();
}

class _MfaScreenState extends ConsumerState<MfaScreen> {
  final code = TextEditingController();
  bool recovery = false;
  bool busy = false;
  MfaError? error;

  @override
  void dispose() {
    code.dispose();
    super.dispose();
  }

  void _onVerify() {
    final text = code.text.trim();
    if (recovery ? text.isEmpty : text.length < JcOtp.length) {
      setState(() => error = MfaError.enterCode);
      return;
    }
    unawaited(_verify(text));
  }

  Future<void> _verify(String text) async {
    setState(() => busy = true);
    try {
      await ref
          .read(authRepositoryProvider)
          .verify(
            challenge: widget.challenge,
            code: recovery ? null : text,
            recoveryCode: recovery ? text : null,
          );
      if (mounted) context.go(Routes.events);
    } on ApiException catch (e) {
      if (!mounted) return;
      switch (e) {
        // A wrong code, or a malformed one (400).
        case ApiException(status: 400) ||
            ApiException(status: 401, code: 'invalid_code'):
          setState(() => error = MfaError.incorrectCode);
        // The challenge expired (5 min) or was used: start over.
        case ApiException(status: 401):
          context.go(Routes.sessionExpired);
        case ApiException(status: 429):
          setState(() => error = MfaError.tooManyAttempts);
        default:
          showMessage(context, e.message(context.l10n));
      }
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => MfaView(
    code: code,
    recovery: recovery,
    busy: busy,
    error: error,
    // Any edit clears the error; after a lockout the server answers 429
    // again if the minute isn't up.
    onCodeChanged: (_) {
      if (error != null) setState(() => error = null);
    },
    onVerify: _onVerify,
    onToggleRecovery: () => setState(() {
      recovery = !recovery;
      code.clear();
      error = null;
    }),
  );
}

/// The verify screen in any of its states.
class MfaView extends StatelessWidget {
  const MfaView({
    super.key,
    required this.code,
    required this.onCodeChanged,
    required this.onVerify,
    required this.onToggleRecovery,
    this.recovery = false,
    this.busy = false,
    this.error,
  });
  final TextEditingController code;
  final ValueChanged<String> onCodeChanged;
  final VoidCallback onVerify;
  final VoidCallback onToggleRecovery;

  /// Recovery code instead of the authenticator code.
  final bool recovery;

  /// A verify call is running.
  final bool busy;
  final MfaError? error;

  bool get _locked => error == MfaError.tooManyAttempts;

  String _errorText(AppLocalizations l10n, MfaError error) => switch (error) {
    MfaError.enterCode =>
      recovery ? l10n.mfaEnterRecoveryCode : l10n.mfaEnterCode,
    MfaError.incorrectCode => l10n.mfaIncorrectCode,
    MfaError.tooManyAttempts => l10n.commonTooManyAttempts,
  };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final errorText = error == null ? null : _errorText(l10n, error!);
    return JcScaffold(
      showBack: false,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 48, 20, 32),
              child: Column(
                children: [
                  const SizedBox(height: 96),
                  const JcLogo(),
                  const SizedBox(height: 32),
                  Text(
                    l10n.mfaHeading,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.title,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    recovery ? l10n.mfaRecoveryPrompt : l10n.mfaAppPrompt,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.input.copyWith(color: JcColors.muted),
                  ),
                  const SizedBox(height: 48),
                  if (recovery)
                    JcInput(
                      label: l10n.mfaRecoveryCodeLabel,
                      controller: code,
                      onChanged: onCodeChanged,
                      errorText: errorText,
                    )
                  else ...[
                    JcOtp(controller: code, onChanged: onCodeChanged),
                    if (errorText != null) ...[
                      const SizedBox(height: 12),
                      Text(
                        errorText,
                        textAlign: TextAlign.center,
                        style: JcTextStyles.input.copyWith(
                          color: JcColors.error,
                        ),
                      ),
                    ],
                  ],
                  const SizedBox(height: 24),
                  JcButton(
                    label: l10n.mfaVerifyButton,
                    enabled: !_locked && !busy,
                    onPressed: onVerify,
                  ),
                  const SizedBox(height: 24),
                  JcPromptLink(
                    prompt: recovery
                        ? l10n.mfaHaveAppPrompt
                        : l10n.mfaLostPhonePrompt,
                    link: recovery
                        ? l10n.mfaUseAppLink
                        : l10n.mfaUseRecoveryLink,
                    promptColor: JcColors.muted,
                    onTap: onToggleRecovery,
                  ),
                  const Spacer(),
                  const SizedBox(height: 32),
                  Text(
                    l10n.commonSecureFooter,
                    textAlign: TextAlign.center,
                    style: JcTextStyles.secureFooter,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
