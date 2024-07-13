import 'package:flutter/material.dart';

class ExpansibleWidget extends StatelessWidget {
  const ExpansibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ExpansionTile(
        title: Row(
          children: [Text('Teste')],
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
