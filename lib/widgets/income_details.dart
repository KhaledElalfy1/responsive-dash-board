import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/detail_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  final List<IncomeDetailsModel> items = const [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    IncomeDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    IncomeDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => DetailItem(incomeDetailsModel: e)).toList(),
    );
  }
}
