import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:jc_connect_app/src/core/widgets/jc_system_state.dart';
import 'package:material_ui/material_ui.dart';

import '../helpers/pump_app.dart';

Future<void> _pump(
  WidgetTester tester,
  JcSystemStateKind kind, {
  VoidCallback? onAction,
}) => tester.pumpWidget(
  MaterialApp(
    theme: jcTheme(),
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: JcSystemState(
      kind: kind,
      backBy: '6:00 AM',
      onAction: onAction ?? () {},
    ),
  ),
);

void main() {
  const cases = {
    JcSystemStateKind.offline: (
      "You're offline",
      'Check your internet connection and try again.',
      'Try again',
    ),
    JcSystemStateKind.serverError: (
      'Something went wrong',
      'We couldn’t connect to our servers. Try again in a few moments.',
      'Try again',
    ),
    JcSystemStateKind.maintenance: (
      'Under maintenance',
      'JC Connect is down for scheduled maintenance. We expect to be back by 6:00 AM.',
      'Check again',
    ),
    JcSystemStateKind.sessionExpired: (
      'Session expired',
      'For your security, we logged you out after a period of inactivity.',
      'Log in again',
    ),
  };

  cases.forEach((kind, texts) {
    final (title, message, action) = texts;
    testWidgets('${kind.name} shows its copy and runs its action', (
      tester,
    ) async {
      var tapped = 0;
      await _pump(tester, kind, onAction: () => tapped++);

      expect(find.text(title), findsOneWidget);
      expect(find.text(message), findsOneWidget);
      expect(find.text('Contact support'), findsOneWidget);

      await tester.tap(find.text(action));
      expect(tapped, 1);
    });
  });

  testWidgets('system action button has no arrow icon', (tester) async {
    await _pump(tester, JcSystemStateKind.offline);

    final button = find.ancestor(
      of: find.text('Try again'),
      matching: find.byType(FilledButton),
    );
    expect(
      find.descendant(of: button, matching: find.byType(SvgPicture)),
      findsNothing,
    );
  });

  testWidgets('session expired route sends log in again to login', (
    tester,
  ) async {
    await pumpRouter(tester, location: Routes.sessionExpired);
    await tester.tap(find.text('Log in again'));
    await tester.pumpAndSettle();

    expect(find.text('Forgot your password?'), findsOneWidget);
  });
}
