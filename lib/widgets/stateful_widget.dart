import 'package:flutter/material.dart';

class MeuStateFull extends StatefulWidget {
  final void Function() callback;

  const MeuStateFull({super.key, required this.callback});

  @override
  State<MeuStateFull> createState() => _MeuStateFullState();
}

class _MeuStateFullState extends State<MeuStateFull> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            widget.callback();
          },
          child: Text("Botao de baixo!!"),
        ),
      ],
    );
  }
}
