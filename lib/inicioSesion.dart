import 'package:flutter/material.dart';
import 'registroUsuario.dart';

class inicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
              //color el child como la imagen
            ),
            const Text("Iniciar Sesion"),
            const Text("¡Hola! es bueno verte de nuevo"),
            Form(
                child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(label: const Text("correo")),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    decoration:
                        InputDecoration(label: const Text("Contraseña")),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Iniciar Sesion")),
                const Text("¿Aun no estas registrado?"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistroUsuario()));
                    },
                    child: const Text("Registrate"))
              ],
            ))
          ],
        )),
      ),
    );
  }
}
