import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/app/router.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:material_ui/material_ui.dart';

/// Pumps the real router with localisation, optionally opening [location].
Future<GoRouter> pumpRouter(WidgetTester tester, {String? location}) async {
  final router = createRouter();
  addTearDown(router.dispose);
  await tester.pumpWidget(
    MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: jcTheme(),
      routerConfig: router,
    ),
  );
  if (location != null) {
    router.go(location);
    await tester.pumpAndSettle();
  }
  return router;
}
