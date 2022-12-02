import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/proceso/autenticacion.dart';

class lista_mensajes extends StatefulWidget {
  const lista_mensajes({super.key});

  @override
  State<lista_mensajes> createState() => _lista_mensajesState();
}

class _lista_mensajesState extends State<lista_mensajes> {

  Stream<QuerySnapshot> resp_consulta = FirebaseFirestore.instance.collection("chat").orderBy("tiempo",descending: true).snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: resp_consulta,
      builder: (context,AsyncSnapshot<QuerySnapshot> respuesta){
        return respuesta.data?.docs.isEmpty==false? ListView.builder(
          itemCount: respuesta.data!.docs.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 10,
              child: Card(
                color: (autenticacion().usuarios?.email).toString()==respuesta.data!.docs[index].get("email")? Color.fromARGB(255, 21, 22, 21):Color.fromARGB(255, 14, 44, 78),
                child: ListTile(
                  title: Text(respuesta.data!.docs[index].get("mensaje"),textAlign: (autenticacion().usuarios?.email).toString()==respuesta.data!.docs[index].get("email")? TextAlign.left:TextAlign.right,),
                  subtitle: Text(respuesta.data!.docs[index].get("email"),textAlign: (autenticacion().usuarios?.email).toString()==respuesta.data!.docs[index].get("email")? TextAlign.left:TextAlign.right,),
                ),
              ),
            );
          },
        ):Center(child:CircularProgressIndicator());
      });
  }
}