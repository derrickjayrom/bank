import 'package:bank/widget/chartdata.dart';
import 'package:bank/widget/custom_appbar.dart';
import 'package:bank/widget/revenue_summary.dart';
import 'package:bank/widget/stat_container.dart';
import 'package:bank/widget/summary_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedPeriod = "3d";
  final List<String> periods = ["24h", "3d", "1w", "2w", "1m", "3m"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              const CustomAppbar(),
              const SizedBox(height: 36),

              
              RevenueSummary(
                title: "Available to withdraw",
                amount: '\$9,476.00',
                changeValue: '\+\$48.2',
                changeLabel: 'this week.',
              ),

              const SizedBox(height: 28),

              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  StatCard(
                    title: 'Orders',
                    value: '314',
                    changeText: '+23',
                    subText: 'this week',
                  ),
                  StatCard(
                    title: 'Gross profit',
                    value: '\$824.00',
                    changeText: '-\$42.2',
                    subText: 'this week',
                  ),
                  StatCard(title: 'Orders', value: '\$0.00'),
                  StatCard(
                    title: 'Next payout',
                    value: 'July 16',

                    backgroundColor: Color(0xFFF5FFDC),
                  ),
                ],
              ),

              const SizedBox(height: 36),

              /// Chart Section (now after containers)
              SizedBox(height: 240, child: RevenueChart()),

              const SizedBox(height: 24),

              /// Time Selector Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: periods.map((period) {
                  final isSelected = selectedPeriod == period;
                  return GestureDetector(
                    onTap: () => setState(() => selectedPeriod = period),
                    child: Container(
                      height: 36,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          if (!isSelected)
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 4,
                            ),
                        ],
                      ),
                      child: Text(
                        period,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontWeight: isSelected
                              ? FontWeight.w700
                              : FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

              const SizedBox(height: 36),

              Row(
                children: [
                  Expanded(
                    child: SummaryCard(
                      value: '50+',
                      label: 'Orders to fulfill',
                      icon: Icons.inventory,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: SummaryCard(
                      value: '4',
                      label: 'High risk orders',
                      icon: Icons.inventory,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: SummaryCard(
                      value: '50+',
                      label: 'Chargebacks',
                      icon: Icons.inventory,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
