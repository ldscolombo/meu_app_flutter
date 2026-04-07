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
  int counter = 0;

  final TextEditingController _textEditingController = TextEditingController();

@override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(texto,),
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).cardColor
          ),
          onPressed: () {
            print(_textEditingController.text);
            setState(() {
              if(nome.isNotEmpty){
                texto = "Olá, $nome";
              }
              else{
                texto = "Olá, ninguém?";
              }
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("clique em mim!"),
              Icon(Icons.ads_click_outlined)
            ],
          ),
         ),
        ],
      ),
    );
  }
}

