import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart'; //para renderizar enum

class Usuario {
  String nome;
  String dataDeAtualizacao;
  String dataDeCriacao;
  String email;
  String telefone;

  Usuario({
    @required this.nome,
    @required this.dataDeAtualizacao,
    @required this.dataDeCriacao,
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
  //final Usuario usuario;
  final String nomeUsuario;
  final String dataDeAtualizacao;
  final String dataDeCriacao;
  final String email;
  final String telefone;  


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
    @required this.nomeUsuario,
    @required this.dataDeAtualizacao,
    @required this.dataDeCriacao,
    @required this.email,
    this.telefone
  });
}