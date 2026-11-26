import 'package:jc_connect_app/src/core/theme/jc_colors.dart';
import 'package:jc_connect_app/src/core/theme/jc_text_styles.dart';
import 'package:jc_connect_app/src/core/widgets/jc_button.dart';
import 'package:jc_connect_app/src/core/widgets/jc_heading.dart';
import 'package:jc_connect_app/src/core/widgets/jc_input.dart';
import 'package:jc_connect_app/src/core/widgets/jc_progress.dart';
import 'package:jc_connect_app/src/core/widgets/jc_scaffold.dart';
import 'package:jc_connect_app/src/core/widgets/jc_summary_card.dart';
import 'package:jc_connect_app/src/features/events/domain/event_record.dart';
import 'package:material_ui/material_ui.dart';

class EventDonationScreen extends StatefulWidget {
  const EventDonationScreen({super.key, required this.event});
  final EventRecord event;

  @override
  State<EventDonationScreen> createState() => _EventDonationScreenState();
}

class _EventDonationScreenState extends State<EventDonationScreen> {
  String selectedAmount = '';
  bool donated = false;

  @override
  Widget build(BuildContext context) => JcScaffold(
    title: 'Donate to event',
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        const JcProgress(step: 1, total: 2, label: 'Donation'),
        const SizedBox(height: 24),
        const JcHeading(
          title: 'Support this event',
          description:
              'Every contribution helps JC keep community events accessible.',
        ),
        const SizedBox(height: 20),
        JcSummaryCard(
          title: widget.event.title,
          values: {
            'Date': widget.event.date,
            'Location': widget.event.location,
          },
        ),
        const SizedBox(height: 20),
        const Text('Choose an amount', style: JcTextStyles.label),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: ['J\$1,000', 'J\$2,500', 'J\$5,000', 'Other']
              .map(
                (amount) => ChoiceChip(
                  label: Text(amount),
                  selected: selectedAmount == amount,
                  onSelected: (_) => setState(() => selectedAmount = amount),
                ),
              )
              .toList(),
        ),
        if (selectedAmount == 'Other') ...[
          const SizedBox(height: 12),
          const JcInput(label: 'Amount', hint: 'Enter amount'),
        ],
        const SizedBox(height: 20),
        if (donated)
          const Card(
            elevation: 0,
            color: Color(0xFFEAF8ED),
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Row(
                children: [
                  Icon(Icons.check_circle_outline, color: JcColors.green),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text('Thank you. Your donation has been recorded.'),
                  ),
                ],
              ),
            ),
          )
        else
          JcButton(
            label: 'Continue to payment',
            enabled: selectedAmount.isNotEmpty,
            onPressed: () => setState(() => donated = true),
          ),
      ],
    ),
  );
}
