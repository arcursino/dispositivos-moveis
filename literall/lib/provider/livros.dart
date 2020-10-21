import 'dart:math';

import 'package:flutter/material.dart';
import 'package:literall/data/dummy_livros.dart';
import 'package:literall/model/livros_mock.dart';

class Livro with ChangeNotifier {
  final Map<String, Livros> _items = {...DUMMY_LIVROS};

  List <Livros> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Livros byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(Livros livro) {
    if(livro == null) {
      return;
    }

    if(livro.id != null &&
       livro.id.trim().isNotEmpty &&
       _items.containsKey(livro.id)) {
      _items.update(
          livro.id,
          (_) => Livros(
            id: livro.id,
            titulo: livro.titulo,
            autor: livro.autor,
            avaliacao: livro.avaliacao,
            categoria: livro.categoria,
            descricao: livro.descricao,        
            edicao: livro.edicao,
            editora: livro.editora,
            idioma: livro.idioma,
            isbn: livro.isbn,
            status: livro.status,
            idUsuario: livro.idUsuario,
          ),
      );
    } else {
    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
      id,
      () => Livros(
        id: id,
        titulo: livro.titulo,
        autor: livro.autor,
        avaliacao: livro.avaliacao,
        categoria: livro.categoria,
        descricao: livro.descricao,        
        edicao: livro.edicao,
        editora: livro.editora,
        idioma: livro.idioma,
        isbn: livro.isbn,
        status: livro.status,
        idUsuario: livro.idUsuario
      ),
    );
    }
    notifyListeners();
  }

  void remove(Livros livro) {
    if(livro != null && livro.id != null) {
      _items.remove(livro.id);
      notifyListeners();
    }
  }
}