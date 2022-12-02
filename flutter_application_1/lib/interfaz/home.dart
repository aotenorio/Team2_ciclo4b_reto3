
import 'package:flutter/material.dart';
import 'package:flutter_application_1/interfaz/chat.dart';
import 'package:flutter_application_1/interfaz/login.dart';
import 'package:flutter_application_1/proceso/autenticacion.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TenoChat',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
       darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'TenoChat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return StreamBuilder(
      stream: autenticacion().estadoLogin,
      builder: (context,respuesta) {
        if (respuesta.hasData){
          return chat();
        }else {
          return login(); 
        }
      }
      );
  }
}