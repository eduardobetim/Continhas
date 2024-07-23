import 'package:flutter/material.dart';
import 'package:gastinhos/category_type.dart';
import 'package:gastinhos/expense_category.dart';

class ExpansibleWidget extends StatelessWidget {
  const ExpansibleWidget({super.key, required this.category});

  final ExpenseCategory category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        tilePadding: const EdgeInsets.only(top: 2, bottom: 2,left: 16, right: 16,),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              color: Colors.black87,
              categoryTypeIcons[category.type],
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              category.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ],
        ),
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Text('bbbb'),
                Spacer(),
                Icon(
                  Icons.check,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Text('cccc'),
                Spacer(),
                Icon(
                  Icons.check,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
