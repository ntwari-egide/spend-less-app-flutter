// statefull widget for the new expense

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpenseWiget extends StatefulWidget {
  const NewExpenseWiget({super.key});

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

  /**
   * You can easily use controller to handle user inputs
   */
  final _titleController = TextEditingController();

  // we need to close the tileController after usage
  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
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
            keyboardType: TextInputType.number,
          ),
          OutlinedButton(
            onPressed: () {
              // print("Content: $expenseTitle");
              print("Content: ${_titleController.text.toLowerCase()}");
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 21, 115, 193),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20)
            ),
            child: const Text(
              "Add expense",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
