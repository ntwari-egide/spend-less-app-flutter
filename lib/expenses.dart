// class widget

import 'package:flutter/material.dart';
import 'package:spend_less/model/expenses.dart';

class ExpensesWidget extends StatefulWidget {
  const ExpensesWidget({super.key});

  @override
  State<ExpensesWidget> createState() {
    return _ExpensesWidgetState();
  }
}

class _ExpensesWidgetState extends State<ExpensesWidget> {
  // defining dummy data
  final List<Expense> expenses = [
    Expense(
        title: 'Chicken',
        amount: 32,
        date: DateTime.now(),
        expenseType: ExpenseType.food),
    Expense(
        title: 'Pepsi',
        amount: 23,
        date: DateTime.now(),
        expenseType: ExpenseType.transport),
  ];

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Text("new app"),
      ),
    );
  }
}
