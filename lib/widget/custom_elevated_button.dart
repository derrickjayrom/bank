import 'package:flutter/material.dart';

class CustomActionButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  State<CustomActionButton> createState() => _CustomActionButtonState();
}

class _CustomActionButtonState extends State<CustomActionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(306, 48),
        backgroundColor: const Color(0xFFFF2C5E),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.25,
        ),
      ),
    );
  }
}
