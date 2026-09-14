import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class TrabalhoScreen extends StatefulWidget {
  const TrabalhoScreen({super.key});

  @override
  State<TrabalhoScreen> createState() => _TrabalhoScreenState();
}

class _TrabalhoScreenState extends State<TrabalhoScreen> {
  int indiceAtual = 0;

  final List<Widget> telas = const [
    TrabalhoInicio(),
    AtividadesScreen(),
    TrabalhoPerfilScreen(),
  ];

  final List<String> titulos = const [
    'Trabalho',
    'Atividades',
    'Meu Perfil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulos[indiceAtual]),
      ),

      body: telas[indiceAtual],

      bottomNavigationBar: NavigationBar(
        selectedIndex: indiceAtual,

        onDestinationSelected: (indice) {
          setState(() {
            indiceAtual = indice;
          });
        },

        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Início',
          ),

          NavigationDestination(
            icon: Icon(Icons.assignment_outlined),
            selectedIcon: Icon(Icons.assignment),
            label: 'Atividades',
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
class TrabalhoInicio extends StatelessWidget {
  const TrabalhoInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            'Área de Trabalho',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.verdeEscuro,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Tenha acesso rápido às principais ferramentas.',
          ),

          const SizedBox(height: 25),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppColors.verdeEscuro,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),

              title: const Text(
                'Tarefa concluída',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: const Text(
                'Sistema funcionando corretamente.',
              ),
            ),
          ),

          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppColors.roxo,
                child: Icon(
                  Icons.api,
                  color: Colors.white,
                ),
              ),

              title: const Text(
                'APIs disponíveis',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: const Text(
                'CEP e CNPJ prontos para consulta.',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class AtividadesScreen extends StatelessWidget {
  const AtividadesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),

      children: [
        Card(
          child: ListTile(
            leading: const Icon(
              Icons.location_on,
              color: AppColors.verdeEscuro,
            ),

            title: const Text(
              'Consulta de CEP',
            ),

            subtitle: const Text(
              'Consultar endereços através da API ViaCEP.',
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: const Icon(
              Icons.business,
              color: AppColors.roxo,
            ),

            title: const Text(
              'Consulta de CNPJ',
            ),

            subtitle: const Text(
              'Consultar informações de empresas.',
            ),
          ),
        ),

        Card(
          child: ListTile(
            leading: const Icon(
              Icons.code,
              color: AppColors.marrom,
            ),

            title: const Text(
              'Desenvolvimento',
            ),

            subtitle: const Text(
              'Aplicativo desenvolvido utilizando Flutter e Dart.',
            ),
          ),
        ),
      ],
    );
  }
}
class TrabalhoPerfilScreen extends StatelessWidget {
  const TrabalhoPerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const CircleAvatar(
            radius: 55,

            backgroundColor: AppColors.verdeEscuro,

            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 60,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            'Usuário',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            'usuário@email.com',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}