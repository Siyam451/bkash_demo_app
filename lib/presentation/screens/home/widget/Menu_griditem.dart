import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../../../data/models/home_menu_item_model.dart';
import '../../send-money/screens/send_money_screen.dart';

class MenuGriditem extends StatelessWidget {
  const MenuGriditem({super.key, required this.items});

  final HomeMenuItemModel items;

  void _handleNavigation(BuildContext context) {
    switch (items.id) {
      case 1: // Send Money
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const SendMoneyScreen(),
          ),
        );
        break;

      case 2: // Mobile Recharge
      // Navigator.push(...);
        break;

      case 3: // Cash Out
      // Navigator.push(...);
        break;

      default:
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Coming soon")),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handleNavigation(context), // main navigation
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.iconCircleBg,
              shape: BoxShape.circle,
            ),
            child: Icon(
              items.iconData,
              color: items.iconColor,
              size: 20,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            items.label,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.textDark,
              fontWeight: FontWeight.w500,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}