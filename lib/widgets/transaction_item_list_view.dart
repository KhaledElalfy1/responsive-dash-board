import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionItemListView extends StatelessWidget {
  const TransactionItemListView({super.key});
  final List<TransactionModel> items = const [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdraw: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdraw: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) =>
          TransactionItem(transactionModel: items[index]),
      separatorBuilder: (context, index) => const SizedBox(
        height: 12,
      ),
    );
  }
}
