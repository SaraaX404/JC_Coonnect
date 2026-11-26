import 'package:jc_connect_app/src/features/events/data/mock_events.dart';
import 'package:jc_connect_app/l10n/l10n.dart';
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
    title: context.l10n.donationTitle,
    child: ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
      children: [
        JcProgress(step: 1, total: 2, label: context.l10n.donationStepTitle),
        const SizedBox(height: 24),
        JcHeading(
          title: context.l10n.donationHeading,
          description: context.l10n.donationDescription,
        ),
        const SizedBox(height: 20),
        JcSummaryCard(
          title: widget.event.title,
          values: {
            context.l10n.commonDate: widget.event.date,
            context.l10n.commonLocation: widget.event.location,
          },
        ),
        const SizedBox(height: 20),
        Text(context.l10n.donationChooseAmount, style: JcTextStyles.label),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [...mockDonationAmounts, context.l10n.donationOtherAmount]
              .map(
                (amount) => ChoiceChip(
                  label: Text(amount),
                  selected: selectedAmount == amount,
                  onSelected: (_) => setState(() => selectedAmount = amount),
                ),
              )
              .toList(),
        ),
        if (selectedAmount == context.l10n.donationOtherAmount) ...[
          const SizedBox(height: 12),
          JcInput(
            label: context.l10n.donationAmountLabel,
            hint: context.l10n.donationAmountHint,
          ),
        ],
        const SizedBox(height: 20),
        if (donated)
          Card(
            elevation: 0,
            color: const Color(0xFFEAF8ED),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  const Icon(Icons.check_circle_outline, color: JcColors.green),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(context.l10n.donationThanksMessage),
                  ),
                ],
              ),
            ),
          )
        else
          JcButton(
            label: context.l10n.donationContinueToPayment,
            enabled: selectedAmount.isNotEmpty,
            onPressed: () => setState(() => donated = true),
          ),
      ],
    ),
  );
}
