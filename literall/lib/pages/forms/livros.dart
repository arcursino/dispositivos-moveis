import 'package:flutter/material.dart';
import 'package:literall/widgets/sidemenu.dart';

class LivrosForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar livro'),
      ),
      body: Center(
          child: Text('You have pressed the button')
      ),
    );
  }
}