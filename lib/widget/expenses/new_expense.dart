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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Enter item name",
          ),
          keyboardType: TextInputType.number,
        )
      ],
    );
  }
}