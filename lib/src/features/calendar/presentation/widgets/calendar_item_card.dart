import 'package:intl/intl.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/features/calendar/domain/calendar_item.dart';
import 'package:material_ui/material_ui.dart';

/// One agenda entry: date, tag, title, time, place, who else and the user's
/// status, with a bar in the kind's colour.
class CalendarItemCard extends StatelessWidget {
  const CalendarItemCard({super.key, required this.item});
  final CalendarItem item;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).toString();
    final color = item.kind.color;
    final (people, status) = switch (item.kind) {
      CalendarKind.event => (
        l10n.calendarPeopleGoing(item.people),
        l10n.calendarGoing,
      ),
      CalendarKind.club => (
        l10n.calendarPeopleMembers(item.people),
        l10n.calendarJoined,
      ),
      CalendarKind.sport => (
        l10n.calendarPeopleSquad(item.people),
        l10n.calendarAssigned,
      ),
    };
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border(left: BorderSide(color: color, width: 4)),
        boxShadow: const [BoxShadow(color: JcColors.shadow, blurRadius: 8)],
      ),
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: JcColors.border),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      DateFormat.MMM(locale).format(item.start).toUpperCase(),
                      style: TextStyle(fontSize: 10, color: color),
                    ),
                    Text(
                      DateFormat.d(locale).format(item.start),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: color.withAlpha(25),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        item.tag,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    _Meta(
                      icon: Icons.schedule,
                      text: l10n.calendarTimeRange(item.start, item.end),
                    ),
                    _Meta(
                      icon: Icons.location_on_outlined,
                      text: item.location,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _Faces(others: item.people - _Faces.shown),
              const SizedBox(width: 8),
              Expanded(child: Text(people, style: JcTextStyles.small)),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: JcColors.border),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.check, size: 14),
                    const SizedBox(width: 4),
                    Text(status, style: const TextStyle(fontSize: 11)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Meta extends StatelessWidget {
  const _Meta({required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, size: 12, color: JcColors.muted),
      const SizedBox(width: 4),
      Expanded(child: Text(text, style: JcTextStyles.small)),
    ],
  );
}

/// Overlapping placeholders for the first few people, then "+N".
// ponytail: grey placeholders until the API sends people's photos.
class _Faces extends StatelessWidget {
  const _Faces({required this.others});
  static const shown = 3;
  final int others;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 18.0 * shown + 24,
    height: 24,
    child: Stack(
      children: [
        for (var i = 0; i <= shown; i++)
          Positioned(
            left: 18.0 * i,
            child: Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: i == shown ? JcColors.gold : JcColors.track,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1.5),
              ),
              child: i == shown
                  ? Text(
                      '+$others',
                      style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  : const Icon(Icons.person, size: 14, color: JcColors.muted),
            ),
          ),
      ],
    ),
  );
}
