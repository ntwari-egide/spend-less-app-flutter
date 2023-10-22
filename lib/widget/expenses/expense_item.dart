// expense items

import 'package:flutter/material.dart';
import 'package:spend_less/model/expenses.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(expense.title),
    );
  }
}
