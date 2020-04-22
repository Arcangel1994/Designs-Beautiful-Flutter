import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diseños'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _crearButton(context, 'basico', 'Diseño 1', Colors.pink),
              _crearButton(context, 'scroll', 'Diseño 2', Colors.blue),
              _crearButton(context, 'botones', 'Diseño 2', Colors.deepPurple)
            ],
          ),
        ),
      ),
    );
  }

  Widget _crearButton(BuildContext context,String router, String texto, MaterialColor color){
    return OutlineButton(
      textColor: color,
      highlightedBorderColor: Colors.black.withOpacity(0.12),
      onPressed: () {
        Navigator.pushNamed(context, router);
      },
      child: Text(texto),
    );
  }

}