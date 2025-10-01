import 'package:desenvolvimento_flutter_i/widgets/stateful_widget.dart';
import 'package:flutter/material.dart';

class MeuStatelessWidget extends StatefulWidget {
  const MeuStatelessWidget({super.key});

  @override
  State<MeuStatelessWidget> createState() => _MeuStatelessWidgetState();
}

class _MeuStatelessWidgetState extends State<MeuStatelessWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Count = $count",style: TextStyle(fontSize: 24,color: Colors.amber),),
        ],
      ),
        SizedBox(height: 24,),
        ElevatedButton(onPressed: () {

          setState(() {
            count++;
          });
        },
          child: Text("Clique aqui!"),),
        MeuStateFull(callback: (){setState(() {
          count--;
        });} ,)],
    );
  }

}