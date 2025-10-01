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
// ignore: must_be_immutable
class MeuStatelessWidget extends StatelessWidget {
   MeuStatelessWidget({super.key});  
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
        count++;
    },
     child: Text("Clique aqui!"),),],
    );
  }
}