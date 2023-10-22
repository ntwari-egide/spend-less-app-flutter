import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

// adding expense type enum
enum ExpenseType {
  food,
  travel,
  bills,
  entertainment,
  leisure,
  work,
}

const expenseTypeIcon = {
  ExpenseType.food: Icons.food_bank,
  ExpenseType.travel: Icons.flight_class_outlined,
  ExpenseType.bills : Icons.money_outlined
};


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


  // implementing the getter function
  String get getFormatedDate {
    return formatter.format(date);
  }
}
