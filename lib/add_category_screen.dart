import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gastinhos/category_type.dart';
import 'package:gastinhos/input_field.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

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
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              fontFamily: GoogleFonts.dosis().fontFamily,
              color: Theme.of(context).colorScheme.onPrimary),
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
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.white),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButton(
                    style: Theme.of(context).textTheme.bodyLarge,
                    value:
                        categoryTypeIcons.keys.toList().first.name.toString(),
                    items: [
                      for (final category in categoryTypeIcons.entries)
                        DropdownMenuItem(
                          value: category.key.name.toString(),
                          child: Row(
                            children: [
                              Icon(category.value),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                category.key.name.toString(),
                              ),
                            ],
                          ),
                        )
                    ],
                    onChanged: (value) {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
