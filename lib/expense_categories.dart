import 'package:flutter/material.dart';
import 'package:gastinhos/expense_category.dart';

final expenseCategories = {
  ExpenseCategoryType.shopping: ExpenseCategory(
    name: 'Shopping',
    icon: Icons.shopping_cart,
    expenseList: [],
  ),
  ExpenseCategoryType.leisure: ExpenseCategory(
    name: 'Leisure',
    icon: Icons.gamepad,
    expenseList: [],
  ),
  ExpenseCategoryType.food: ExpenseCategory(
    name: 'Food',
    icon: Icons.icecream,
    expenseList: [],
  ),
  ExpenseCategoryType.house: ExpenseCategory(
    name: 'House',
    icon: Icons.house,
    expenseList: [],
  ),
  ExpenseCategoryType.clothes: ExpenseCategory(
    name: 'Clothes',
    icon: Icons.discount,
    expenseList: [],
  ),
  ExpenseCategoryType.other: ExpenseCategory(
    name: 'Other',
    icon: Icons.more,
    expenseList: [],
  ),
};
