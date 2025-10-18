import 'package:bank/widget/custom_backnavigator.dart';
import 'package:bank/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class RequestWithdrawal extends StatefulWidget {
  const RequestWithdrawal({super.key});

  @override
  State<RequestWithdrawal> createState() => _RequestWithdrawalState();
}

class _RequestWithdrawalState extends State<RequestWithdrawal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 56, left: 24),
              child: CustomBacknavigator(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Request withdrawal',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  CustomTextfield(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
