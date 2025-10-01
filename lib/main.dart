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
        body: MeuStatelessWidget(),
      ),
    );
  }
}
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
class MeuStateFull extends StatefulWidget {
  final void Function() callback;
  const MeuStateFull({super.key, required this.callback});

  @override
  State<MeuStateFull> createState() => _MeuStateFullState();
}

class _MeuStateFullState extends State<MeuStateFull> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [ElevatedButton(onPressed: (){
      widget.callback();
    }, child: Text("Botao de baixo!!"))],);
  }
}
