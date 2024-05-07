import 'package:flutter/material.dart';
import 'registroUsuario.dart';
import 'inicioSesion.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
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
                width: 200,
                height: 200,
                color: Colors.green,
                //colocar el child de contenedor como la imagen
              ),
              const Text("PocketMetrics"),
              const Text("¡Bienvenido de nuevo! Es un placer poderte servir"),
              iniciarSesionPage(),
              const Text("¿Eres Nuevo? Unete e inicia una nueva forma"),
              const Text("de organizar tus metas financieras"),
              btnRegistroUsuario()
            ],
          ),
        ),
      ),
    );
  }
}

class iniciarSesionPage extends StatelessWidget {
  const iniciarSesionPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
    MaterialPageRoute(builder: (context) => (inicioSesion())));
          
          
          
    
    
        }, child: const Text("Iniciar Sesion"));
  }
}

class btnRegistroUsuario extends StatelessWidget {
  const btnRegistroUsuario({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegistroUsuario()));
        },
        child: const Text("Registrarse"));
  }
}
