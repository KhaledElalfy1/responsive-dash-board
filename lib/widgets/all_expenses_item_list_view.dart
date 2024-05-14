import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items .map((e) =>  Expanded(child: AllExpensesItem(allExpensesItemModel: e))) .toList()

      children: items.asMap().entries.map((e) {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              index = e.key;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: e.key == 1 ? 12.0 : 0),
            child: AllExpensesItem(
              allExpensesItemModel: e.value,
              isSelected: e.key == index,
            ),
          ),
        ));
      }).toList(),
    );
  }
}
