// class widget

import 'package:flutter/material.dart';

class ExpensesWidget extends StatefulWidget {

  const ExpensesWidget({super.key});

  @override
  State<ExpensesWidget> createState() {
    return _ExpensesWidgetState();
  }
}

class _ExpensesWidgetState extends State<ExpensesWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( home:  Scaffold(body: Text("new app"),),);
  }
}