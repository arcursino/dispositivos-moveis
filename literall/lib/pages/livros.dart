import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literall/widgets/sidemenu.dart';

class LivrosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Hexcolor('#5E2129')
      ),
        title: Text('Livros', 
        style: TextStyle(color: Hexcolor('#5E2129'), fontSize: 25),),  
        backgroundColor: Hexcolor('#F6E2E2'),
      ),
      body: Center(
          child: Text('You have pressed the button')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}