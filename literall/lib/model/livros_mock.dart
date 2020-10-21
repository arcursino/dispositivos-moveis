import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart'; //para renderizar enum

class Usuario {
  String nome;
  String email;
  String telefone;

  Usuario({
    @required this.nome,
    @required this.email,
    @required this.telefone,
  });
}

class Livros {
  final String id;
  final String titulo;
  final String autor;
  final String avaliacao;//Enum
  final String categoria;  
  final String descricao;
  final String edicao;
  final String editora;
  final String idioma;
  final String isbn;
  final String status;//Enum
  final num idUsuario;

  const Livros({
    this.id,
    @required this.titulo,
    @required this.autor,
    @required this.avaliacao,
    @required this.categoria,
    @required this.descricao,
    @required this.edicao,
    @required this.editora,
    @required this.idioma,
    @required this.isbn,
    @required this.status,    
    @required this.idUsuario
  });
}