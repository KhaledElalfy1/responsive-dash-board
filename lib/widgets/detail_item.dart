import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: incomeDetailsModel.color,
        radius: 8,
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
