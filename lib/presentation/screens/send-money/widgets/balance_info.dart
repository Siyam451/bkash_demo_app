import 'package:flutter/material.dart';

class BalanceInfoWidget extends StatelessWidget {
  final double availableBalance;
  final bool isBalanceEnough;

  const BalanceInfoWidget({
    super.key,
    required this.availableBalance,
    required this.isBalanceEnough,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Text(
        "Usable Balance: ৳${availableBalance.toStringAsFixed(2)}",
        style: TextStyle(
          fontSize: 14,
          color:
          isBalanceEnough ? Colors.black : Colors.red,
        ),
      ),
    );
  }
}