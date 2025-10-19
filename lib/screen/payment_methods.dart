import 'package:bank/widget/custom_backnavigator.dart';
import 'package:bank/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
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
                    'Payment Methods',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),

                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
                      width: double.infinity,
                      height: 244,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('213340546'),
                                  Text('Bank (UBA PLCs)'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Mustapha Diyaol-Haqq'),
                                  Text('Primary'),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.001),
                              color: Color(0xFFF2F2F2),
                            ),
                            height: 0,
                            width: double.infinity,
                          ),
                          SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('213340546'),
                                  Text('Bank (UBA PLCs)'),
                                ],
                              ),
                              Column(children: [Text('Mustapha Diyaol-Haqq')]),
                            ],
                          ),
                          SizedBox(height: 32),
                          CustomActionButton(
                            label: 'Add new',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
