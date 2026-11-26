import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:material_ui/material_ui.dart';

/// The errors every sign-up step shares, after the screen handled its own.
/// A 401 means the sign-up token (30 minutes) ran out: back to account
/// details, which keeps what was typed, for a new code.
void showSignUpError(BuildContext context, ApiException e, SignUpData data) {
  final l10n = context.l10n;
  switch (e.status) {
    case 401:
      showMessage(context, l10n.signUpExpired);
      context.go(Routes.signUpAccount, extra: data);
    case 429:
      showMessage(context, l10n.commonTooManyAttempts);
    default:
      showMessage(context, e.message(l10n));
  }
}
