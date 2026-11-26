import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/calendar/data/mock_calendar.dart';
import 'package:jc_connect_app/src/features/calendar/domain/calendar_item.dart';
import 'package:jc_connect_app/src/features/calendar/presentation/widgets/calendar_grid.dart';
import 'package:jc_connect_app/src/features/calendar/presentation/widgets/calendar_item_card.dart';
import 'package:material_ui/material_ui.dart';

/// What the user joined (events), is assigned to (sport) or is a member of
/// (clubs), by week or month. Opened from Home.
class MyCalendarScreen extends StatefulWidget {
  const MyCalendarScreen({super.key, this.today});

  /// Tests fix the date; the app uses now.
  final DateTime? today;

  @override
  State<MyCalendarScreen> createState() => _MyCalendarScreenState();
}

class _MyCalendarScreenState extends State<MyCalendarScreen> {
  late final DateTime today = DateUtils.dateOnly(
    widget.today ?? DateTime.now(),
  );
  late final items = mockCalendar(today);
  late DateTime selected = today;

  /// null: every kind.
  CalendarKind? filter;
  bool monthView = false;

  List<CalendarItem> get _visible => [
    for (final item in items)
      if (filter == null || item.kind == filter) item,
  ];

  List<CalendarItem> _on(DateTime day) => [
    for (final item in _visible)
      if (DateUtils.isSameDay(item.start, day)) item,
  ];

  /// The week (starting on the locale's first day) or the six weeks that
  /// show [selected]'s month.
  List<DateTime> _days(int firstWeekday) {
    final anchor = monthView
        ? DateTime(selected.year, selected.month)
        : selected;
    // DateTime.weekday is 1 (Mon) to 7 (Sun); firstWeekday is 0 (Sun) to 6.
    final back = (anchor.weekday - firstWeekday) % 7;
    return [
      for (var i = 0; i < (monthView ? 42 : 7); i++)
        DateTime(anchor.year, anchor.month, anchor.day - back + i),
    ];
  }

  void _move(int step) => setState(() {
    if (monthView) {
      final month = DateTime(selected.year, selected.month + step);
      final last = DateUtils.getDaysInMonth(month.year, month.month);
      selected = DateTime(month.year, month.month, selected.day.clamp(1, last));
    } else {
      selected = DateTime(
        selected.year,
        selected.month,
        selected.day + 7 * step,
      );
    }
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final days = _days(MaterialLocalizations.of(context).firstDayOfWeekIndex);
    // All: the selected day. A filter: that kind from the selected day to
    // the end of what the calendar shows, grouped by day.
    final agendaDays = filter == null
        ? [selected]
        : [
            for (final day in days)
              if (!day.isBefore(selected) && _on(day).isNotEmpty) day,
          ];
    return JcScaffold(
      title: l10n.calendarTitle,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final kind in [null, ...CalendarKind.values])
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: _FilterChip(
                      label: _kindLabel(l10n, kind),
                      selected: filter == kind,
                      onTap: () => setState(() => filter = kind),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          CalendarGrid(
            days: days,
            month: monthView ? DateTime(selected.year, selected.month) : null,
            today: today,
            selected: selected,
            kindsOn: (day) => {for (final item in _on(day)) item.kind}.toList(),
            onSelect: (day) => setState(() => selected = day),
            onPrevious: () => _move(-1),
            onNext: () => _move(1),
            onToggleMonth: () => setState(() => monthView = !monthView),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              for (final kind in CalendarKind.values) ...[
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: kind.color,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 4),
                Text(_kindLabel(l10n, kind), style: JcTextStyles.small),
                const SizedBox(width: 12),
              ],
            ],
          ),
          const SizedBox(height: 20),
          if (agendaDays.isEmpty || _on(agendaDays.first).isEmpty) ...[
            _DayHeader(day: selected, count: 0),
            const SizedBox(height: 12),
            const _EmptyDay(),
          ] else
            for (final day in agendaDays) ...[
              _DayHeader(day: day, count: _on(day).length),
              const SizedBox(height: 12),
              for (final item in _on(day)) ...[
                CalendarItemCard(item: item),
                const SizedBox(height: 12),
              ],
              const SizedBox(height: 8),
            ],
        ],
      ),
    );
  }

  String _kindLabel(AppLocalizations l10n, CalendarKind? kind) =>
      switch (kind) {
        null => l10n.calendarFilterAll,
        CalendarKind.event => l10n.calendarKindEvents,
        CalendarKind.sport => l10n.calendarKindSport,
        CalendarKind.club => l10n.calendarKindClubs,
      };
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(20),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? JcColors.selectedBlue : Colors.white,
        border: Border.all(
          color: selected ? JcColors.primary : JcColors.border,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (selected) ...[
            const Icon(Icons.check, size: 14, color: JcColors.primary),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: selected ? JcColors.primary : JcColors.text,
            ),
          ),
        ],
      ),
    ),
  );
}

class _DayHeader extends StatelessWidget {
  const _DayHeader({required this.day, required this.count});
  final DateTime day;
  final int count;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: Text(
          DateFormat.MMMEd(
            Localizations.localeOf(context).toString(),
          ).format(day),
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
      if (count > 0)
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: JcColors.pillBlue,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            context.l10n.calendarItems(count),
            style: const TextStyle(fontSize: 11, color: JcColors.primary),
          ),
        ),
    ],
  );
}

class _EmptyDay extends StatelessWidget {
  const _EmptyDay();

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      children: [
        const CircleAvatar(
          radius: 26,
          backgroundColor: JcColors.softBlue,
          child: Icon(Icons.calendar_today_outlined, color: JcColors.primary),
        ),
        const SizedBox(height: 16),
        Text(
          context.l10n.calendarNothingHeading,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        Text(
          context.l10n.calendarNothingBody,
          textAlign: TextAlign.center,
          style: JcTextStyles.small,
        ),
        const SizedBox(height: 14),
        OutlinedButton(
          onPressed: () => context.push(Routes.events),
          style: OutlinedButton.styleFrom(
            foregroundColor: JcColors.text,
            side: const BorderSide(color: JcColors.border),
            shape: const StadiumBorder(),
          ),
          child: Text(context.l10n.calendarBrowseEvents),
        ),
      ],
    ),
  );
}
