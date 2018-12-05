//import 'package:flutter/material.dart';
//import 'home_widget.dart';
//
//void main() => runApp(App());
//
//class App extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'My Flutter App',
//      home: Home(),
//    );
//  }
//}


import 'package:easymktf/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'login_page.dart';
import 'home_widget.dart';
import 'home_page.dart';
import 'package:easymktf/Pages/MyListProduct/ProductList/ProductListPage.dart';
import 'package:easymktf/Pages/navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        title: 'EasyMKT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.blueGrey, backgroundColor: Colors.white,
          fontFamily: 'Nunito',
        ),
        home: LoginPage(),

      ),
    );
  }
}