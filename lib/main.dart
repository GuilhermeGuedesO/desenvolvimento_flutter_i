import 'package:desenvolvimento_flutter_i/widgets/listview_builder.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber,
            title: Text('Hello Flutter')),
        body: ListaPessoas(),
      ),
    );
  }
}
