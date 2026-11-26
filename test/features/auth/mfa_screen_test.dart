import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';
import 'package:jc_connect_app/src/features/auth/presentation/mfa_screen.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/fake_auth_repository.dart';
import '../../helpers/pump_app.dart';

const _verify = 'Verify and log in';
const _resend = 'Resend';
const _useRecovery = 'Use a recovery code';
const _incorrect = 'That code isn’t right. Check it and try again.';
const _tooMany = 'Too many attempts. Wait a minute and try again.';

/// Opens the code screen as a login would.
Future<GoRouter> _pumpVerify(
  WidgetTester tester, {
  FakeAuthRepository? auth,
  CodeMethod method = CodeMethod.email,
}) => pumpRouter(
  tester,
  location: Routes.loginVerify,
  extra: LoginNeedsCode(
    challenge: 'challenge-token',
    method: method,
    email: 'm.sterling@jc.edu.jm',
  ),
  overrides: [(auth ?? FakeAuthRepository()).asOverride],
);

Future<void> _enterAndVerify(WidgetTester tester, String code) async {
  await tester.enterText(find.byType(TextField), code);
  await tester.tap(find.text(_verify));
  await tester.pumpAndSettle();
}

Future<void> _pumpView(WidgetTester tester, {MfaError? error}) async {
  final code = TextEditingController(text: '111111');
  addTearDown(code.dispose);
  await tester.pumpWidget(
    MaterialApp(
      theme: jcTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MfaView(
        method: CodeMethod.email,
        maskedEmail: 'm***@jc.edu.jm',
        code: code,
        error: error,
        onCodeChanged: (_) {},
        onVerify: () {},
        onResend: () {},
        onToggleRecovery: () {},
      ),
    ),
  );
  await tester.pump();
}

bool _verifyEnabled(WidgetTester tester) => tester
    .widget<FilledButton>(
      find.ancestor(
        of: find.text(_verify),
        matching: find.byType(FilledButton),
      ),
    )
    .enabled;

void main() {
  testWidgets('email code shows where the code went and offers resend', (
    tester,
  ) async {
    await _pumpVerify(tester);

    expect(
      find.text('We sent a 6-digit code to\nyour email m***@jc.edu.jm'),
      findsOneWidget,
    );
    expect(find.text(_resend), findsOneWidget);
    expect(find.text(_useRecovery), findsNothing);
  });

  testWidgets('authenticator code asks for the app code and offers recovery', (
    tester,
  ) async {
    await _pumpVerify(tester, method: CodeMethod.totp);

    expect(
      find.text('Enter the 6-digit code from\nyour authenticator app'),
      findsOneWidget,
    );
    expect(find.text(_useRecovery), findsOneWidget);
    expect(find.text(_resend), findsNothing);
  });

  testWidgets('MFA without a login challenge redirects to login', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.loginVerify);

    expect(find.text('Verify your identity'), findsNothing);
    expect(find.text('Forgot your password?'), findsOneWidget);
  });

  testWidgets('verify with an incomplete code asks for six digits', (
    tester,
  ) async {
    await _pumpVerify(tester);
    await tester.enterText(find.byType(TextField), '123');
    await tester.tap(find.text(_verify));
    await tester.pump();

    expect(find.text('Enter the 6-digit code.'), findsOneWidget);

    await tester.enterText(find.byType(TextField), '1234');
    await tester.pump();
    expect(find.text('Enter the 6-digit code.'), findsNothing);
  });

  testWidgets('verify with the right code signs in and opens events', (
    tester,
  ) async {
    String? sent;
    final router = await _pumpVerify(
      tester,
      auth: FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async => sent = code,
      ),
    );
    await _enterAndVerify(tester, '123456');

    expect(sent, '123456');
    expect(router.state.uri.path, Routes.events);
  });

  testWidgets('verify with a wrong code shows the incorrect code error', (
    tester,
  ) async {
    await _pumpVerify(
      tester,
      auth: FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async =>
            throw const ApiException(401, 'invalid_code'),
      ),
    );
    await _enterAndVerify(tester, '123456');

    expect(find.text(_incorrect), findsOneWidget);
  });

  testWidgets('verify with an expired challenge opens session expired', (
    tester,
  ) async {
    final router = await _pumpVerify(
      tester,
      auth: FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async =>
            throw const ApiException(401, 'token_expired'),
      ),
    );
    await _enterAndVerify(tester, '123456');

    expect(router.state.uri.path, Routes.sessionExpired);
  });

  testWidgets('resend emails a new code, then waits 30 seconds', (
    tester,
  ) async {
    var resends = 0;
    await _pumpVerify(
      tester,
      auth: FakeAuthRepository(onResend: () async => resends++),
    );

    await tester.tap(find.text(_resend));
    await tester.pump();
    expect(resends, 1);
    expect(find.text('Code sent'), findsOneWidget);
    expect(find.text(_resend), findsNothing);

    await tester.pump(const Duration(seconds: 2));
    expect(find.text('You can resend a code in 30 seconds.'), findsOneWidget);

    await tester.pump(const Duration(seconds: 29));
    expect(find.text('You can resend a code in 1 second.'), findsOneWidget);

    await tester.pump(const Duration(seconds: 1));
    expect(find.text(_resend), findsOneWidget);
  });

  testWidgets('resend when throttled shows too many attempts', (tester) async {
    await _pumpVerify(
      tester,
      auth: FakeAuthRepository(
        onResend: () async => throw const ApiException(429, 'throttled'),
      ),
    );
    await tester.tap(find.text(_resend));
    await tester.pumpAndSettle();

    expect(find.text(_tooMany), findsOneWidget);
    expect(_verifyEnabled(tester), isFalse);
  });

  testWidgets('recovery link switches to a recovery code field and back', (
    tester,
  ) async {
    await _pumpVerify(tester, method: CodeMethod.totp);
    await tester.tap(find.text(_useRecovery));
    await tester.pump();

    expect(find.text('Recovery code'), findsOneWidget);
    await tester.tap(find.text(_verify));
    await tester.pump();
    expect(find.text('Enter a recovery code.'), findsOneWidget);

    await tester.tap(find.text('Use authenticator app'));
    await tester.pump();
    expect(find.text('Recovery code'), findsNothing);
    expect(find.text('Enter a recovery code.'), findsNothing);
    expect(find.text(_useRecovery), findsOneWidget);
  });

  testWidgets('verify with a recovery code sends it as recovery_code', (
    tester,
  ) async {
    String? recovery;
    await _pumpVerify(
      tester,
      method: CodeMethod.totp,
      auth: FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async => recovery = recoveryCode,
      ),
    );
    await tester.tap(find.text(_useRecovery));
    await tester.pump();
    await _enterAndVerify(tester, ' abcd-efgh ');

    expect(recovery, 'abcd-efgh');
  });

  testWidgets('incorrect code shows its error and keeps verify enabled', (
    tester,
  ) async {
    await _pumpView(tester, error: MfaError.incorrectCode);

    expect(find.text(_incorrect), findsOneWidget);
    expect(find.text(_resend), findsOneWidget);
    expect(_verifyEnabled(tester), isTrue);
  });

  testWidgets('too many attempts disables verify and hides resend', (
    tester,
  ) async {
    await _pumpView(tester, error: MfaError.tooManyAttempts);

    expect(find.text(_tooMany), findsOneWidget);
    expect(find.text(_resend), findsNothing);
    expect(_verifyEnabled(tester), isFalse);
  });
}
