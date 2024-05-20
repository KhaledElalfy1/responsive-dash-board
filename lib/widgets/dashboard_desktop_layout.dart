import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 24,
            ),
            child: AllExpensesAndQuickInvoice(),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            MyCardAndTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: IncomeSection()),
          ],
        ))
      ],
    );
  }
}
