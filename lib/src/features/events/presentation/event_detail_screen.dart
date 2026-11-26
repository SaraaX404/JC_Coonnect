import 'package:go_router/go_router.dart';
import 'package:jc_connect_app/src/core/routing/routes.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
import 'package:jc_connect_app/src/features/events/data/mock_events.dart';
import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/show_message.dart';
import 'package:jc_connect_app/src/core/widgets/jc_panel.dart';
import 'package:jc_connect_app/src/core/widgets/jc_pill.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:material_ui/material_ui.dart';

class EventDetailScreen extends StatefulWidget {
  const EventDetailScreen({super.key, required this.event});
  final EventRecord event;

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  bool joined = false;
  int likes = 12;
  final comment = TextEditingController();
  final comments = <String>[mockEventComment];

  @override
  void dispose() {
    comment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: context.l10n.eventDetailTitle,
    child: ListView(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 32),
      children: [
        Container(
          height: 256,
          color: const Color(0xFFE5EAF2),
          child: const Center(
            child: Icon(
              Icons.smart_toy_outlined,
              size: 56,
              color: JcColors.titleBlue,
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -28),
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
            decoration: const BoxDecoration(
              color: Color(0xFFFCF9F8),
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: JcColors.gold,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '●  ${widget.event.category}',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF432305),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Text(
                  widget.event.title,
                  style: const TextStyle(
                    fontSize: 24,
                    height: 1.3,
                    color: JcColors.navyDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                _eventInfoCard(
                  Icons.calendar_today_outlined,
                  context.l10n.eventDetailDateTime,
                  context.l10n.eventDetailDateTimeValue(
                    widget.event.date,
                    widget.event.time,
                  ),
                ),
                const SizedBox(height: 8),
                _eventInfoCard(
                  Icons.location_on_outlined,
                  context.l10n.commonLocation,
                  widget.event.location,
                ),
                const SizedBox(height: 8),
                _eventInfoCard(
                  Icons.groups_outlined,
                  context.l10n.eventDetailOrganizer,
                  mockEventOrganizer,
                ),
                const SizedBox(height: 18),
                Text(
                  context.l10n.eventDetailAbout,
                  style: const TextStyle(
                    fontSize: 16,
                    color: JcColors.navyDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.event.description,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.45,
                    color: JcColors.muted,
                  ),
                ),
                const SizedBox(height: 16),
                OutlinedButton.icon(
                  onPressed: () => showMessage(
                    context,
                    context.l10n.eventDetailAddedToCalendar,
                  ),
                  icon: const Icon(Icons.calendar_month_outlined),
                  label: Text(context.l10n.eventDetailAddToCalendar),
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(48),
                    foregroundColor: JcColors.navy,
                    side: const BorderSide(color: JcColors.border),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                JcPanel(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              context.l10n.eventDetailAreYouGoing,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          JcPill(context.l10n.eventDetailOpenToAll),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: FilledButton.icon(
                          onPressed: () => setState(() => joined = !joined),
                          icon: Icon(
                            joined ? Icons.check : Icons.check,
                            size: 18,
                          ),
                          label: Text(
                            joined
                                ? context.l10n.eventDetailYoureGoing
                                : context.l10n.eventDetailJoinNow,
                          ),
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFF0079D4),
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Text(
                            '👤 👤 👤 🟡',
                            style: TextStyle(fontSize: 17),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              widget.event.going,
                              style: JcTextStyles.small,
                            ),
                          ),
                          TextButton(
                            onPressed: () => setState(() => joined = true),
                            child: Text(context.l10n.eventDetailSeeAll),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                JcPanel(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.volunteer_activism_outlined,
                            color: JcColors.navy,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              context.l10n.eventDetailCommunityBooster,
                              style: const TextStyle(
                                color: JcColors.navy,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            context.l10n.eventDetailFunded(mockFundedPercent),
                            style: JcTextStyles.small,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Text(
                        context.l10n.eventDetailHelpFund,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        mockEventFundingPurpose,
                        style: JcTextStyles.small,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(context.l10n.eventDetailRaised(mockRaised)),
                          const Spacer(),
                          Text(
                            context.l10n.eventDetailGoal(mockGoal),
                            style: JcTextStyles.small,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      const LinearProgressIndicator(
                        value: .6,
                        minHeight: 7,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        onPressed: () =>
                            context.push(Routes.eventDonate(widget.event.id)),
                        icon: const Icon(
                          Icons.volunteer_activism_outlined,
                          size: 18,
                        ),
                        label: Text(context.l10n.eventDetailDonate),
                        style: FilledButton.styleFrom(
                          backgroundColor: JcColors.gold,
                          foregroundColor: JcColors.navyDark,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  context.l10n.eventDetailReactions,
                  style: const TextStyle(
                    fontSize: 16,
                    color: JcColors.navyDark,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => setState(() => likes++),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: JcColors.primary,
                      ),
                    ),
                    Text('$likes', style: JcTextStyles.small),
                    const SizedBox(width: 8),
                    const Text('👏  8   🎉  5'),
                  ],
                ),
                Text(
                  context.l10n.eventDetailComments,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: comment,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: context.l10n.eventDetailAddComment,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send, color: JcColors.primary),
                      onPressed: () {
                        final text = comment.text.trim();
                        if (text.isEmpty) return;
                        setState(() => comments.insert(0, text));
                        comment.clear();
                      },
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: JcColors.border),
                    ),
                  ),
                ),
                for (final message in comments)
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      radius: 16,
                      child: Icon(Icons.person, size: 18),
                    ),
                    title: Text(message, style: const TextStyle(fontSize: 13)),
                    subtitle: Text(
                      context.l10n.eventDetailJustNow,
                      style: JcTextStyles.small,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _eventInfoCard(IconData icon, String label, String value) => Container(
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(color: JcColors.shadow, blurRadius: 2, offset: Offset(0, 1)),
    ],
  ),
  child: Row(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: JcColors.pillBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 20, color: JcColors.navy),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: JcTextStyles.small),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                height: 1.35,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
