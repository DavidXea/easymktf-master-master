import 'dart:ui';

import 'package:meta/meta.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:firebase_auth/firebase_auth.dart';




class UserModel extends Model {

  FirebaseAuth _auth = FirebaseAuth.instance;

  FirebaseUser firebaseUser;

  Map<String, dynamic> userData = Map();

  bool isLoading = false;

  void signUp({@required Map<String, dynamic> userData, @required String pass, @required VoidCallback onSuccess, @required VoidCallback onFail}){
  isLoading = true;
  notifyListeners();


  _auth.createUserWithEmailAndPassword(
      email: userData["email"], 
      password: pass
  ).then((user){
    firebaseUser = user;


    _saveUserData(userData);

    onSuccess();
    isLoading = false;
  }).catchError((e){
    onFail();
    isLoading = false;
    notifyListeners();

  });

  }


  void SignIn() async{
    isLoading = true;

    notifyListeners();

    await Future.delayed(Duration(seconds: 3));
    isLoading = false;
    notifyListeners();
  }

  void recoverPass(){

  }
  bool isLoggedIn(){

  }

  Future<Null> _saveUserData(Map<String, dynamic> userData){
    this.userData = userData;


  }

}