// expenses list class

import 'package:flutter/material.dart';
import 'package:spend_less/model/expenses.dart';
import 'package:spend_less/widget/expenses/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.allExpenses});

  final List<Expense> allExpenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allExpenses.length,
      itemBuilder: (ctx, index) => ExpenseItems(expense: allExpenses[index]),
    );
  }
}
