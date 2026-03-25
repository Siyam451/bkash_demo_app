import 'package:flutter/material.dart';

class AmountFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const AmountFieldWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
          horizontal: 16, vertical: 30),
      child: Column(
        children: [
          const Text(
            "Amount",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            decoration: const InputDecoration(
              hintText: "৳0",
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}