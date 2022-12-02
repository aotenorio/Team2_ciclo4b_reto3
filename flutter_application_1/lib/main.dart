import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'interfaz/home.dart';
 
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA4LrP-niwFDWPVaZQfmbcuQjSdMvoirxY",
          authDomain: "minticchatreto3-f91c2.firebaseapp.com",
          projectId: "minticchatreto3-f91c2",
          storageBucket: "minticchatreto3-f91c2.appspot.com",
          messagingSenderId: "117809068186",
          appId: "1:117809068186:web:0b3d46d7024d9eb7084723",
          measurementId: "G-BX5FYTJQHP"));
  runApp(const MyApp());
}
