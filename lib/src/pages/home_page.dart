import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  final estiloTexto = TextStyle( fontSize: 25 );

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Titulo"),
     ),
     body: Center(
       child: Column(
         children: <Widget>[
           Text("Número de clicks:", style: estiloTexto,),
           Text('$conteo', style: estiloTexto,)
         ],
         mainAxisAlignment: MainAxisAlignment.center,
       )
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon( Icons.add ),
       onPressed: (){
         print("Hola mundo");
       },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
     );
  }

}