import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../consultores/cep.dart';
import '../consultores/cnpj.dart';
import 'login_screen.dart';
import 'perfil_screen.dart';
import 'sobre_screen.dart';
import 'trabalho_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void abrirTela(
    BuildContext context,
    Widget tela,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => tela,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.verdeEscuro,
              ),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: const [
                    CircleAvatar(
                      radius: 32,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: AppColors.verdeEscuro,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Meu Aplicativo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Principal'),

              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Trabalho'),

              onTap: () {
                Navigator.pop(context);

                abrirTela(
                  context,
                  const TrabalhoScreen(),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),

              onTap: () {
                Navigator.pop(context);

                abrirTela(
                  context,
                  const PerfilScreen(),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Sobre'),

              onTap: () {
                Navigator.pop(context);

                abrirTela(
                  context,
                  const SobreScreen(),
                );
              },
            ),

            const Spacer(),

            const Divider(),

            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
              ),

              title: const Text('Sair'),

              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false,
                );
              },
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'Sejam Bem Vindos!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.verdeEscuro,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'Escolha uma das opções abaixo.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            Row(
              children: [
                Expanded(
                  child: _CardConsulta(
                    titulo: 'Consultar CEP',
                    descricao: 'Encontre um endereço',
                    icone: Icons.location_on,
                    cor: AppColors.verdeEscuro,

                    onTap: () {
                      abrirTela(
                        context,
                        const Cep(),
                      );
                    },
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: _CardConsulta(
                    titulo: 'Consultar CNPJ',
                    descricao: 'Consulte uma empresa',
                    icone: Icons.business,
                    cor: AppColors.roxo,

                    onTap: () {
                      abrirTela(
                        context,
                        const Cnpj(),
                      );
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(18),

                leading: Container(
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: AppColors.marrom,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: const Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                ),

                title: const Text(
                  'Área de Trabalho',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                subtitle: const Text(
                  'Acesse as ferramentas do sistema',
                ),

                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),

                onTap: () {
                  abrirTela(
                    context,
                    const TrabalhoScreen(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardConsulta extends StatelessWidget {
  final String titulo;
  final String descricao;
  final IconData icone;
  final Color cor;
  final VoidCallback onTap;

  const _CardConsulta({
    required this.titulo,
    required this.descricao,
    required this.icone,
    required this.cor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,

        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: cor,

                child: Icon(
                  icone,
                  color: Colors.white,
                  size: 30,
                ),
              ),

              const SizedBox(height: 15),

              Text(
                titulo,
                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                descricao,
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}