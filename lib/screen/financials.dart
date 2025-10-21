import 'package:bank/widget/custom_backnavigator.dart';
import 'package:bank/widget/revenue_summary.dart';
import 'package:flutter/material.dart';

class Financials extends StatefulWidget {
  const Financials({super.key});

  @override
  State<Financials> createState() => _FinancialsState();
}

class _FinancialsState extends State<Financials> {
  String selectedFilter = 'All';

  final List<Map<String, dynamic>> allPayouts = [
    {
      'amount': '\$99.00',
      'period': 'Jun 1 – Jul 30',
      'date': 'Jun 30, 2025',
      'status': 'Pending',
    },
    {
      'amount': '\$99.00',
      'period': 'Jun 1 – Jul 30',
      'date': 'Jun 30, 2025',
      'status': 'Paid',
    },
    {
      'amount': '\$99.00',
      'period': 'Jun 1 – Jul 30',
      'date': 'Jun 30, 2025',
      'status': 'Paid',
    },
    {
      'amount': '\$99.00',
      'period': 'Jun 1 – Jul 30',
      'date': 'Jun 30, 2025',
      'status': 'Paid',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredList = allPayouts;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBacknavigator(),
            const SizedBox(height: 20),
            const Text(
              'Financials',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 32),

            const RevenueSummary(
              title: 'Total payouts(USD)',
              amount: '\$160.00',
              changeValue: '',
              changeLabel: '',
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 176,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Last payout',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '\$99.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                      bottom: 10,
                    ),
                    width: 176,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5FFDC),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFFE3FBD9),
                        width: 1.5,
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Next Payout',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'July 16',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Row(
              children: [
                _buildFilterButton('All'),
                const SizedBox(width: 15),
                _buildFilterButton('Last month'),
                const SizedBox(width: 15),
                _buildFilterButton('This year'),
              ],
            ),
            const SizedBox(height: 24),

            Column(
              children: List.generate(
                filteredList.length,
                (index) => Column(
                  children: [
                    _buildPayoutTile(filteredList[index]),
                    if (index != filteredList.length - 1)
                      const Divider(height: 32, color: Colors.black12),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF5FFDC),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFE3FBD9), width: 1.5),
              ),
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Tip:\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                      text: 'Payouts are processed every 30 days',
                      style: TextStyle(color: Colors.black87, height: 1.4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterButton(String label) {
    final bool isActive = selectedFilter == label;
    return GestureDetector(
      onTap: () => setState(() => selectedFilter = label),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 0.25,
          ),
        ),
      ),
    );
  }

  Widget _buildPayoutTile(Map<String, dynamic> payout) {
    final isPending = payout['status'] == 'Pending';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              payout['amount'],
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 4),
            Text(
              payout['period'],
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              payout['date'],
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              payout['status'],
              style: TextStyle(
                color: isPending ? const Color(0xFFD68E00) : Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
