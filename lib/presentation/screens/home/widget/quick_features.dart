import 'package:flutter/material.dart';

class QuickFeatureCard extends StatelessWidget {
  const QuickFeatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        //Title Text
        const Padding(
          padding: EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            'Quick Features',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),

        // Main Card
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [

              // Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _topItem(
                    icon: Icons.circle_outlined,
                    text: 'NAEEM Tech',
                    color: Colors.orange,
                  ),

                  _topItem(
                    text: 'VISA',
                    color: Colors.blue,
                    isBold: true,
                  ),

                  _topItem(
                    icon: Icons.lock_outline,
                    text: 'Locked',
                    color: Colors.grey,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Bottom Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _menuItem(
                    icon: Icons.local_offer,
                    title: 'My Offers',
                    bgColor: const Color(0xFFFFF5E6),
                    iconColor: Colors.orange,
                  ),

                  _menuItem(
                    icon: Icons.percent,
                    title: 'Coupons',
                    bgColor: const Color(0xFFEFF9FA),
                    iconColor: Colors.teal,
                  ),

                  _menuItem(
                    icon: Icons.emoji_events,
                    title: 'Rewards',
                    bgColor: const Color(0xFFFFFBEA),
                    iconColor: Colors.amber,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Top small item
  Widget _topItem({
    IconData? icon,
    required String text,
    required Color color,
    bool isBold = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (icon != null)
            Icon(icon, size: 16, color: color),

          if (icon != null) const SizedBox(width: 6),

          Text(
            text,
            style: TextStyle(
              color: color,
              fontWeight:
              isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  /// Bottom menu item
  Widget _menuItem({
    required IconData icon,
    required String title,
    required Color bgColor,
    required Color iconColor,
  }) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: 28),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}