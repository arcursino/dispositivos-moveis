import 'package:flutter/material.dart';
import 'package:literall/pages/conta.dart';
import 'package:literall/pages/eventos.dart';
import 'package:literall/pages/forms/livros.dart';
import 'package:literall/pages/login.dart';
import 'package:literall/provider/livros.dart';
import 'package:literall/routes/app_routes.dart';
import 'package:provider/provider.dart';

import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (ctx) => Livro(),
        )
    ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          AppRoutes.HOME: (_) => LoginPage(),
          AppRoutes.CRIAR_CONTA: (_) => CriarConta(),
          AppRoutes.LIVROS_FORM: (_) => LivrosForm()
        },
        title: 'Literall',
        debugShowCheckedModeBanner: false,   
    ),
    );
       
  }
}
