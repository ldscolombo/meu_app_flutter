import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget{
  MeuApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 16, 89, 216),
          title: Center( 
           child: Text("Nome do meu app"),
          ),
        ),
        body: PaginaInicial()
    ),
   );
  }
}

class PaginaInicial extends StatefulWidget{
  @override
  State<PaginaInicial> createState() => PaginaInicialState();
}

class PaginaInicialState extends State<PaginaInicial>{
  String texto = 'olá, mundo!';
  int contador = 0;
@override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            texto,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('mudar texto'),
            onPressed: () {
              setState(() {
                contador++;
                texto = "Você alterou o texto ${++contador} ${contador >1 ? "vezes" : "vez"}";
              });
            },
          )
        ],
      ),
    );
  }
}