import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const CircleAvatar(
                radius: 65,

                backgroundColor: AppColors.verdeEscuro,

                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 70,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Usuário',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'usuário@email.com',
              ),

              const SizedBox(height: 30),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },

                icon: const Icon(Icons.arrow_back),

                label: const Text(
                  'Voltar',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}