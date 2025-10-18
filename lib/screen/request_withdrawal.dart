import 'package:bank/screen/payment_methods.dart';
import 'package:bank/widget/custom_backnavigator.dart';
import 'package:bank/widget/custom_currencyfield.dart';
import 'package:flutter/material.dart';

class RequestWithdrawal extends StatefulWidget {
  const RequestWithdrawal({super.key});

  @override
  State<RequestWithdrawal> createState() => _RequestWithdrawalState();
}

class _RequestWithdrawalState extends State<RequestWithdrawal> {
  final Map<String, String> countryCurrencyMap = {
    'USA': '\$',
    'UK': '£',
    'Europe': '€',
    'Ghana': '₵',
    'Nigeria': '₦',
    'Japan': '¥',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 56, left: 24),
              child: CustomBacknavigator(),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Request withdrawal',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),

                  CustomCurrencyField(
                    title: 'Amount to withdraw',
                    balanceText: '\$9,476.00',
                    countryCurrencyMap: countryCurrencyMap,
                    onChanged: (amount, country, symbol) {
                      debugPrint(
                        'Amount: $amount | Country: $country | Symbol: $symbol',
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PaymentMethods()),
                  );
                },
                child: Text(
                  'Payment Methods',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    letterSpacing: 1.25,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF666666),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
