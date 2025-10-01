import 'package:desenvolvimento_flutter_i/models/pessoa.dart';
import 'package:desenvolvimento_flutter_i/widgets/pessoa_listtile.dart';
import 'package:desenvolvimento_flutter_i/widgets/stateless_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello Flutter')),
        body: PessoaListtile(pessoa: Pessoa(1, "Guilherme", 178, 109),),
      ),
    );
  }
}

