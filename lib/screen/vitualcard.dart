import 'package:flutter/material.dart';

class Vitualcard extends StatefulWidget {
  const Vitualcard({super.key});

  @override
  State<Vitualcard> createState() => _VitualcardState();
}

class _VitualcardState extends State<Vitualcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Card services',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0,
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFF2F2F2),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.add, color: Colors.black, size: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 29),
              Stack(
                children: [
                  Center(child: Image.asset('assets/icons/frame2.png')),
                  Image.asset('assets/icons/frame1.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
