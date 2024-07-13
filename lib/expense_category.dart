import 'package:gastinhos/Expense.dart';
import 'package:gastinhos/category_type.dart';

class ExpenseCategory {
  String name;
  CategoryType type;
  List<Expense> expenseList;

  ExpenseCategory({required this.name, required this.type, required this.expenseList});
}
