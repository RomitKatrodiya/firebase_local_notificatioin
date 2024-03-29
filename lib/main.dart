import 'package:firebase_app/screens/home_page.dart';
import 'package:firebase_app/screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login_page",
      routes: {
        "/": (context) => const HomePage(),
        "login_page": (context) => const LoginPage(),
      },
    ),
  );
}
