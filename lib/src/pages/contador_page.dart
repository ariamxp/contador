import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = TextStyle( fontSize: 25 );
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Statefull"),
     ),
     body: Center(
       child: Column(
         children: <Widget>[
           Text("Número de clicks:", style: _estiloTexto,),
           Text('$_conteo', style: _estiloTexto,)
         ],
         mainAxisAlignment: MainAxisAlignment.center,
       )
     ),
     floatingActionButton: _botones(),
     );
  }

  Widget _botones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         SizedBox( width: 35.0, ),
         FloatingActionButton(
          child: Icon( Icons.exposure_zero ),
            onPressed: _zero
          ),
          Expanded( child: SizedBox()),
          FloatingActionButton(
          child: Icon( Icons.remove ),
            onPressed: _restar
          ),
          SizedBox( width: 10.0, ),
          FloatingActionButton(
          child: Icon( Icons.add ),
            onPressed: _sumar
          )
       ],
     );

  }

  void _sumar(){
    setState(() => _conteo++ );
  }

  void _restar(){
    setState(() => _conteo-- );
  }

  void _zero(){
    setState(() => _conteo=0 );
  }
  
}