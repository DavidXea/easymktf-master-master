import 'package:easymktf/Pages/SingUpPage.dart';
import 'package:easymktf/home_widget.dart';
import 'package:easymktf/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'loginPage';
  @override
  _LoginPageState createState() => new _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 55.0,
        child: Image.asset('assets/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      validator: (text){
        if(text.isEmpty || !text.contains("@")) return "E-mail inválido!";
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

    final googleFB = FloatingActionButton(
      child: Image(image: AssetImage("assets/images/google_button.png")),
      onPressed: () {},
    );

    final facebookFB = FloatingActionButton(
      child: Image(image: AssetImage("assets/images/fb_button.png")),
      onPressed: () {

      },
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.grey),
        textAlign: TextAlign.right,
      ),
      onPressed: () {},
    );

    final singUp = GestureDetector(
      onTap: (){
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context)=>SingUpPage())
        );
      },
      child: Text(
        "SIGN UP",
        style: TextStyle(
            color: Colors.pink,
            fontSize: 18
        ),
      ),
    );

    final dontHave = Text(
      "Dont't have an account ? ",
      style: TextStyle(
          fontSize: 15,
          color: Colors.grey
      ),
    );

    final textOrConnectWith = Text(
      "-Or Connect With-",
      style: TextStyle(
          color: Colors.grey
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
         body: ScopedModelDescendant<UserModel>(
           builder: ( context,  child,  model) {
             if(model.isLoading)
               return Center(child: CircularProgressIndicator());
             return Form(
               key: _formKey,
               child : ListView(
                 padding: const EdgeInsets.symmetric(horizontal: 35.0),
                 children: <Widget>[
                   SizedBox(height: 40.0),
                   logo,
                   SizedBox(height: 48.0),
                   email,
                   SizedBox(height: 16.0),
                   password,
                   SizedBox(height: 4.0),
                   forgotLabel,
                   SizedBox(height: 14.0),
                   GestureDetector(
                     child: Container(
                       padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                       height: 55,
                       child : Card(
                           color: Colors.pink,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.all(
                                   Radius.circular(50.0)
                               )
                           ),
                           child: Center(
                             child: Text(
                               "LOGIN",
                               textAlign: TextAlign.center,
                               style: TextStyle(color: Colors.white,
                                 fontSize: 22,
                               ),
                             ),
                           )
                       ),
                     ),
                   ),
                   SizedBox(height: 30.0),
                   Container(
                     padding: EdgeInsets.fromLTRB(85, 0, 0, 0),
                     child: textOrConnectWith,
                   ),

                   SizedBox(height: 30.0),
                   Container(
                     padding: EdgeInsets.fromLTRB(74, 0, 0, 0),
                     child: Row(
                       children: <Widget>[
                         googleFB,
                         Padding(
                           padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
                         ),
                         facebookFB
                       ],
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                     child: Row(
                       children: <Widget>[
                         dontHave,
                         singUp
                       ],
                     ),
                   ),

                 ],
               ),
             );
           },

         )

      );
  }
}
