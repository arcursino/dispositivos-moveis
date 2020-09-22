import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literall/widgets/sidemenu.dart';

import 'forms/locais.dart';

class LocaisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Hexcolor('#5E2129')
      ),
        title: Text('Locais', 
        style: TextStyle(color: Hexcolor('#5E2129'), fontSize: 25),),  
        backgroundColor: Hexcolor('#F6E2E2'),
      ),
      body: Center(
          child: Text('You have pressed the button')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LocaisForm()),
          );
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}