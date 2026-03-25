import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
class AddMoneySection extends StatelessWidget {
  const AddMoneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.grey.shade200,
          )
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.account_balance_wallet, color: AppColors.primary),
          SizedBox(width: 10),
          Text(
            "Add Money from Bank",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16)
        ],
      ),
    );
  }
}