import 'package:flutter/material.dart';

class CustomBacknavigator extends StatefulWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final IconData icon;
  final EdgeInsetsGeometry? padding;

  const CustomBacknavigator({
    super.key,
    this.onPressed,
    this.backgroundColor = const Color(0xFFF2F2F2),
    this.iconColor = Colors.black,
    this.size = 44,
    this.icon = Icons.arrow_back_ios_new_rounded,
    this.padding,
  });

  @override
  State<CustomBacknavigator> createState() => _CustomBacknavigatorState();
}

class _CustomBacknavigatorState extends State<CustomBacknavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size,
      width: widget.size,
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(99),
      ),
      child: IconButton(
        onPressed: widget.onPressed ?? () => Navigator.pop(context),
        icon: Icon(widget.icon, color: widget.iconColor, size: 20),
        tooltip: 'Back',
      ),
    );
  }
}
