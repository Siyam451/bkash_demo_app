import 'package:flutter/material.dart';

class ReceiverInfoWidget extends StatelessWidget {
  final String receiverNumber;

  const ReceiverInfoWidget({
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