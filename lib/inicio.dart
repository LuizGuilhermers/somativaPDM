import 'package:flutter/material.dart';
import 'inicio.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _HomePageState();
}

// Esta classe estende State<Tela1>, que a conecta ao widget Tela1.
class _HomePageState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //Define a barra de aplicativo na parte superior com o título "MENU"
        title: const Text("CHECK-IN"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: SingleChildScrollView( //Define a área de conteúdo da tela.
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column( //: Organiza os widgets filhos verticalmente dentro da área rolável.
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "ÁREA DE EMBARQUE",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("ITÁLIA"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/mapa1');
                      }),
                  ElevatedButton(
                      child: const Text("INGLATERRA"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/mapa2');
                      }),
                  ElevatedButton(
                      child: const Text("PORTUGAL"),
                      onPressed: () {
                        Navigator.pushNamed (context, '/mapa3');
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
