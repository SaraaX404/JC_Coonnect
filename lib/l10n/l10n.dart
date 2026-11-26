import 'package:flutter/widgets.dart';
import 'package:jc_connect_app/l10n/generated/app_localizations.dart';

export 'package:jc_connect_app/l10n/generated/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
