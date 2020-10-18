import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Usuario {
  String nome;
  DateTime dataDeAtualizacao;
  DateTime dataDeCriacao;
  String email;
  String telefone;
}

class LivrosApi{
  static Future<bool> livro(String autor, EnumProperty avaliacao, String categoria, 
                            String descricao, String edicao, String editora,
                            String idioma, String isbn, EnumProperty status, 
                            String titulo, String usuario) 
                            async{


var url = 'https://literall.herokuapp.com/api/livro';

var header = {"content-type": "application/json"}; 

Map params = {
  "autor": autor,
  "avaliacao": avaliacao,
  "categoria": categoria,
  "descricao": descricao,
  "edicao": edicao,
  "editora": editora,
  "idioma": idioma,
  "isbn": isbn,
  "status": status,
  "titulo": titulo,
  "usuario": usuario
};


var _body = json.encode(params);
print("json enviado : $_body");

var response = await http.post(url, headers: header, body: _body);

print('Response status: ${response.statusCode}');

print('Response body: ${response.body}');

    return true;

  }
}