import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // widgets AQUII
      home: Scaffold(

        //appBar
       appBar: AppBar(
  title: const Text("Aqui e AppBar", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)), // Mudando a cor da letra
  ),
  backgroundColor: const Color.fromARGB(255, 90, 11, 11),
),

        //Body
        body: Center(child: Text("Aqui é o body do scaffold", style: TextStyle(color: const Color.fromARGB(255, 1, 128, 18)),)),
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),

        //Drawer
        drawer: Drawer(
          child: ListView(children: [Text('Opção 1'), Text('Opção 2'), Text('Opção 3')]),
        ),
      ),
    );
  }
}
