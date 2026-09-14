import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cnpj extends StatefulWidget {
  const Cnpj({super.key});

  @override
  State<Cnpj> createState() => _CnpjState();
}

class _CnpjState extends State<Cnpj> {
  final cnpj = TextEditingController();

  String resultado = '';

  Future<void> consultar() async {
    if (cnpj.text.isEmpty) {
      setState(() {
        resultado = 'Digite um CNPJ.';
      });

      return;
    }

    try {
      final url = Uri.parse(
        'https://api.opencnpj.org/${cnpj.text}',
      );

      final resposta = await http.get(url);

      if (resposta.statusCode != 200) {
        throw Exception();
      }

      final dados = jsonDecode(resposta.body);

      setState(() {
        resultado =
            'CNPJ: ${dados['cnpj']}\n\n'
            'Razão Social: ${dados['razao_social']}\n\n'
            'Nome Fantasia: ${dados['nome_fantasia']}';
      });
    } catch (e) {
      setState(() {
        resultado = 'Erro ao consultar o CNPJ.';
      });
    }
  }

  @override
  void dispose() {
    cnpj.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta CNPJ'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Icon(
              Icons.business,
              size: 100,
            ),

            const SizedBox(height: 30),

            TextField(
              controller: cnpj,

              decoration: const InputDecoration(
                labelText: 'CNPJ',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: consultar,
              child: const Text('Consultar'),
            ),

            const SizedBox(height: 30),

            Text(
              resultado,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}