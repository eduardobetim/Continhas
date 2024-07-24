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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 64,
                ),
                TextFormField(
                  textAlign: TextAlign.start,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.black),
                  maxLength: 50,
                  decoration: InputDecoration(
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 99, 8, 102),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16,
                          ),
                        ),
                      ),
                      focusColor: Colors.white,
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 99, 8, 102),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16,
                          ),
                        ),
                      ),
                      labelText: 'Teste',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
