import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 22,
          title: activeIndex == 0 ? 'Other' : '22%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          color: const Color(0xffE2DECD),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 20,
          title: activeIndex == 1 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          color: const Color(0xff064061),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          title: activeIndex == 2 ? 'Design product' : '25%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 40,
          title: activeIndex == 3 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          color: const Color(0xff208CC8),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
