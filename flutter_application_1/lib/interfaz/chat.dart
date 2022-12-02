import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/interfaz/lista_mensajes.dart';
import 'package:flutter_application_1/proceso/autenticacion.dart';

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _chatState();
}

final mensaje = TextEditingController();
final fire = FirebaseFirestore.instance;

class _chatState extends State<chat> {

  final FocusNode FN = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          IconButton(
              onPressed: () {
                autenticacion().CerrarSesion();
              },
              icon: Icon(Icons.logout)),
              VerticalDivider(width: 100,),
              Text((autenticacion().usuarios?.email).toString())
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  focusNode: FN,
                  controller: mensaje,
                  decoration: InputDecoration(hintText: "Mensaje..."),
                  onSubmitted: (valor){
                    FN.requestFocus();
                    mensaje.text = valor;
                    if (mensaje.text.isNotEmpty) {
                      fire.collection("chat").doc().set({
                        "mensaje": mensaje.text,
                        "tiempo": DateTime.now(),
                        "email": autenticacion().usuarios?.email
                      });
                      mensaje.clear();
                    }
                  },
                ),
              ),
              IconButton(
                  onPressed: () {
                    if (mensaje.text.isNotEmpty) {
                      fire.collection("chat").doc().set({
                        "mensaje": mensaje.text,
                        "tiempo": DateTime.now(),
                        "email": autenticacion().usuarios?.email
                      });
                      mensaje.clear();
                    }
                  },
                  icon: Icon(Icons.send))
            ],
          ),
          Expanded(child: Container(child: lista_mensajes()))
        ]),


      ),
    );
  }
}
