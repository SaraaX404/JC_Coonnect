import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/app/router.dart';
import 'package:jc_connect_app/src/core/theme/jc_theme.dart';
import 'package:material_ui/material_ui.dart';

/// Pumps the real router with localisation, optionally opening [location]
/// (with [extra]). [overrides] swap providers, like the auth repository.
Future<GoRouter> pumpRouter(
  WidgetTester tester, {
  String? location,
  Object? extra,
  List<Override> overrides = const [],
}) async {
  final router = createRouter();
  addTearDown(router.dispose);
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides,
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: jcTheme(),
        routerConfig: router,
      ),
    ),
  );
  if (location != null) {
    router.go(location, extra: extra);
    await tester.pumpAndSettle();
  }
  return router;
}
