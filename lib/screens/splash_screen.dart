import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.verdeEscuro,

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  width: 130,
                  height: 130,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),

                  child: const Icon(
                    Icons.apps,
                    size: 80,
                    color: AppColors.verdeEscuro,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'Meu Aplicativo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Consultas e ferramentas',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 50),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },

                    icon: const Icon(Icons.arrow_forward),

                    label: const Text(
                      'Começar',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.verdeEscuro,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}