import 'package:bank/widget/custom_backnavigator.dart';
import 'package:bank/widget/revenue_summary.dart';
import 'package:flutter/material.dart';

class Financials extends StatefulWidget {
  const Financials({super.key});

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBacknavigator(),
            SizedBox(height: 20),
            const Text(
              'Financials',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 32),
            RevenueSummary(
              title: 'Total payouts(USD)',
              amount: '\$160.00',
              changeValue: '',
              changeLabel: '',
            ),
          ],
        ),
      ),
    );
  }
}
