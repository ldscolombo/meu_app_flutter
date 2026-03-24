import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 16, 89, 216),
          title: Center( 
           child: Text("Nome do meu app"),
          ),
        ),
        body: Center( 
         child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text("olá, mundo"),
          Text("23/03/26")
         ],
      ),
     )
    )
   )
  );
}