// class widget

import 'package:flutter/material.dart';
import 'package:spend_less/model/expenses.dart';
import 'package:spend_less/widget/expenses/expenses_list.dart';
import 'package:spend_less/widget/expenses/new_expense.dart';

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
        expenseType: ExpenseType.bills),
  ];

  void _openOverlayForm() {
    print("button clicked .....");
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpenseWiget(),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 2, 69, 193),
          title: const Text(
            'Spend Less',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: _openOverlayForm,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
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
                const Text("Chart"),
                Expanded(child: ExpensesList(allExpenses: expenses)),
              ],
            ),
          ),
        ),
    );
  }
}
