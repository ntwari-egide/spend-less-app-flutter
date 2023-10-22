// class widget

import 'package:flutter/material.dart';
import 'package:spend_less/model/expenses.dart';
import 'package:spend_less/widget/expenses/expenses_list.dart';

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
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [ Color.fromARGB(255, 79, 188, 82),
            //    Color.fromARGB(255, 255, 242, 121)],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight
            // ),
          ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Title"),
                  Expanded(child: ExpensesList(allExpenses: expenses)),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
