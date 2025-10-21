import 'package:bank/screen/financials.dart';
import 'package:bank/screen/subscriptions.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 64),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(color: Color(0xFFF2F2F2)),
                ),
              ),
              height: 80,
              width: double.infinity,

              child: Row(
                children: [
                  Image.asset('assets/icons/avatar.png'),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mustapha Diyoal-Haqq',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'diyaolhaqq@gmail.com',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              height: 50,
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.edit, size: 16),
                      SizedBox(width: 8),
                      Text(
                        'Edit profile',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Financials()),
                );
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  border: BoxBorder.fromLTRB(
                    bottom: BorderSide(color: Color(0xFFF2F2F2)),
                  ),
                ),
                height: 50,
                width: double.infinity,

                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.receipt, size: 16),
                        SizedBox(width: 8),
                        Text(
                          'Financials',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.25,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Subscriptions()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 0,
                  left: 16,
                  right: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                height: 50,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.subscriptions_outlined, size: 16),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Subscriptions',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(color: Color(0xFFF2F2F2)),
                ),
              ),
              height: 50,
              width: double.infinity,

              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.notifications_active_outlined, size: 16),
                      SizedBox(width: 8),
                      Text(
                        'Notification settings',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.25,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              decoration: BoxDecoration(
                color: Colors.white,

                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(color: Color(0xFFF2F2F2)),
                ),
              ),
              height: 50,
              width: double.infinity,

              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.edit_attributes, size: 16),
                      SizedBox(width: 8),
                      Text(
                        'Edit login methods',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.25,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                border: BoxBorder.fromLTRB(
                  bottom: BorderSide(color: Color(0xFFF2F2F2)),
                ),
              ),
              height: 50,
              width: double.infinity,

              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_forward, size: 16),
                      SizedBox(width: 8),
                      Text(
                        'Sign out',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.25,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
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
