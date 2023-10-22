import 'dart:core';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

// adding expense type enum
enum ExpenseType {
  food,
  travel,
  bills,
  transport,
  entertainment,
  leisure,
  work,
}

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.expenseType,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final ExpenseType expenseType;
}
