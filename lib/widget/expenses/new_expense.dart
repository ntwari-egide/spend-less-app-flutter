// statefull widget for the new expense

import 'package:flutter/material.dart';

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
    return const Column(
      children: [
         Text("Check the form of new expense..."),
      ],
    );
  }
}