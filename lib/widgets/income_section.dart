import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

import 'income_chart_section.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackGroundContainer(
        child: Column(
      children: [
        AllExpensesHeader(
          title: 'Income',
        ),
        SizedBox(
          height: 20,
        ),
        IncomeChartSection()
      ],
    ));
  }
}

