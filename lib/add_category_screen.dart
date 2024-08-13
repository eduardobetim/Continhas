import 'package:flutter/material.dart';
import 'package:gastinhos/expense_categories.dart';
import 'package:gastinhos/expense_category.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  ExpenseCategory dropdownValue = expenseCategories.entries.first.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Adicionar Categoria',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontFamily: GoogleFonts.dosis().fontFamily, color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.deepPurple,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    label: Text(
                      'Nome',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButton(
                    value: dropdownValue,
                    dropdownColor: Colors.black87,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    items: [
                      for (final category in expenseCategories.entries)
                        DropdownMenuItem(
                          value: category.value,
                          child: Row(
                            children: [
                              Icon(
                                category.value.icon,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                category.value.name,
                              ),
                            ],
                          ),
                        )
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
