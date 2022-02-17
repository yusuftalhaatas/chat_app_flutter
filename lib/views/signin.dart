import 'package:chat_app_flutter/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_flutter/widgets/widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/Huni.png',
          width: 200,
        ),
        flexibleSpace: Image(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: textFieldDecoration('Email'),
                style: simpleTextFieldStyle(),
              ),
              TextField(
                decoration: textFieldDecoration('Parola'),
                style: simpleTextFieldStyle(),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Container(
                  child: Text(
                    'Parolayı Unuttum',
                    style: simpleTextFieldStyle(),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xff007EF4), const Color(0xff2A75BC)],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Giriş Yap',
                  style: mediumTextFieldStyle(),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xff007EF4), const Color(0xff2A75BC)],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Google İle Giriş Yap',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hesabınız Yok Mu? ",style: mediumTextFieldStyle(),),
                  Text("Kayıt Ol",style: TextStyle(color: Colors.black45, fontSize: 17,
                  decoration: TextDecoration.underline),),
                ],
              ),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
