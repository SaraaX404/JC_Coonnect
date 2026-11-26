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
const _useRecovery = 'Use a recovery code';
const _incorrect = 'That code isn’t right. Check it and try again.';

/// Opens the verify screen as a login with 2FA would.
Future<GoRouter> _pumpVerify(
  WidgetTester tester, [
  FakeAuthRepository? auth,
]) => pumpRouter(
  tester,
  location: Routes.loginVerify,
  extra: 'challenge-token',
  overrides: [(auth ?? FakeAuthRepository()).asOverride],
);

Future<void> _pumpView(WidgetTester tester, {MfaError? error}) async {
  final code = TextEditingController(text: '111111');
  addTearDown(code.dispose);
  await tester.pumpWidget(
    MaterialApp(
      theme: jcTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: MfaView(
        code: code,
        error: error,
        onCodeChanged: (_) {},
        onVerify: () {},
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
  testWidgets('login with 2FA opens MFA asking for the authenticator code', (
    tester,
  ) async {
    final auth = FakeAuthRepository(
      onLogin: (_) async => const LoginNeedsCode('challenge-token'),
    );
    await pumpRouter(
      tester,
      location: Routes.login,
      overrides: [auth.asOverride],
    );
    await tester.enterText(
      find.byType(TextField).at(0),
      'm.sterling@jc.edu.jm',
    );
    await tester.enterText(find.byType(TextField).at(1), 'secret12');
    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();

    expect(find.text('Verify your identity'), findsOneWidget);
    expect(
      find.text('Enter the 6-digit code from\nyour authenticator app'),
      findsOneWidget,
    );
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

  testWidgets('recovery link switches to a recovery code field and back', (
    tester,
  ) async {
    await _pumpVerify(tester);
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

  testWidgets('MFA without a login challenge redirects to login', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.loginVerify);

    expect(find.text('Verify your identity'), findsNothing);
    expect(find.text('Forgot your password?'), findsOneWidget);
  });

  testWidgets('verify with the right code signs in and opens events', (
    tester,
  ) async {
    String? sent;
    final router = await _pumpVerify(
      tester,
      FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async => sent = code,
      ),
    );
    await tester.enterText(find.byType(TextField), '123456');
    await tester.tap(find.text(_verify));
    await tester.pumpAndSettle();

    expect(sent, '123456');
    expect(router.state.uri.path, Routes.events);
  });

  testWidgets('verify with a wrong code shows the incorrect code error', (
    tester,
  ) async {
    await _pumpVerify(
      tester,
      FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async =>
            throw const ApiException(401, 'invalid_code'),
      ),
    );
    await tester.enterText(find.byType(TextField), '123456');
    await tester.tap(find.text(_verify));
    await tester.pumpAndSettle();

    expect(find.text(_incorrect), findsOneWidget);
  });

  testWidgets('verify with an expired challenge opens session expired', (
    tester,
  ) async {
    final router = await _pumpVerify(
      tester,
      FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async =>
            throw const ApiException(401, 'token_expired'),
      ),
    );
    await tester.enterText(find.byType(TextField), '123456');
    await tester.tap(find.text(_verify));
    await tester.pumpAndSettle();

    expect(router.state.uri.path, Routes.sessionExpired);
  });

  testWidgets('verify with a recovery code sends it as recovery_code', (
    tester,
  ) async {
    String? recovery;
    await _pumpVerify(
      tester,
      FakeAuthRepository(
        onVerify: ({code, recoveryCode}) async => recovery = recoveryCode,
      ),
    );
    await tester.tap(find.text(_useRecovery));
    await tester.pump();
    await tester.enterText(find.byType(TextField), ' abcd-efgh ');
    await tester.tap(find.text(_verify));
    await tester.pumpAndSettle();

    expect(recovery, 'abcd-efgh');
  });

  testWidgets('incorrect code shows its error and keeps verify enabled', (
    tester,
  ) async {
    await _pumpView(tester, error: MfaError.incorrectCode);

    expect(
      find.text(_incorrect),
      findsOneWidget,
    );
    expect(_verifyEnabled(tester), isTrue);
  });

  testWidgets('too many attempts disables verify', (tester) async {
    await _pumpView(tester, error: MfaError.tooManyAttempts);

    expect(
      find.text('Too many attempts. Wait a minute and try again.'),
      findsOneWidget,
    );
    expect(_verifyEnabled(tester), isFalse);
  });
}
