import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration:new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/background.jpeg"),
            fit: BoxFit.cover,)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.only(
              top:100,
              left: 40,
              right: 40,
            ),
            color: Colors.transparent,          
            child: ListView(
              children: <Widget> [
                Container(
                  child:SizedBox(
                    width: 128,
                    height: 128,
                    child: Image.asset("assets/logo_literall.png")
                ),
              ),
              SizedBox(
                height:60,
              ),
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ), 
                ),
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
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
          SizedBox(height: 30,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              )
              ),
              child: Center(
                child:SizedBox.expand(
                  child: FlatButton(
                    child: Row(    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                      children: <Widget>[
                        Text("Entrar", 
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
                    onPressed: () => {},
                  ),
                ),
              ),
            ),
          SizedBox(height: 20,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.all(
                Radius.circular(35),
              )
              ),
              child: Center(
                child:SizedBox.expand(
                  child: FlatButton(
                    child: Row(    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                      children: <Widget>[
                        Text("Entrar com Gmail", 
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
                    onPressed: () => {},
                  ),
                ),
              ),
            ),
          SizedBox(height: 30,
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
              onPressed: () => {},
            ),
          ),
          ]
        )
      ),
    ),
  ),    
  );
  }
}