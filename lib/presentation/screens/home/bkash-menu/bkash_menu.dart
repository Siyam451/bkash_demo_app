import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class BkashMenuDrawer extends StatelessWidget {
  const BkashMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,

      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // ---------- Header ----------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    'bKash Menu',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: const Text(
                      'Eng  বাংলা',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // ---------- AVA Card ----------
              Container(
                padding: const EdgeInsets.all(12),

                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [

                    Container(
                      width: 36,
                      height: 36,

                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(6),
                      ),

                      child: const Icon(
                        Icons.smart_toy,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: const [

                        Text(
                          'AVA  BETA',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 2),

                        Text(
                          'Active virtual Assistant',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.textGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ---------- Menu Items ----------
              _menuItem(Icons.home, 'Home'),
              _menuItem(Icons.bar_chart, 'Statements'),
              _menuItem(Icons.warning_amber, 'Limit'),
              _menuItem(Icons.headset_mic, 'Customer Service'),
              _menuItem(Icons.map, 'bKash Map'),
              _menuItem(Icons.info_outline, 'Information Update'),
              _menuItem(Icons.person_outline, 'Nominee Update'),

              _menuItem(
                Icons.explore,
                'Discover bKash',
                isNew: true,
              ),

              _menuItem(Icons.group_add, 'Refer bKash App'),

              const Spacer(),

              const Divider(),

              _menuItem(
                Icons.logout,
                'Log out',
                isLogout: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Menu Item Widget ----------
  Widget _menuItem(
      IconData icon,
      String title, {
        bool isNew = false,
        bool isLogout = false,
      }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: Icon(
        icon,
        color: isLogout ? Colors.red : AppColors.textDark,
      ),

      title: Row(
        children: [

          Text(
            title,
            style: TextStyle(
              color: isLogout
                  ? Colors.red
                  : AppColors.textDark,
              fontWeight: FontWeight.w500,
            ),
          ),

          if (isNew)
            Container(
              margin: const EdgeInsets.only(left: 6),
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 2,
              ),

              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),

              child: const Text(
                'New!',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),

      onTap: () {
        // Handle navigation here
      },
    );
  }
}