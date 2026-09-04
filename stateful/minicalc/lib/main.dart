import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  //Controllers
  final TextEditingController _n1Controller = TextEditingController();
  final TextEditingController _n2Controller = TextEditingController();
  final TextEditingController _resultController = TextEditingController();

  @override
  void dispose() {
    //Limpa os controllers ao fechar a tela
    _n1Controller.dispose();
    _n2Controller.dispose();
    _resultController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mini Calculadora"),
          backgroundColor: Colors.blueAccent,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              //Campo do Valor A
              TextField(
                controller: _n1Controller,
                decoration: InputDecoration(
                  labelText: 'Informe valor A',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              //Espaçamento entre os campos
              SizedBox(height: 16),

              //Campo valor B
              TextField(
                controller: _n2Controller,
                decoration: InputDecoration(
                  labelText: 'Informe valor B',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 16),

              Row(
                children: [
                  //Botão de soma
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //Devemos tratar o numero antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) + double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Soma'),
                    ),
                  ),

                  SizedBox(width: 10),

                  //Botão de subtração
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //Devemos tratar o numero antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) - double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Subtração'),
                    ),
                  ),

                  SizedBox(height: 10),
                ],
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  //Botão de Multiplicação
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //Devemos tratar o numero antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) * double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Multiplicação'),
                    ),
                  ),

                  SizedBox(width: 10),

                  //Botão de Divisão
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //Devemos tratar o numero antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) / double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Divisão'),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 20),


              Row(
                children: [
                  //Botão de exponenciação
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //Devemos tratar o numero antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              pow(double.parse(n1Tratado), double.parse(n2Tratado)).toDouble();

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Exponenciação'),
                    ),
                  ),

                  SizedBox(width: 10),

                  //Botão de raiz_quadrada
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        print(
                          "Valores informados: \n n1: ${_n1Controller.text} n2: ${_n2Controller.text}",
                        );

                        //Devemos tratar o numero antes de realizar a operação

                        String n1Tratado = _n1Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        String n2Tratado = _n2Controller.text.replaceAll(
                          ',',
                          '.',
                        );
                        try {
                          double resultado =
                              double.parse(n1Tratado) / double.parse(n2Tratado);

                          print("Resultado: ${resultado}");

                          _resultController.text = resultado.toString();
                        } catch (e) {
                          _resultController.text = "Error!!";
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text('Raiz'),
                    ),
                  ),
                ],
              ),

              //Espaçamento
              SizedBox(height: 16),

              //Campo resultado
              TextField(
                controller: _resultController,
                decoration: InputDecoration(
                  labelText: 'Resultado',
                  prefixIcon: Icon(Icons.equalizer),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                enabled: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
