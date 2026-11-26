import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/features/auth/domain/login_result.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/fake_auth_repository.dart';
import '../../helpers/pump_app.dart';

const _invalidEmail = 'Enter a valid email, like name@example.com.';
const _passwordRequired = 'Enter your password';

Future<void> _submit(
  WidgetTester tester, {
  required String email,
  required String password,
}) async {
  await tester.enterText(find.byType(TextField).at(0), email);
  await tester.enterText(find.byType(TextField).at(1), password);
  await tester.tap(find.text('Log in'));
  await tester.pump();
}

void main() {
  testWidgets('log in with a malformed email shows the invalid email error', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'm.sterlingjc.edu.jm', password: 'secret12');

    expect(find.text(_invalidEmail), findsOneWidget);
    expect(find.text(_passwordRequired), findsNothing);
  });

  testWidgets('log in without a password shows the password required error', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'm.sterling@jc.edu.jm', password: '');

    expect(find.text(_passwordRequired), findsOneWidget);
    expect(find.text(_invalidEmail), findsNothing);
  });

  testWidgets('editing a field clears its error', (tester) async {
    await pumpRouter(tester, location: Routes.login);
    await _submit(tester, email: 'nope', password: 'secret12');
    expect(find.text(_invalidEmail), findsOneWidget);

    await tester.enterText(find.byType(TextField).at(0), 'nope@jc.edu.jm');
    await tester.pump();
    expect(find.text(_invalidEmail), findsNothing);
  });

  testWidgets('log in with valid credentials signs in and opens events', (
    tester,
  ) async {
    final auth = FakeAuthRepository();
    final router = await pumpRouter(
      tester,
      location: Routes.login,
      overrides: [auth.asOverride],
    );
    await _submit(
      tester,
      email: ' m.sterling@jc.edu.jm ',
      password: 'secret12',
    );
    await tester.pumpAndSettle();

    expect(auth.logins.single.email, 'm.sterling@jc.edu.jm');
    expect(router.state.uri.path, Routes.events);
  });

  testWidgets('log in with wrong credentials shows the Figma error', (
    tester,
  ) async {
    final auth = FakeAuthRepository(
      onLogin: (_) async =>
          throw const ApiException(401, 'invalid_credentials'),
    );
    await pumpRouter(
      tester,
      location: Routes.login,
      overrides: [auth.asOverride],
    );
    await _submit(tester, email: 'm.sterling@jc.edu.jm', password: 'wrong');
    await tester.pumpAndSettle();

    expect(
      find.text('Incorrect email or password. Try again or reset it.'),
      findsOneWidget,
    );
  });

  testWidgets('log in without a connection shows the offline message', (
    tester,
  ) async {
    final auth = FakeAuthRepository(
      onLogin: (_) async => throw const ApiException(null),
    );
    await pumpRouter(
      tester,
      location: Routes.login,
      overrides: [auth.asOverride],
    );
    await _submit(tester, email: 'm.sterling@jc.edu.jm', password: 'secret12');
    await tester.pumpAndSettle();

    expect(
      find.text('Check your internet connection and try again.'),
      findsOneWidget,
    );
  });

  testWidgets('log in for several schools asks which and retries with it', (
    tester,
  ) async {
    final auth = FakeAuthRepository(
      onLogin: (schoolId) async => schoolId == null
          ? const LoginPickSchool([
              School(id: 's1', name: 'Jamaica College'),
              School(id: 's2', name: 'Test Prep School'),
            ])
          : const LoginSignedIn(),
    );
    final router = await pumpRouter(
      tester,
      location: Routes.login,
      overrides: [auth.asOverride],
    );
    await _submit(tester, email: 'm.sterling@jc.edu.jm', password: 'secret12');
    await tester.pumpAndSettle();

    expect(find.text('Choose your school'), findsOneWidget);
    await tester.tap(find.text('Jamaica College'));
    await tester.pumpAndSettle();

    expect(auth.logins.map((l) => l.schoolId), [null, 's1']);
    expect(router.state.uri.path, Routes.events);
  });
}
