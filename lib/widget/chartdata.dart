import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenueChart extends StatelessWidget {
  const RevenueChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: LineChart(_buildChartData()),
    );
  }

  LineChartData _buildChartData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 2000,
        getDrawingHorizontalLine: (value) => FlLine(
          color: Colors.grey.withOpacity(0.2),
          strokeWidth: 1,
        ),
      ),
      titlesData: FlTitlesData(
        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (value, meta) {
              if (value % 2000 != 0) return Container();
              return Text(
                "${(value / 1000).toInt()}K",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
        ),
        bottomTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 10,
      minY: 0,
      maxY: 10000,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 9500),
            FlSpot(1, 8800),
            FlSpot(2, 7200),
            FlSpot(3, 5000),
            FlSpot(4, 5200),
            FlSpot(5, 4700),
            FlSpot(6, 3000),
            FlSpot(7, 3200),
            FlSpot(8, 2100),
            FlSpot(9, 1500),
          ],
          isCurved: true,
          color: const Color(0xFFFF6B6B),
          barWidth: 4,
          isStrokeCapRound: true,
          belowBarData: BarAreaData(show: false),
          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, barData, index) {
              if (index == 4) {
                return FlDotCirclePainter(
                  radius: 5,
                  color: Colors.white,
                  strokeColor: const Color(0xFFFF6B6B),
                  strokeWidth: 2,
                );
              }
              return FlDotCirclePainter(
                radius: 0,
                color: Colors.transparent,
              );
            },
          ),
        ),
      ],
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((spot) {
              if (spot.x == 4) {
                return LineTooltipItem(
                  "\$5,265.36",
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                );
              }
              return null;
            }).whereType<LineTooltipItem>().toList();
          },
        ),
      ),
    );
  }
}
