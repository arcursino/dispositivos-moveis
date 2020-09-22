import 'package:flutter/material.dart';
import 'package:literall/services/conta_api.dart';
import 'package:literall/services/login_api.dart';

import 'home.dart';

class CriarConta extends StatelessWidget {
  final _ctrlEmail = TextEditingController();
  final _ctrlNome = TextEditingController();
  final _ctrlSenha = TextEditingController();
  final _ctrlTelefone = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: new AssetImage("assets/background.jpeg"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: _body(context),
      ),
    )
    );
  }


  _body(BuildContext context){
    var form = Form(
        key:_formKey,
        child: Container(
          padding: EdgeInsets.only(
                top: 60,
                left: 40,
                right: 40,
              ),
              color: Colors.transparent,
          child: ListView(
            children: <Widget>[ 
              Container(
                width: double.infinity,
                height: 180,
                color: Colors.white38,
                  child: SizedBox(
                      width: 128,
                      height: 128,
                      child: Image.asset("assets/logo_literall.png")),
                ),
                SizedBox(
                  height: 60,
                ),
              _textFormField(
                "Email",
                "Digite o Email",
                controller: _ctrlEmail,
                validator: _validaEmail
              ),
              _textFormField(
                "Nome",
                "Digite seu nome",
                controller: _ctrlNome,
                validator: _validaEmail
              ),
              _textFormField(
                "Senha",
                "Digite a Senha",
                senha: true,
                controller: _ctrlSenha,
                validator: _validaSenha
              ),
              _textFormField(
                "Telefone",
                "Digite o Telefone",
                controller: _ctrlTelefone,
                validator: _validaTelefone
              ),       
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      )),
                  child: Center(
                    child: SizedBox.expand(
                      child: FlatButton(
                        disabledColor: Colors.black45,
                        child: Text('Criar Conta'),
                        onPressed: (){
                          _clickButton(context);
                        },
                      ),
                    ),
                  ),
                ),
            ], 
      ),
        )
      );
      return form;
  }

  _textFormField(
    String label,
    String hint, {
      bool senha = false,
      TextEditingController controller,
      FormFieldValidator<String> validator,
    }) {
      return TextFormField(
        controller: controller,
        validator: validator,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          labelStyle: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          fillColor: Colors.white70,
        ),
        style: TextStyle(
          fontSize: 25,
          color: Colors.white70,
        ),
      );
  }


  String _validaEmail(String texto) {
    if(texto.isEmpty){
      return "Digite o Email";
    }
    return null;
  }

  String _validaSenha(String texto) {
    if(texto.isEmpty){
      return "Digite a Senha";
    }
    return null;
  }

  String _validaTelefone(String texto) {
    if(texto.isEmpty){
      return "Digite o telefone";
    }
    if(texto.length<11){
      return "Digite o número de telefone com ddd";
    }
    return null;
  }
  
  void _clickButton(BuildContext context) async {
    bool formOk = _formKey.currentState.validate();

    if (!formOk) {
      return;
    }

    String email = _ctrlEmail.text;
    String nome = _ctrlNome.text;
    String senha = _ctrlSenha.text;
    String telefone = _ctrlTelefone.text;

    print("email: $email nome: $nome senha: $senha telefone: $telefone");

    var response = await ContaApi.login(email, nome, senha, telefone);

    if(response) {
      _navegaLogin(context);
    }
  }

  _navegaLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
    
  }

}
