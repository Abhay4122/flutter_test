import 'package:first_project/login_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "MyRoutes.homeRoute": (context) => HomePage(),
        "MyRoutes.loginRoute": (context) => LoginPage()
      },
    );
  }
}
