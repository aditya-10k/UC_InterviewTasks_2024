import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lastlog/pages/home.dart';
import 'package:lastlog/pages/load.dart';
import 'package:lastlog/pages/signin.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
//home: Home(),
    initialRoute: '/home',

    routes: {
      //'/' : (context) => Load(),
      '/home' : (context) => Home(),
      '/signin' : (context) => Signin(),
      '/load' : (context) => Load(),
    },
  ));
}

