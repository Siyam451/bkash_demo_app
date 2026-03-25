import 'package:bkashdemoapp/presentation/screens/send-money/screens/send_money_recieve_screen.dart';
import 'package:flutter/material.dart';
import '../../../../core/app_colors.dart';
import '../widgets/amount_field.dart';
import '../widgets/balance_info.dart';
import '../widgets/next_button.dart';
import '../widgets/recieve_info.dart';

class SendMoneyAmountScreen extends StatefulWidget {
  final String receiverNumber;
  final double availableBalance;

  const SendMoneyAmountScreen({
    super.key,
    required this.receiverNumber,
    required this.availableBalance,
  });

  @override
  State<SendMoneyAmountScreen> createState() =>
      _SendMoneyAmountScreenState();
}

class _SendMoneyAmountScreenState
    extends State<SendMoneyAmountScreen> {

  final TextEditingController _amountController =
  TextEditingController();

  double enteredAmount = 0;

  @override
  void initState() {
    super.initState();
    _amountController.addListener(() {
      setState(() {
        enteredAmount =
            double.tryParse(_amountController.text) ?? 0;
      });
    });
  }

  bool get isBalanceEnough =>
      enteredAmount <= widget.availableBalance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text("Send Money"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ReceiverInfoWidget(
            receiverNumber: widget.receiverNumber,
          ),
          AmountFieldWidget(
            controller: _amountController,
          ),
          BalanceInfoWidget(
            availableBalance: widget.availableBalance,
            isBalanceEnough: isBalanceEnough,
          ),
          const Spacer(),
          NextButtonWidget(
            isEnabled:
            enteredAmount > 0 && isBalanceEnough,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      SendMoneyReviewScreen(
                        receiverNumber:
                        widget.receiverNumber,
                        amount: enteredAmount,
                        availableBalance:
                        widget.availableBalance,
                      ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}