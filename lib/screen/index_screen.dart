import 'package:bank/screen/home_screen.dart';
import 'package:bank/screen/stores.dart';
import 'package:bank/screen/withdrawals.dart';
import 'package:bank/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Withdrawals(date: now),
          Stores(),
          Container(color: Colors.white),
          Container(color: Colors.amber),
        ],
      ),

      bottomNavigationBar: SafeArea(
        top: false,
        child: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}
