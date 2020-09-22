import 'package:flutter/material.dart';
import 'package:literall/widgets/sidemenu.dart';

import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Hexcolor('#5E2129')
      ),
        title: Text('Home',
          style: TextStyle(color: Hexcolor('#5E2129'), fontSize: 25)),
        backgroundColor: Hexcolor('#F6E2E2'),
      ),
      
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}