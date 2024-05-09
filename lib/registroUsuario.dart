import 'package:flutter/material.dart';
import 'inicioSesion.dart';

class RegistroUsuario extends StatefulWidget {
  const RegistroUsuario({Key? key}) : super(key: key);

  @override
  State<RegistroUsuario> createState() => _RegistroUsuarioState();
}

class _RegistroUsuarioState extends State<RegistroUsuario> {
  bool _isChecked = false;
  final TextEditingController _controladorNombre = TextEditingController();
  final TextEditingController _controladorCorreo = TextEditingController();
  final TextEditingController _controladorPassword = TextEditingController();
  final TextEditingController _controladorPasswordConfirmed = TextEditingController();

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
              ),
              const Text("Regístrate"),
              const Text("¡Bienvenido y espero que llegues para quedarte!"),
              Form(
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _controladorNombre,
                        decoration:
                            InputDecoration(label: const Text("Usuario")),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _controladorCorreo,
                        decoration:
                            InputDecoration(label: const Text("Correo")),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _controladorPassword,
                        obscureText: true,
                        decoration:
                            InputDecoration(label: const Text("Contraseña")),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _controladorPasswordConfirmed,
                        obscureText: true,
                        decoration: InputDecoration(
                            label: const Text("Verificar contraseña")),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                        ),
                        const Text("Acepto los términos y condiciones"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Aquí puedes agregar la lógica para registrar al usuario
                        print(_controladorNombre.text);
                        print(_controladorCorreo.text);
                        print(_controladorPassword.text);
                        print(_controladorPasswordConfirmed.text);
                      },
                      child: const Text("Registrarse"),
                    ),
                    const Text("¿Ya tienes una cuenta?"),
                    btnInicioSesion()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class btnInicioSesion extends StatelessWidget {
  const btnInicioSesion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => (inicioSesion())));
        },
        child: const Text("Inicia Sesion"));
  }
}

void main() {
  runApp(const RegistroUsuario());
}
