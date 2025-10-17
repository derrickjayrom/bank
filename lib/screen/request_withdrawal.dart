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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 56),
            child: Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(99),
              ),

              child: Icon(Icons.arrow_back_ios_new_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
