import 'package:flutter/material.dart';
import 'package:literall/widgets/sidemenu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}