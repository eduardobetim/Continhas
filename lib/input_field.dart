import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({required this.name, super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.white24,
        filled: true,
        label: Text(name),
        labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
