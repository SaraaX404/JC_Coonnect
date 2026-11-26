import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_api/jc_api.dart' show ClassOption, Ref;
import 'package:jc_connect_app/src/core/network/api.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/fake_sign_up_repository.dart';
import '../../helpers/pump_app.dart';

SignUpData _data() => SignUpData()
  ..role = JcRole.student
  ..name = 'Kemar Brown'
  ..email = 'kemar.brown@example.com'
  ..phone = '+1 876 555 0142'
  ..password = 'Secret#123'
  ..signupToken = 'signup-token'
  ..options = testOptions;

Future<GoRouter> _pump(
  WidgetTester tester,
  String location,
  SignUpData data, [
  FakeSignUpRepository? repo,
]) {
  // Tall enough that every list builds all of its fields.
  tester.view
    ..physicalSize = const Size(1170, 6000)
    ..devicePixelRatio = 3;
  addTearDown(tester.view.reset);
  return pumpRouter(
    tester,
    location: location,
    extra: data,
    overrides: [(repo ?? FakeSignUpRepository()).asOverride],
  );
}

Finder _field(String label) => find.descendant(
  of: find.ancestor(of: find.text(label), matching: find.byType(Column)).first,
  matching: find.byType(TextField),
);

Future<void> _tap(WidgetTester tester, String text) async {
  await tester.pump(); // let the last edit enable the button
  await tester.tap(find.text(text).last);
  await tester.pumpAndSettle();
}

/// A student whose class and track are picked; ID, birthday and address are
/// left to the test.
SignUpData _studentWithClass() => _data()
  ..grade = testOptions.grades.single
  ..schoolClass = testOptions.classes.single
  ..academicTrack = testOptions.academicTracks.single;

void main() {
  testWidgets('account with an email already in use shows the error', (
    tester,
  ) async {
    await _pump(
      tester,
      Routes.signUpAccount,
      _data(),
      FakeSignUpRepository(
        onSendCode: (_) async => throw const ApiException(409, 'email_exists'),
      ),
    );

    await _tap(tester, 'Continue');

    expect(
      find.text('Email already in use. Log in or try another.'),
      findsOneWidget,
    );
  });

  testWidgets('account with a phone without country code shows the error', (
    tester,
  ) async {
    await _pump(tester, Routes.signUpAccount, _data());
    await tester.enterText(_field('Phone number'), '876 555 0142');
    await tester.pump();

    expect(
      find.text(
        'Enter the number with its country code, like +1 876 555 0142.',
      ),
      findsOneWidget,
    );
  });

  testWidgets('verify with the right code opens student details with the '
      'school grades', (tester) async {
    final data = _data()
      ..signupToken = ''
      ..options = null;
    final router = await _pump(tester, Routes.signUpVerify, data);

    await tester.enterText(find.byType(TextField), '123456');
    await _tap(tester, 'Verify email');

    expect(router.state.uri.path, Routes.signUpStudent);
    expect(data.signupToken, 'signup-token');
    await _tap(tester, 'Select your grade');
    expect(find.text('Grade 10'), findsOneWidget);
  });

  testWidgets('verify with a wrong code says so', (tester) async {
    await _pump(
      tester,
      Routes.signUpVerify,
      _data(),
      FakeSignUpRepository(
        onVerifyCode: (_) async =>
            throw const ApiException(400, 'code_invalid'),
      ),
    );

    await tester.enterText(find.byType(TextField), '123456');
    await _tap(tester, 'Verify email');

    expect(
      find.text('That code isn’t right. Check it and try again.'),
      findsOneWidget,
    );
  });

  testWidgets('student id not on the register shows not found', (
    tester,
  ) async {
    await _pump(
      tester,
      Routes.signUpStudent,
      _studentWithClass(),
      FakeSignUpRepository(onCheckStudent: (_, _) async => false),
    );
    await tester.enterText(_field('Student ID'), 'JC-2026-4815');
    await tester.enterText(_field('Date of birth'), '14 / 03 / 2010');
    await tester.enterText(_field('Address'), '12 Hope Road, Kingston 6');
    await _tap(tester, 'Continue');

    expect(
      find.text('Student ID not found. Check your school ID card.'),
      findsOneWidget,
    );
  });

  testWidgets('student found on the register opens the guardian step', (
    tester,
  ) async {
    final router = await _pump(
      tester,
      Routes.signUpStudent,
      _studentWithClass(),
    );
    await tester.enterText(_field('Student ID'), '0001');
    await tester.enterText(_field('Date of birth'), '14 / 03 / 2010');
    await tester.enterText(_field('Address'), '12 Hope Road, Kingston 6');
    await _tap(tester, 'Continue');

    expect(router.state.uri.path, Routes.signUpGuardians);
  });

  testWidgets('student with an impossible birthday shows the date error', (
    tester,
  ) async {
    await _pump(tester, Routes.signUpStudent, _studentWithClass());
    await tester.enterText(_field('Date of birth'), '31 / 02 / 2010');
    await tester.pump();

    expect(
      find.text('Enter a real date, like 14 / 03 / 2010.'),
      findsOneWidget,
    );
  });

  testWidgets('submit opens the submitted screen with the received time', (
    tester,
  ) async {
    final router = await _pump(
      tester,
      Routes.signUpReview,
      _studentWithClass()..house = const Ref(id: 'h', name: 'Hobbs'),
    );

    await _tap(tester, 'Submit application');

    expect(router.state.uri.path, Routes.signUpSubmitted);
    // intl puts a narrow no-break space before AM.
    expect(find.textContaining('Nov 26, 2026 · 11:20'), findsOneWidget);
  });

  testWidgets('submit with a phone in use says so', (tester) async {
    await _pump(
      tester,
      Routes.signUpReview,
      _data(),
      FakeSignUpRepository(
        onSubmit: (_) async => throw const ApiException(409, 'phone_exists'),
      ),
    );

    await _tap(tester, 'Submit application');

    expect(
      find.text('Phone number already in use. Log in or try another.'),
      findsOneWidget,
    );
  });

  testWidgets('submit after the sign-up token expired returns to account '
      'details with the form kept', (tester) async {
    final router = await _pump(
      tester,
      Routes.signUpReview,
      _data()
        ..schoolClass = const ClassOption(id: 'c', name: '10B', gradeId: 'g'),
      FakeSignUpRepository(
        onSubmit: (_) async => throw const ApiException(401, 'token_expired'),
      ),
    );

    await _tap(tester, 'Submit application');

    expect(router.state.uri.path, Routes.signUpAccount);
    expect(
      find.text('Your sign-up session expired. Verify your email again.'),
      findsOneWidget,
    );
    expect(find.widgetWithText(TextField, 'Kemar Brown'), findsOneWidget);
  });
}
