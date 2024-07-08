import 'package:flutter/material.dart';
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 64,
                ),
                InputField(name: 'Nome'),
                InputField(name: 'Valor')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
