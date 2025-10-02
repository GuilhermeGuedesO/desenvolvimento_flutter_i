import 'package:desenvolvimento_flutter_i/models/pessoa.dart';
import 'package:flutter/material.dart';

class PessoaListtile extends StatelessWidget {
  final Pessoa pessoa;

  const PessoaListtile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: ListTile(
        leading: Text("Id: ${pessoa.id}"),
        title: Text(pessoa.nome),
        subtitle: Text("Peso: ${pessoa.peso.toStringAsFixed(1)} KG"),
        trailing: Text("Altura: ${pessoa.altura} CM"),
      ),
    );
  }
}
