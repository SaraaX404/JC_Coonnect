import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/jc_role.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';

import '../helpers/pump_app.dart';

void _expectSameLine(WidgetTester tester, String prompt, String link) {
  final promptCenter = tester.getCenter(find.text(prompt)).dy;
  final linkCenter = tester.getCenter(find.text(link)).dy;
  expect(linkCenter, moreOrLessEquals(promptCenter, epsilon: 0.5));
}

void main() {
  testWidgets('sign-up role footer keeps prompt and link on one line', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.signUp);
    _expectSameLine(tester, 'Already have an account?', 'Log in');
  });

  testWidgets('login footer keeps prompt and link on one line', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.login);
    // The footer sits below the fold of the default 800x600 test screen.
    await tester.scrollUntilVisible(
      find.text('Sign up'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    _expectSameLine(tester, 'Don’t have an account?', 'Sign up');
  });

  testWidgets('verify email footer keeps prompt and link on one line', (
    tester,
  ) async {
    final router = await pumpRouter(tester);
    router.go(Routes.signUpVerify, extra: SignUpData()..role = JcRole.student);
    await tester.pumpAndSettle();
    _expectSameLine(tester, 'Didn’t receive the code?', 'Resend');
  });
}
