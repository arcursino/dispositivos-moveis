import 'package:flutter/material.dart';
import 'package:literall/pages/eventos.dart';
import 'package:literall/pages/home.dart';
import 'package:literall/pages/livros.dart';
import 'package:literall/pages/locais.dart';
import 'package:literall/pages/login.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:literall/pages/perfil.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'LiterAll',
              style: TextStyle(color: Hexcolor('#5E2129'), fontSize: 25),
            ),
            decoration: BoxDecoration(color: Hexcolor('#F6E2E2')),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Eventos'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventosPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Locais'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocaisPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Livros'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LivrosPage()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PerfilPage()),
              )
            },
          ),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
        ],
      ),
    );
  }
}
