import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  Future<String> signIn(String email,String pass) async {
    final FirebaseUser user = (await FirebaseAuth
    .instance
    .signInWithEmailAndPassword(email: email, password: pass))
    .user;
  }

  Future<String> signUp(String email,String pass) async {
    final FirebaseUser user = (await FirebaseAuth
    .instance
    .createUserWithEmailAndPassword(email: email, password: pass))
    .user;
  }


}