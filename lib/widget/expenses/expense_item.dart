// expense items

import 'package:flutter/material.dart';
import 'package:spend_less/model/expenses.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(expenseTypeIcon[expense.expenseType]),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(expense.getFormatedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
