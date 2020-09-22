import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literall/widgets/sidemenu.dart';

class EventosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Hexcolor('#5E2129')
      ),
        title: Text('Eventos', 
        style: TextStyle(color: Hexcolor('#5E2129'), fontSize: 25),),  
        backgroundColor: Hexcolor('#F6E2E2'),  
      ),
      body: Center(
          child: Text('You have pressed the button')
      ),
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
