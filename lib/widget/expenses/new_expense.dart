// statefull widget for the new expense

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spend_less/model/expenses.dart';

class NewExpenseWiget extends StatefulWidget {
  const NewExpenseWiget({super.key, required this.addNewExpense});

  final void Function(Expense newExpense) addNewExpense;

  @override
  State<NewExpenseWiget> createState() {
    return _NewExpensesWidgetState();
  }
}

class _NewExpensesWidgetState extends State<NewExpenseWiget> {
  // getting users input
  // String expenseTitle = '';

  // void _saveTitle(String newTitle) {
  //   expenseTitle = newTitle;
  // }

  //You can easily use controller to handle user inputs

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  // we need to close the tileController after usage
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  // pushing new item in the expenses
  void _handleSaveNewExpense() {

    // write validation if condition for these validations
    // 1: invalid price number 2: empty fields

    if (_titleController.text.isEmpty || _amountController.text.isEmpty || double.parse(_amountController.text) <= 0) {
      showDialog(context: context, builder: (ctx) => AlertDialog(
        title: const Text("Invalid Input"),
        content: const Text("Please enter valid title and amount"),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(ctx).pop();
          }, child: const Text("Okay"))
        ],
      ));
      
      return;
    }

    Expense newExpense = Expense(
        title: _titleController.text,
        amount: double.parse(_amountController.text),
        date: DateTime.now(),
        expenseType: ExpenseType.food);

    widget.addNewExpense(newExpense);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          TextField(
            maxLength: 30,
            // onChanged: _saveTitle,
            controller: _titleController,
            decoration: const InputDecoration(
              labelText: "Enter item name",
            ),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            maxLength: 30,
            // onChanged: _saveTitle,
            controller: _amountController,

            decoration: const InputDecoration(
              prefixText: '\$ ',
              labelText: "Enter price",
            ),
            keyboardType: TextInputType.number,
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: (){
                  //closing a modal
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 193, 64, 21),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20)),
                child: const Text(
                  "Close",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              OutlinedButton(
                // onPressed: () {
                //   // print("Content: $expenseTitle");
                //   print("Content: ${_titleController.text.toLowerCase()}");
                // },
                onPressed: _handleSaveNewExpense,
                style: OutlinedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 21, 115, 193),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20)),
                child: const Text(
                  "Add expense",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
