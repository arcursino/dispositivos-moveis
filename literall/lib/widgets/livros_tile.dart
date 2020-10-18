import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literall/model/livros_mock.dart';
import 'package:literall/pages/forms/livros.dart';
import 'package:literall/provider/livros.dart';
import 'package:literall/routes/app_routes.dart';
import 'package:provider/provider.dart';


class LivroTile extends StatelessWidget {
  final Livros livro;

  const LivroTile(this.livro);

  @override 
  Widget build(BuildContext context) {
    const icone = Icon(Icons.book);
    return ListTile(
      leading: icone,
      title: Text(livro.titulo),
      subtitle: Text(livro.autor),
      trailing: Container(
        width: 100,
        child: Row (
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Hexcolor('#5E2129'),
              onPressed: () {
                Navigator.of(context).pushNamed( 
                  AppRoutes.LIVROS_FORM,
                  arguments: livro,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                showDialog(
                  context: context,
                  builder:(ctx) => AlertDialog(
                    title: Text('Excluir Livro'),
                    content: Text('Tem certeza?'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Não'),
                        onPressed:  () {
                          Navigator.of(context).pop();
                        },                        
                      ),
                      FlatButton(
                        child: Text('Sim'),
                        onPressed:  () {
                          Provider.of<Livro>(context, listen: false)
                          .remove(livro);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                    ),
                );                
              },
            ),
        ],),

      ),
     
    );
  }

}