import 'package:flutter/material.dart';
import 'package:literall/widgets/sidemenu.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}