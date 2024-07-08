import 'package:flutter/material.dart';
import 'package:gastinhos/input_field.dart';
import 'package:google_fonts/google_fonts.dart';

class AddInfoScreen extends StatefulWidget {
  const AddInfoScreen({super.key});

  @override
  State<AddInfoScreen> createState() => _AddInfoScreenState();
}

class _AddInfoScreenState extends State<AddInfoScreen> {
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
          'Adicionar Informações',
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 64,
                ),
                const InputField(name: 'Valor Máximo'),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Categorias',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white,
                  child: IconButton(
                      iconSize: 18,
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.purple,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
