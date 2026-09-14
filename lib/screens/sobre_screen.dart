import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Icon(
                Icons.apps,
                size: 90,
                color: AppColors.verdeEscuro,
              ),

              const SizedBox(height: 20),

              const Text(
                'Meu Aplicativo',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.verdeEscuro,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'Aplicativo desenvolvido em Flutter '
                'utilizando a linguagem Dart.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              const Text(
                'Versão 1.0.0',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}