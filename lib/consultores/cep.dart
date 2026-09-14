import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cep extends StatefulWidget {
  const Cep({super.key});

  @override
  State<Cep> createState() => _CepState();
}

class _CepState extends State<Cep> {
  final cep = TextEditingController();

  String endereco = '';

  Future<void> consultar() async {
    if (cep.text.isEmpty) {
      setState(() {
        endereco = 'Digite um CEP.';
      });

      return;
    }

    try {
      final url = Uri.parse(
        'https://viacep.com.br/ws/${cep.text}/json/',
      );

      final resposta = await http.get(url);

      if (resposta.statusCode != 200) {
        throw Exception();
      }

      final dados = jsonDecode(resposta.body);

      if (dados['erro'] == true) {
        setState(() {
          endereco = 'CEP não encontrado.';
        });

        return;
      }

      setState(() {
        endereco =
            '${dados['logradouro']}\n'
            '${dados['bairro']}\n'
            '${dados['localidade']} - ${dados['uf']}';
      });
    } catch (e) {
      setState(() {
        endereco = 'Erro ao consultar o CEP.';
      });
    }
  }

  @override
  void dispose() {
    cep.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta CEP'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Icon(
              Icons.location_on,
              size: 100,
            ),

            const SizedBox(height: 30),

            TextField(
              controller: cep,

              decoration: const InputDecoration(
                labelText: 'CEP',
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
              endereco,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}