import 'package:flutter/material.dart';
import 'package:literall/pages/conta.dart';
import 'package:literall/pages/eventos.dart';
import 'package:literall/pages/login.dart';

import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/criar': (context) => CriarConta(),
        '/login': (context) => LoginPage(),
      },
      title: 'Literall',
      debugShowCheckedModeBanner: false,          
    );
  }
}
