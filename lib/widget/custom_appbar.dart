import 'package:flutter/material.dart';

/// 🟢 Main Appbar Widget
class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WelcomeText(userName: 'Mustapha'),
        NotificationIcon(notificationCount: 2),
      ],
    );
  }
}

class WelcomeText extends StatefulWidget {
  final String userName;

  const WelcomeText({super.key, required this.userName});

  @override
  State<WelcomeText> createState() => _WelcomeTextState();
}

class _WelcomeTextState extends State<WelcomeText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Welcome back\n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.4,
            ),
          ),
          TextSpan(
            text: '${widget.userName}!',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationIcon extends StatefulWidget {
  final int notificationCount;
  final VoidCallback? onTap;

  const NotificationIcon({
    super.key,
    required this.notificationCount,
    this.onTap,
  });

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFF2F2F2), width: 2),
            ),
            child: const Icon(Icons.notifications_none_rounded, size: 20),
          ),
        ),
        if (widget.notificationCount > 0)
          Positioned(
            top: 4,
            right: 4,
            child: Container(
              height: 14,
              width: 14,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Text(
                  '${widget.notificationCount}',
                  style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
