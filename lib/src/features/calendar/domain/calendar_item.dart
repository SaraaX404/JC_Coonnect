import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:material_ui/material_ui.dart';

/// What put an item on the user's calendar: an event they joined, a sport
/// fixture they are assigned to, or a meeting of a club they are in.
enum CalendarKind {
  event(JcColors.primary),
  sport(JcColors.green),
  club(JcColors.purple);

  const CalendarKind(this.color);

  /// Dots, legend, card bar and tag.
  final Color color;
}

class CalendarItem {
  const CalendarItem({
    required this.id,
    required this.kind,
    required this.tag,
    required this.title,
    required this.start,
    required this.end,
    required this.location,
    required this.people,
  });
  final String id;
  final CalendarKind kind;

  /// "Academic • STEM": backend content, not translated.
  final String tag;
  final String title;
  final DateTime start;
  final DateTime end;
  final String location;

  /// Going (events), members (clubs) or squad size (sport).
  final int people;
}
