import 'package:easymktf/login_page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  static String tag = 'singUpPage';
  @override
  _SingUpPageState createState() => new _SingUpPageState();
}


class _SingUpPageState extends State<SingUpPage> {

  @override
  Widget build(BuildContext context) {


    final endereco = TextFormField(
      autofocus: false,
      validator: (text){
        if(text.isEmpty || text.length <6) return "Invalid Password";
      },
      decoration: InputDecoration(
        labelText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(),
      ),
    );

    final fullName = TextFormField(
      autofocus: false,
      validator: (text){
        if(text.isEmpty || text.length <6) return "Invalid Password";
      },
      decoration: InputDecoration(
        labelText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      validator: (text){
        if(text.isEmpty || text.length <6) return "Invalid Password";
      },
      decoration: InputDecoration(
        labelText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(),
      ),
    );

    final password = TextFormField(
      validator: (text){
        if(text.isEmpty || text.length <6) return "Invalid Password";
      },
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(/*borderRadius: BorderRadius.circular(32.0)*/),
      ),
    );



    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
      ),
        backgroundColor: Colors.white,
        body: Form(
          child : ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            children: <Widget>[
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 16.0),
              password,
              SizedBox(height: 16.0),
              fullName,
              SizedBox(height: 16.0),
              endereco,
              SizedBox(height: 16.0),
              SizedBox(
                height: 44.0,
                child: RaisedButton(
                  child: Text("Criar Conta",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=>LoginPage())
                    );
                    },
                ),
              )
            ]
          ),
        )
    );
  }
}
