import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:jc_connect_app/src/features/events/presentation/event_detail_screen.dart';
import 'package:material_ui/material_ui.dart';

class EventListCard extends StatelessWidget {
  const EventListCard({super.key, required this.event, this.featured = false});
  final EventRecord event;
  final bool featured;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => pushScreen(context, EventDetailScreen(event: event)),
    borderRadius: BorderRadius.circular(12),
    child: Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
      foregroundDecoration: featured
          ? const BoxDecoration(
              border: Border(
                left: BorderSide(color: JcColors.primary, width: 4),
              ),
            )
          : null,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: JcColors.border),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: JcColors.shadow,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 64,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFEAF2FF),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  event.month,
                  style: const TextStyle(
                    fontSize: 10,
                    color: JcColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  event.day,
                  style: const TextStyle(
                    fontSize: 20,
                    color: JcColors.titleBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: JcColors.selectedBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          event.category,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            color: JcColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  event.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                _CompactEventMeta(
                  icon: Icons.schedule_outlined,
                  label: event.time,
                ),
                _CompactEventMeta(
                  icon: Icons.location_on_outlined,
                  label: event.location,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const _EventAvatarStack(),
                    const SizedBox(width: 5),
                    Text(
                      event.going,
                      style: const TextStyle(
                        fontSize: 11,
                        color: JcColors.muted,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: JcColors.primary,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        context.l10n.eventCardRsvp,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class _CompactEventMeta extends StatelessWidget {
  const _CompactEventMeta({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, size: 13, color: JcColors.muted),
      const SizedBox(width: 4),
      Expanded(
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 11, color: JcColors.muted),
        ),
      ),
    ],
  );
}

class _EventAvatarStack extends StatelessWidget {
  const _EventAvatarStack();

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 52,
    height: 22,
    child: Stack(
      children: [
        const _EventAvatar(left: 0, color: Color(0xFFCAA18A), initial: 'K'),
        const _EventAvatar(left: 14, color: Color(0xFF425B7A), initial: 'M'),
        const _EventAvatar(left: 28, color: Color(0xFF8FBCB5), initial: 'J'),
        Positioned(
          left: 37,
          child: Container(
            width: 22,
            height: 22,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xFFFFC62E),
              shape: BoxShape.circle,
            ),
            child: const Text(
              '+59',
              style: TextStyle(fontSize: 7, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    ),
  );
}

class _EventAvatar extends StatelessWidget {
  const _EventAvatar({
    required this.left,
    required this.color,
    required this.initial,
  });
  final double left;
  final Color color;
  final String initial;

  @override
  Widget build(BuildContext context) => Positioned(
    left: left,
    child: Container(
      width: 22,
      height: 22,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Text(
        initial,
        style: const TextStyle(
          fontSize: 9,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
