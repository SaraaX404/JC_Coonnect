import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/features/onboarding/domain/sign_up_data.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers/pump_app.dart';

const _studentEmail = 'kemar.brown@example.com';

Future<(GoRouter, SignUpData)> _pump(WidgetTester tester) async {
  // Tall enough that the list builds every field and the button.
  tester.view
    ..physicalSize = const Size(1170, 6000)
    ..devicePixelRatio = 3;
  addTearDown(tester.view.reset);
  final data = SignUpData()..email = _studentEmail;
  final router = await pumpRouter(
    tester,
    location: Routes.signUpGuardians,
    extra: data,
  );
  return (router, data);
}

Finder _field(String label) => find.descendant(
  of: find.ancestor(of: find.text(label), matching: find.byType(Column)).first,
  matching: find.byType(TextField),
);

Future<void> _fill(
  WidgetTester tester, {
  String name = 'Andrea Brown',
  String email = 'andrea.brown@example.com',
}) async {
  await tester.enterText(_field('Guardian’s full name'), name);
  await tester.tap(find.text('Select relationship'));
  await tester.pumpAndSettle();
  await tester.tap(find.text('Mother').last);
  await tester.pumpAndSettle();
  await tester.enterText(_field('Guardian’s email'), email);
  await tester.pump();
}

bool _enabled(WidgetTester tester, String label) {
  final button = find.ancestor(
    of: find.text(label),
    matching: find.byWidgetPredicate((w) => w is ButtonStyleButton),
  );
  return tester.widget<ButtonStyleButton>(button.first).enabled;
}

void main() {
  testWidgets('continue with a complete guardian opens terms with it saved', (
    tester,
  ) async {
    final (router, data) = await _pump(tester);
    expect(_enabled(tester, 'Continue'), isFalse);

    await _fill(tester);
    expect(_enabled(tester, 'Continue'), isTrue);
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    expect(router.state.uri.path, Routes.signUpTerms);
    expect(data.guardians.single.fullName, 'Andrea Brown');
    expect(data.guardians.single.relationship, 'Mother');
  });

  testWidgets('guardian email equal to the student email shows an error', (
    tester,
  ) async {
    await _pump(tester);
    await _fill(tester, email: 'Kemar.Brown@example.com');

    expect(
      find.text('This is your email. Enter your guardian’s email.'),
      findsOneWidget,
    );
    expect(_enabled(tester, 'Continue'), isFalse);
  });

  testWidgets('add another guardian saves a card and opens guardian 2', (
    tester,
  ) async {
    await _pump(tester);
    await _fill(tester);
    await tester.tap(find.text('Add another guardian'));
    await tester.pump();

    expect(find.text('Guardian 1'), findsOneWidget);
    expect(find.text('Guardian 2'), findsOneWidget);
    expect(find.text('Add another guardian'), findsNothing);
    expect(_enabled(tester, 'Continue'), isFalse);

    await tester.tap(find.text('Remove'));
    await tester.pump();
    expect(find.text('Guardian 2'), findsNothing);
    expect(_enabled(tester, 'Continue'), isTrue);
  });

  testWidgets('edit on a guardian card puts it back in the form', (
    tester,
  ) async {
    await _pump(tester);
    await _fill(tester);
    await tester.tap(find.text('Add another guardian'));
    await tester.pump();
    await tester.tap(find.text('Edit'));
    await tester.pump();

    expect(find.text('Guardian 1'), findsNothing);
    expect(find.widgetWithText(TextField, 'Andrea Brown'), findsOneWidget);
  });
}
