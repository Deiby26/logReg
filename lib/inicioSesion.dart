import 'package:flutter/material.dart';

class inicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hola Mundo'),
        ),
        body: Center(
          child: Text(
            '¡Hola Mundo!',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
