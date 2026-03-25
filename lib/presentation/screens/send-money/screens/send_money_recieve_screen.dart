import 'package:flutter/material.dart';

import '../widgets/send_money_review_screen_widgets.dart';


class SendMoneyReviewScreen extends StatefulWidget {
  final String receiverNumber;
  final double amount;
  final double availableBalance;

  const SendMoneyReviewScreen({
    super.key,
    required this.receiverNumber,
    required this.amount,
    required this.availableBalance,
  });

  @override
  State<SendMoneyReviewScreen> createState() =>
      _SendMoneyReviewScreenState();
}

class _SendMoneyReviewScreenState
    extends State<SendMoneyReviewScreen> {

  final TextEditingController _pinController =
  TextEditingController();

  double get charge => 0.0;
  double get total => widget.amount + charge;

  bool get isPinValid => _pinController.text.length == 5;

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: const SendMoneyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReceiverSection(
                receiverNumber: widget.receiverNumber),
            AmountSection(
                amount: widget.amount,
                charge: charge),
            const ReferenceField(),
            PinField(
              controller: _pinController,
              onChanged: () => setState(() {}),
            ),
            ConfirmButton(
              isEnabled: isPinValid,
              onPressed: () {
                // Navigate to success screen
              },
            ),
          ],
        ),
      ),
    );
  }
}