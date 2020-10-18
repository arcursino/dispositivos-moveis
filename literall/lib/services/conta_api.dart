import 'dart:convert';

import 'package:http/http.dart' as http;

class ContaApi{
  static Future<bool> conta(String email, String nome, String senha, String telefone) async{


var url = 'https://literall.herokuapp.com/api/usuario';

var header = {"content-type": "application/json"}; 

Map params = {
  "email" : email,
  "nome" : nome,
  "senha" : senha,
  "telefone" : telefone,
};


var _body = json.encode(params);
print("json enviado : $_body");

var response = await http.post(url, headers: header, body: _body);

print('Response status: ${response.statusCode}');

print('Response body: ${response.body}');

    return true;

  }
}