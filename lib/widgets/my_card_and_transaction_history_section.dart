import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackGroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          color: Color(0xffF1F1F1),
          height: 20,
        ),
        TransactionHistory(),
      ],
    ));
  }
}
