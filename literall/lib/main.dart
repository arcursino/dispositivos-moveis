import 'package:flutter/material.dart';
import 'package:literall/pages/conta.dart';
import 'package:literall/pages/eventos.dart';
import 'package:literall/pages/login.dart';
import 'package:literall/widgets/sidemenu.dart';

import 'pages/home.dart';

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
        '/': (context) => EventosPage(),
        '/criar': (context) => CriarConta(),
        '/login': (context) => LoginPage(),
      },
      title: 'Literall',
      debugShowCheckedModeBanner: false,          
    );
  }
}

class TesteHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Side menu'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}

