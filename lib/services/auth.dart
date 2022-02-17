import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app_flutter/modal/user.dart';

class AuthMethods{
 final FirebaseAuth _auth = FirebaseAuth.instance;
 User
 Future signInWithEmailAndPassword(String email,String password) async{
   try {
     AuthResult result = await _auth.createUserWithEmailAndPassword(
         email: email, password: password);
      user = result.user;
     return _userFromFirebaseUser(user);
   } catch (e) {
     print(e.toString());
     return null;
   }
 }


   }

