import 'package:flutter/material.dart';
import 'package:literall/widgets/sidemenu.dart';

class LocaisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Locais'),
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