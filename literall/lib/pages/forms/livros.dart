import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:literall/model/livros_mock.dart';
import 'package:literall/provider/livros.dart';
import 'package:literall/widgets/sidemenu.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class LivrosForm extends StatelessWidget {  

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  void _loadFormData(Livros livro) {
    if(livro != null) {
      _formData['id'] = livro.id;
      _formData['titulo'] = livro.titulo;
      _formData['autor'] = livro.autor;
      _formData['status']= livro.status;
      _formData['nomeUsuario'] = livro.nomeUsuario;
      _formData['email']= livro.email;
      _formData['telefone'] = livro.telefone;
    }    
  }

  @override
  Widget build(BuildContext context) {
    final Livros livro = ModalRoute.of(context).settings.arguments;

    _loadFormData(livro);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(
        color: Hexcolor('#5E2129'),
        ),
        title: Text('Cadastrar livro',
          style: TextStyle(color: Hexcolor('#5E2129'), fontSize: 25)),
          backgroundColor: Hexcolor('#F6E2E2'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final isValid =_form.currentState.validate();
              
              if(isValid) {
                _form.currentState.save();
                Provider.of<Livro>(context, listen: false).put(
                  Livros(
                    id: _formData['id'],
                    titulo: _formData['titulo'],
                    autor: _formData['autor'],
                    status: _formData['status'],
                    nomeUsuario: _formData['nomeUsuario'],
                    email: _formData['email'],
                    telefone: _formData['telefone'],
                ));  
                
                Navigator.of(context).pop();
              }              
            },
          ),
        ],
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: _form,
            child: Column( 
              children: <Widget>[                
                TextFormField(
                  initialValue: _formData['titulo'],
                  decoration: InputDecoration(labelText: 'Título'),
                  validator: (value) {
                    if(value ==null || value.trim().isEmpty) {
                      return 'Título inválido';
                    } 
                    return null;                   
                  },
                  onSaved: (value) => _formData['titulo'] = value,                  
                ),
                TextFormField(
                  initialValue: _formData['autor'],
                  decoration: InputDecoration(labelText: 'Autor'),
                  onSaved: (value) => _formData['autor'] = value,
                ),
                //TextFormField(
                  //decoration: InputDecoration(labelText: 'Avaliação'),
                  //onSaved: (value) => _formData['avaliacao'] = value,
                //),
                //TextFormField(
                  //decoration: InputDecoration(labelText: 'Categoria'),
                //),
                ///TextFormField(
                  //decoration: InputDecoration(labelText: 'Descrição'),
                //),
                //TextFormField(
                  //decoration: InputDecoration(labelText: 'Edição'),
                //),
                //TextFormField(
                  //decoration: InputDecoration(labelText: 'Editora'),
                //),
                //TextFormField(
                  //decoration: InputDecoration(labelText: 'Idioma'),
                //),
                //TextFormField(
                  //decoration: InputDecoration(labelText: 'isbn'),
                //),
                TextFormField(
                  initialValue: _formData['status'],
                  decoration: InputDecoration(labelText: 'Status'),
                  onSaved: (value) => _formData['status'] = value,
                ),
                TextFormField(
                  initialValue: _formData['nomeUsuario'],
                  decoration: InputDecoration(labelText: 'Nome do Usuário'),
                  onSaved: (value) => _formData['nomeUsuario'] = value,
                ),
                TextFormField(
                  initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'email'),
                  onSaved: (value) => _formData['email'] = value,
                ),
                TextFormField(
                  initialValue: _formData['telefone'],
                  decoration: InputDecoration(labelText: 'telefone'),
                  onSaved: (value) => _formData['telefone'] = value,
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }

}
