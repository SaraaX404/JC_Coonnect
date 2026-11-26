import 'package:intl/intl.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/features/calendar/domain/calendar_item.dart';
import 'package:material_ui/material_ui.dart';

/// Week or month of days with a dot per kind of item. The handle under the
/// days switches between the two.
class CalendarGrid extends StatelessWidget {
  const CalendarGrid({
    super.key,
    required this.days,
    required this.month,
    required this.today,
    required this.selected,
    required this.kindsOn,
    required this.onSelect,
    required this.onPrevious,
    required this.onNext,
    required this.onToggleMonth,
  });

  /// 7 (a week) or 42 (six weeks around [month]).
  final List<DateTime> days;

  /// Set in month view: days outside it are dimmed.
  final DateTime? month;
  final DateTime today;
  final DateTime selected;
  final List<CalendarKind> Function(DateTime day) kindsOn;
  final ValueChanged<DateTime> onSelect;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final VoidCallback onToggleMonth;

  String _title(AppLocalizations l10n, String locale) {
    if (month case final month?) return DateFormat.yMMMM(locale).format(month);
    final (start, end) = (days.first, days.last);
    return start.month == end.month
        ? l10n.calendarWeekSameMonth(start, end, end)
        : l10n.calendarWeekTwoMonths(start, end, end);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).toString();
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [BoxShadow(color: JcColors.shadow, blurRadius: 8)],
      ),
      child: Column(
        children: [
          Row(
            children: [
              _Arrow(
                icon: Icons.chevron_left,
                tooltip: l10n.calendarPrevious,
                onTap: onPrevious,
              ),
              Expanded(
                child: Text(
                  _title(l10n, locale),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              _Arrow(
                icon: Icons.chevron_right,
                tooltip: l10n.calendarNext,
                onTap: onNext,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              for (final day in days.take(7))
                Expanded(
                  child: Text(
                    DateFormat.EEEEE(locale).format(day),
                    textAlign: TextAlign.center,
                    style: JcTextStyles.small,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          for (var row = 0; row < days.length; row += 7)
            Row(
              children: [
                for (final day in days.skip(row).take(7))
                  Expanded(
                    child: _Day(
                      day: day,
                      today: DateUtils.isSameDay(day, today),
                      selected: DateUtils.isSameDay(day, selected),
                      dimmed: month != null && day.month != month!.month,
                      kinds: kindsOn(day),
                      onTap: () => onSelect(day),
                    ),
                  ),
              ],
            ),
          Semantics(
            button: true,
            label: month == null
                ? l10n.calendarShowMonth
                : l10n.calendarShowWeek,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onToggleMonth,
              onVerticalDragEnd: (details) {
                final down = (details.primaryVelocity ?? 0) > 0;
                if (down == (month == null)) onToggleMonth();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Container(
                    width: 28,
                    height: 3,
                    decoration: BoxDecoration(
                      color: JcColors.border,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Arrow extends StatelessWidget {
  const _Arrow({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => SizedBox.square(
    dimension: 32,
    child: IconButton.outlined(
      tooltip: tooltip,
      onPressed: onTap,
      padding: EdgeInsets.zero,
      iconSize: 18,
      style: IconButton.styleFrom(
        side: const BorderSide(color: JcColors.border),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      icon: Icon(icon, color: JcColors.text),
    ),
  );
}

class _Day extends StatelessWidget {
  const _Day({
    required this.day,
    required this.today,
    required this.selected,
    required this.dimmed,
    required this.kinds,
    required this.onTap,
  });
  final DateTime day;
  final bool today;
  final bool selected;
  final bool dimmed;
  final List<CalendarKind> kinds;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(8),
    child: Center(
      child: Container(
        width: 34,
        height: 36,
        margin: const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          color: selected ? JcColors.primary : null,
          border: today && !selected
              ? Border.all(color: JcColors.primary, width: 1.5)
              : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${day.day}',
              style: TextStyle(
                fontSize: 13,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
                color: selected
                    ? Colors.white
                    : dimmed
                    ? JcColors.muted.withAlpha(120)
                    : JcColors.text,
              ),
            ),
            const SizedBox(height: 3),
            SizedBox(
              height: 4,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final kind in kinds)
                    Container(
                      width: 4,
                      height: 4,
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      decoration: BoxDecoration(
                        color: selected ? Colors.white : kind.color,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
