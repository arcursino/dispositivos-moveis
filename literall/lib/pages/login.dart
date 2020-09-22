import 'package:flutter/material.dart';
import 'package:literall/pages/conta.dart';
import 'package:literall/services/login_api.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  final _ctrlEmail = TextEditingController();
  final _ctrlSenha = TextEditingController();
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
                "Senha",
                "Digite a Senha",
                senha: true,
                controller: _ctrlSenha,
                validator: _validaSenha
              ),
              Container(
                  height: 40,
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text(
                      "Recuperar Senha",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () => {},
                  ),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Entrar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              child: SizedBox(
                                child: Image.asset("assets/logo_book.png"),
                                height: 28,
                                width: 28,
                              ),
                            ),
                          ],
                        ),
                        onPressed: (){
                          _clickButton(context);
                          },
                      ),
                    ),
                  ),
                ),
              SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      )),
                  child: Center(
                    child: SizedBox.expand(
                      child: FlatButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Entrar com Gmail",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Container(
                                child: SizedBox(
                                  child: Image.asset("assets/logo_gmail.png"),
                                  height: 28,
                                  width: 28,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          }),
                    ),
                  ),
                ),
              SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text(
                      "Criar Conta",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/criar');
                    }
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
  
  void _clickButton(BuildContext context) async {
    bool formOk = _formKey.currentState.validate();

    if (!formOk) {
      return;
    }

    String email = _ctrlEmail.text;
    String senha = _ctrlSenha.text;

    print("login: $email senha: $senha");

    var response = await LoginApi.login(email, senha);

    if(response) {
      _navegaHomepage(context);
    }
  }

  _navegaHomepage(BuildContext context) {
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context) => HomePage(),
      )
    );
  }

}
