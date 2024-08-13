import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gastinhos/Expense.dart';

class ExpenseCategory {
  String name;
  IconData icon;
  List<Expense> expenseList;

  ExpenseCategory({required this.name, required this.icon, required this.expenseList});
}

enum ExpenseCategoryType {
  shopping,
  leisure,
  food,
  house,
  clothes,
  other,
}
