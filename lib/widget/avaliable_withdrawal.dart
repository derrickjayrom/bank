import 'package:flutter/material.dart';

class AvailableWithdrawalCard extends StatefulWidget {
  final String title;
  final String amount;
  final VoidCallback? onRequestTap;

  const AvailableWithdrawalCard({
    super.key,
    required this.title,
    required this.amount,
    this.onRequestTap,
  });

  @override
  State<AvailableWithdrawalCard> createState() =>
      _AvailableWithdrawalCardState();
}

class _AvailableWithdrawalCardState extends State<AvailableWithdrawalCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      width: 354,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),

        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          // Top section
          SizedBox(
            height: 126,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.amount,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Divider
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.001),
              color: Color(0xFFF2F2F2),
            ),
            height: 0,
            width: double.infinity,
          ),

          SizedBox(height: 8),

          // Bottom section
          InkWell(
            onTap: widget.onRequestTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.black87,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Request withdrawal",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.chevron_right, color: Color(0xFF434343), size: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
