import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginApi{
  static Future<bool> login(String email, String password) async{


var url = 'https://literall.herokuapp.com/api/login';

var header = {"content-type": "application/json"};

Map params = {
  "email" : email,
  "senha" : password
};


var _body = json.encode(params);
print("json enviado : $_body");

var response = await http.post(url, headers: header, body: _body);

print('Response status: ${response.statusCode}');

print('Response body: ${response.body}');

    return true;

  }
}