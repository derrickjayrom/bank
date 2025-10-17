import 'package:bank/screen/request_withdrawal.dart';
import 'package:bank/widget/avaliable_withdrawal.dart';
import 'package:bank/widget/custom_appbar.dart';
import 'package:bank/widget/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final now = DateTime.now();
final formattedDate = DateFormat("MMM d, yyyy").format(now);

class Withdrawals extends StatefulWidget {
  final DateTime date;
  const Withdrawals({super.key, required this.date});

  @override
  State<Withdrawals> createState() => _WithdrawalsState();
}

class _WithdrawalsState extends State<Withdrawals> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat("MMM d, yyyy").format(widget.date);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              const SizedBox(height: 36),
              AvailableWithdrawalCard(
                title: "Available to withdraw (USD)",
                amount: "\$751.00",
                onRequestTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RequestWithdrawal(),
                    ),
                  );
                },
              ),
              SizedBox(height: 24),
              Text(
                'Withdrawals',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 14),
              //transaction Tile
              TransactionTile(
                amount: 'US\$10',
                formattedDate: formattedDate,
                status: 'Pending',
              ),
              SizedBox(height: 4),
              TransactionTile(
                amount: 'US\$10',
                formattedDate: formattedDate,
                status: 'Pending',
              ),
              TransactionTile(
                amount: 'US\$10',
                formattedDate: formattedDate,
                status: 'Pending',
              ),
              SizedBox(height: 4),
              TransactionTile(
                amount: 'US\$10',
                formattedDate: formattedDate,
                status: 'Pending',
              ),
              SizedBox(height: 4),
              TransactionTile(
                amount: 'US\$10',
                formattedDate: formattedDate,
                status: 'Pending',
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
