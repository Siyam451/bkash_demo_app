import 'package:flutter/material.dart';
import '../../../../core/app_colors.dart';

class SendMoneyAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SendMoneyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      title: const Text("Send Money"),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
//reciver widget
class ReceiverSection extends StatelessWidget {
  final String receiverNumber;

  const ReceiverSection({
    super.key,
    required this.receiverNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 22,
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 12),
          Text(
            receiverNumber,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
//amount widget
class AmountSection extends StatelessWidget {
  final double amount;
  final double charge;

  const AmountSection({
    super.key,
    required this.amount,
    required this.charge,
  });

  double get total => amount + charge;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _rowItem("Amount", "৳${amount.toStringAsFixed(2)}"),
          const SizedBox(height: 8),
          _rowItem("Charge", "+ ৳${charge.toStringAsFixed(2)}"),
          const Divider(height: 20),
          _rowItem(
            "Total",
            "৳${total.toStringAsFixed(2)}",
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _rowItem(String title, String value,
      {bool isBold = false}) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
              fontWeight:
              isBold ? FontWeight.bold : FontWeight.normal,
            )),
        Text(value,
            style: TextStyle(
              fontWeight:
              isBold ? FontWeight.bold : FontWeight.normal,
            )),
      ],
    );
  }
}

//reference field widget
class ReferenceField extends StatelessWidget {
  const ReferenceField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: const TextField(
        maxLength: 50,
        decoration: InputDecoration(
          hintText: "Add a reference (optional)",
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
//pin field widget

class PinField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onChanged;

  const PinField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        obscureText: true,
        maxLength: 5,
        decoration: const InputDecoration(
          hintText: "Enter your PIN",
          counterText: "",
          prefixIcon: Icon(Icons.lock),
          border: InputBorder.none,
        ),
        onChanged: (_) => onChanged(),
      ),
    );
  }
}

//confirm button widget

class ConfirmButton extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onPressed;

  const ConfirmButton({
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
          padding:
          const EdgeInsets.symmetric(vertical: 14),
        ),
        child: const Text(
          "Confirm",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}