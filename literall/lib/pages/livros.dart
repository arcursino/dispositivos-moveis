import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literall/routes/app_routes.dart';
import 'package:literall/widgets/livros_tile.dart';
import 'package:literall/widgets/sidemenu.dart';
import 'package:provider/provider.dart';
import 'package:literall/provider/livros.dart';

import 'forms/livros.dart';

class LivrosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Livro livros = Provider.of(context);

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
      body: ListView.builder(
        itemCount: livros.count,
        itemBuilder: (ctx, i) => LivroTile(livros.byIndex(i)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            AppRoutes.LIVROS_FORM,          
          );
        },
        tooltip: 'Adiciona Livro',
        child: IconButton(
          icon: Icon(Icons.add),
          color: Hexcolor('#5E2129'),
          onPressed: () {
          Navigator.of(context).pushNamed(
            AppRoutes.LIVROS_FORM          
          );
        },
        ),
      ),
      
    );
  }
}

