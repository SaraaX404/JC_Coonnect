import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/utils/navigation.dart';
import 'package:jc_connect_app/src/core/widgets/jc_panel.dart';
import 'package:jc_connect_app/src/core/widgets/jc_pill.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:jc_connect_app/src/features/events/presentation/event_donation_screen.dart';
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
  final comments = <String>['Can’t wait to see the new robot in action.'];

  @override
  void dispose() {
    comment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Event details',
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
                  'Date & time',
                  '${widget.event.date} · ${widget.event.time} EST',
                ),
                const SizedBox(height: 8),
                _eventInfoCard(
                  Icons.location_on_outlined,
                  'Location',
                  widget.event.location,
                ),
                const SizedBox(height: 8),
                _eventInfoCard(
                  Icons.groups_outlined,
                  'Organizer',
                  'JC Robotics Club & IEEE Student Branch',
                ),
                const SizedBox(height: 18),
                const Text(
                  'About this event',
                  style: TextStyle(
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
                  onPressed: () =>
                      showMessage(context, 'Event added to your calendar.'),
                  icon: const Icon(Icons.calendar_month_outlined),
                  label: const Text('Add to Calendar'),
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
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Are you going?',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          JcPill('● Open to All'),
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
                          label: Text(joined ? 'You’re going' : 'Join Now'),
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
                              '${widget.event.going} going',
                              style: JcTextStyles.small,
                            ),
                          ),
                          TextButton(
                            onPressed: () => setState(() => joined = true),
                            child: const Text('See all  ›'),
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
                      const Row(
                        children: [
                          Icon(
                            Icons.volunteer_activism_outlined,
                            color: JcColors.navy,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Community booster',
                              style: TextStyle(
                                color: JcColors.navy,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text('60% Funded', style: JcTextStyles.small),
                        ],
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        'Help Fund This Event',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Robotics kits, arena setup & competition entry fees.',
                        style: JcTextStyles.small,
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        children: [
                          Text('\$1,200 raised'),
                          Spacer(),
                          Text('\$2,000 goal', style: JcTextStyles.small),
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
                        onPressed: () => pushScreen(
                          context,
                          EventDonationScreen(event: widget.event),
                        ),
                        icon: const Icon(
                          Icons.volunteer_activism_outlined,
                          size: 18,
                        ),
                        label: const Text('Donate'),
                        style: FilledButton.styleFrom(
                          backgroundColor: JcColors.gold,
                          foregroundColor: JcColors.navyDark,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Reactions',
                  style: TextStyle(
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
                const Text(
                  'Comments',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: comment,
                  minLines: 1,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Add a comment…',
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
                    subtitle: const Text('Just now', style: JcTextStyles.small),
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
