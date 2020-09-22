import 'package:flutter/material.dart';
import 'package:literall/widgets/sidemenu.dart';

class EventosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: FormularioEventos(),
    );
  }
}

class FormularioEventos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Eventos por cidade'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(
                  fontSize: 24
                ),
                decoration: InputDecoration(
                  labelText: 'Cidade',
                  hintText: 'São José dos Campos'
                ),
              ),
            ),
            RaisedButton(
              child: Text('Buscar')
            )
          ],
        ));
  }
}
