import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';
import 'package:ui/core/constants.dart';

class AchievementLineChart extends StatelessWidget {
  const AchievementLineChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            enabled: true,
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Colors.white,
              tooltipBorder: const BorderSide(color: kBlack10, width: 1.5),
              tooltipRoundedRadius: kMinRadius,
            ),
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: false,
            horizontalInterval: 1,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: kBlack10,
                strokeWidth: 1,
                dashArray: [7],
              );
            },
          ),

          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: bottomTitleWidgets,
                interval: 1,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: false,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          borderData: FlBorderData(
            show: false,
          ),
          minX: 4,
          maxX: 11,
          minY: 0,
          maxY: 5,
          lineBarsData: [
            LineChartBarData(
              spots: const [
                FlSpot(4, 1.5),
                FlSpot(5, 2.3),
                FlSpot(6.3, 0.8),
                FlSpot(7.8, 3.2),
                FlSpot(9.20, 2),
                FlSpot(10.5, 3.8),
              ],
              isCurved: true,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [kPurple1, kBlue1],
              ),
              barWidth: 2.5,
              isStrokeCapRound: true,
              dotData: FlDotData(
                // show: false,
                checkToShowDot: (spot, barData) {
                  return false;
                },
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: const Alignment(0, 1.1),
                  colors: [
                    const Color(0xffB09FFF).withOpacity(0.3),
                    const Color(0xff8D79F6).withOpacity(0.0)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      color: kBlack20,
      fontSize: 10,
    );
    Widget text;
    text = value.toInt() > 11 || value.toInt() < 4
        ? const Text('', style: style)
        : Text((value.toInt()).toString(), style: style);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
