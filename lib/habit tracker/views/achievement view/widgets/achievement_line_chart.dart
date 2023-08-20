import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui/core/constants.dart';
import '../../../../core/styles.dart';

class AchievementLineChart extends StatefulWidget {
  const AchievementLineChart({
    super.key,
  });

  @override
  State<AchievementLineChart> createState() => _AchievementLineChartState();
}

class _AchievementLineChartState extends State<AchievementLineChart> {
  bool avg = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 0)).then((value) {
      setState(() {
        avg = !avg;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: LineChart(
        swapAnimationCurve: Curves.easeOut,
        swapAnimationDuration: const Duration(seconds: 1),
        avg ? avgData() : mainData(),
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (touchedSpots) {
            return [
              LineTooltipItem(
                  '', Styles.mediumWeightTextStyle.copyWith(fontSize: 12),
                  children: [
                    TextSpan(children: [
                      const TextSpan(
                        text: "🔥 Burn!\n",
                      ),
                      TextSpan(
                          text:
                              "${(touchedSpots.first.y.toInt() * 10).toString()} habits",
                          style: const TextStyle(
                              color: kBlack40, fontSize: 12, height: 1.5)),
                    ]),
                  ]),
            ];
          },
          tooltipBgColor: Colors.white,
          tooltipBorder: const BorderSide(color: kBlack10, width: 1.5),
          tooltipRoundedRadius: kMinRadius,
        ),
        getTouchLineEnd: (barData, spotIndex) {
          return barData.spots[spotIndex.toInt()].y - .5;
        },
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
            show: true,
            getDotPainter: (p0, p1, p2, p3) {
              return FlDotCirclePainter(
                color: kBlue100,
                strokeColor: Colors.white,
                radius: 7,
                strokeWidth: 4,
              );
            },
            checkToShowDot: (p0, barData) {
              return (p0.x == 10.5 && p0.y == 3.8) ? true : false;
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
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (touchedSpots) {
            return [
              LineTooltipItem(
                  '', Styles.mediumWeightTextStyle.copyWith(fontSize: 12),
                  children: [
                    TextSpan(children: [
                      TextSpan(
                        text: "🔥 Burn!\n",
                      ),
                      TextSpan(
                          text:
                              "${(touchedSpots.first.y.toInt() * 10).toString()} habits",
                          style: TextStyle(
                              color: kBlack40, fontSize: 12, height: 1.5)),
                    ]),
                  ]),
            ];
          },
          tooltipBgColor: Colors.white,
          tooltipBorder: const BorderSide(color: kBlack10, width: 1.5),
          tooltipRoundedRadius: kMinRadius,
        ),
        getTouchLineEnd: (barData, spotIndex) {
          return barData.spots[spotIndex.toInt()].y - .5;
        },
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
            FlSpot(4, 3),
            FlSpot(5, 3),
            FlSpot(6.3, 3),
            FlSpot(7.8, 3),
            FlSpot(9.20, 3),
            FlSpot(10.5, 3),
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
            show: true,
            getDotPainter: (p0, p1, p2, p3) {
              return FlDotCirclePainter(
                color: kBlue100,
                strokeColor: Colors.white,
                radius: 7,
                strokeWidth: 4,
              );
            },
            checkToShowDot: (p0, barData) {
              return (p0.x == 10.5 && p0.y == 3.8) ? true : false;
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
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      color: kBlack20,
      fontSize: 10,
    );
    Widget text;
    text = Text((value.toInt()).toString(), style: style);

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }
}
