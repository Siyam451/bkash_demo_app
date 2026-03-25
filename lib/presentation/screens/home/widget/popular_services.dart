import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
class PopularServicesSection extends StatelessWidget {
  const PopularServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Popular Services",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 90,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              _serviceItem(Icons.phone_android, "Recharge"),
              _serviceItem(Icons.receipt, "Pay Bill"),
              _serviceItem(Icons.card_giftcard, "Offers"),
              _serviceItem(Icons.account_balance, "Bank"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _serviceItem(IconData icon, String title) {
    return Container(
      width: 80,
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: Icon(icon, color: AppColors.primary),
          ),
          SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}