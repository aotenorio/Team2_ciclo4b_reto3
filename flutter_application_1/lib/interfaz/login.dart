import 'package:flutter/material.dart';
import 'package:flutter_application_1/proceso/autenticacion.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final email = TextEditingController();
final password = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login/Registro"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                  image: NetworkImage(
                      "https://t4.ftcdn.net/jpg/05/11/87/37/360_F_511873784_NLmIMOcuwo9JTuoXJNyR0jQSQOUXUvFk.jpg")),
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  hintText: "Email...", suffixIcon: Icon(Icons.email)),
            ),
            TextField(
              obscureText: true,
              controller: password,
              decoration: InputDecoration(
                  hintText: "Password...", suffixIcon: Icon(Icons.key)),
            ),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  autenticacion().IniciarSesion(
                      email: email.text, password: password.text);
                },
                icon: Icon(Icons.login_outlined),
                label: Text("Iniciar Sesión")),
            Divider(),
            ElevatedButton.icon(
                onPressed: () {
                  autenticacion()
                      .CrearUsuario(email: email.text, password: password.text);
                },
                icon: Icon(Icons.person_add),
                label: Text("Registrarse")),
            Divider(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      email.text = "user_1@gmail.com";
                      password.text = "123456";
                      autenticacion().IniciarSesion(
                          email: email.text, password: password.text);
                    },
                    icon: Icon(Icons.person_add_alt_1_outlined),
                    label: Text("User 1")),
                VerticalDivider(),
                ElevatedButton.icon(
                    onPressed: () {
                      email.text = "user_2@gmail.com";
                      password.text = "123456";
                      autenticacion().IniciarSesion(
                          email: email.text, password: password.text);
                    },
                    icon: Icon(Icons.person_add_alt_1_rounded),
                    label: Text("User 2")),
                VerticalDivider(),
                ElevatedButton.icon(
                    onPressed: () {
                      email.text = "user_3@gmail.com";
                      password.text = "123456";
                      autenticacion().IniciarSesion(
                          email: email.text, password: password.text);
                    },
                    icon: Icon(Icons.person_add_alt_outlined),
                    label: Text("User 3")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
