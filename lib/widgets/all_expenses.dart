import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: const Column(
            children: [
              AllExpensesHeader(),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: AllExpensesItem(
                      allExpensesItemModel: AllExpensesItemModel(
                          image: Assets.imagesIncome,
                          title: 'Income',
                          date: 'April 2022',
                          price: r'$20,129'),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: AllExpensesItem(
                      allExpensesItemModel: AllExpensesItemModel(
                          image: Assets.imagesIncome,
                          title: 'Income',
                          date: 'April 2022',
                          price: r'$20,129'),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: AllExpensesItem(
                      allExpensesItemModel: AllExpensesItemModel(
                          image: Assets.imagesIncome,
                          title: 'Income',
                          date: 'April 2022',
                          price: r'$20,129'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
