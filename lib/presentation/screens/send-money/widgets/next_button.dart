import 'package:flutter/material.dart';
import '../../../../core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onPressed;

  const NextButtonWidget({
    super.key,
    required this.isEnabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.symmetric(
              vertical: 14),
        ),
        child: const Text(
          "Next",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}