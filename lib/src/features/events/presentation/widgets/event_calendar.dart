import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:jc_connect_app/src/features/events/presentation/event_detail_screen.dart';
import 'package:material_ui/material_ui.dart';

class EventCalendar extends StatefulWidget {
  const EventCalendar({super.key, required this.events});
  final List<EventRecord> events;

  @override
  State<EventCalendar> createState() => _EventCalendarState();
}

class _EventCalendarState extends State<EventCalendar> {
  int selectedDay = 18;
  final days = const [
    26,
    27,
    28,
    29,
    30,
    31,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    1,
    2,
    3,
    4,
    5,
    6,
  ];

  List<EventRecord> get selectedEvents => widget.events.where((event) {
    final day = int.tryParse(
      event.date.split(' ').elementAt(1).replaceAll(',', ''),
    );
    return day == selectedDay;
  }).toList();

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.fromLTRB(12, 4, 12, 32),
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),
          const Text(
            'November 2026',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right)),
        ],
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(8, 12, 8, 10),
        decoration: BoxDecoration(
          border: Border.all(color: JcColors.border),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const ['M', 'T', 'W', 'T', 'F', 'S', 'S']
                  .map(
                    (day) => SizedBox(
                      width: 34,
                      child: Center(
                        child: Text(day, style: JcTextStyles.small),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: days.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                mainAxisExtent: 42,
              ),
              itemBuilder: (context, index) {
                final day = days[index];
                final inMonth = index >= 6 && index < 36;
                final selected = inMonth && day == selectedDay;
                final hasEvent = widget.events.any(
                  (event) =>
                      int.tryParse(
                        event.date.split(' ').elementAt(1).replaceAll(',', ''),
                      ) ==
                      day,
                );
                return InkWell(
                  onTap: inMonth
                      ? () => setState(() => selectedDay = day)
                      : null,
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: selected
                              ? JcColors.primary
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '$day',
                          style: TextStyle(
                            fontSize: 13,
                            color: selected
                                ? Colors.white
                                : inMonth
                                ? JcColors.text
                                : JcColors.muted.withAlpha(100),
                            fontWeight: selected
                                ? FontWeight.w700
                                : FontWeight.w400,
                          ),
                        ),
                      ),
                      if (hasEvent)
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: JcColors.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      Text(
        'Events on November $selectedDay',
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      const SizedBox(height: 10),
      if (selectedEvents.isEmpty)
        const Text(
          'No events, sport fixtures or club meetings on this day.',
          style: JcTextStyles.body,
        )
      else
        ...selectedEvents.map(
          (event) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _EventCard(event: event),
          ),
        ),
    ],
  );
}

class _EventCard extends StatelessWidget {
  const _EventCard({required this.event});
  final EventRecord event;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => pushScreen(context, EventDetailScreen(event: event)),
    borderRadius: BorderRadius.circular(14),
    child: Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: JcColors.softBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  event.isSport
                      ? Icons.sports_soccer_outlined
                      : Icons.event_outlined,
                  color: JcColors.primary,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: JcColors.softYellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        event.category,
                        style: const TextStyle(
                          fontSize: 11,
                          color: JcColors.text,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      event.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: JcColors.muted),
            ],
          ),
          const SizedBox(height: 12),
          Text(event.description, style: JcTextStyles.small),
          const SizedBox(height: 12),
          Wrap(
            spacing: 12,
            runSpacing: 6,
            children: [
              _EventMeta(
                icon: Icons.calendar_today_outlined,
                label: event.date,
              ),
              _EventMeta(icon: Icons.schedule_outlined, label: event.time),
              _EventMeta(
                icon: Icons.location_on_outlined,
                label: event.location,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class _EventMeta extends StatelessWidget {
  const _EventMeta({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: 14, color: JcColors.muted),
      const SizedBox(width: 4),
      Text(label, style: JcTextStyles.small),
    ],
  );
}
