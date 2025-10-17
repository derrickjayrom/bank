import 'package:flutter/material.dart';

class RevenueSummary extends StatelessWidget {
  final String title;
  final String amount;
  final String changeValue;
  final String changeLabel;
  final Color changeColor;

  const RevenueSummary({
    super.key,
    required this.title,
    required this.amount,
    required this.changeValue,
    required this.changeLabel,
    this.changeColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.black54),
        ),
        const SizedBox(height: 8),
        Text(
          amount,
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              changeValue,
              style: TextStyle(
                fontSize: 14,
                color: changeColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              changeLabel,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xFF8A8A8A),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
