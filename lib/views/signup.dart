import 'package:chat_app_flutter/widgets/widget.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameTextEditingController=new TextEditingController();
  TextEditingController emailTextEditingController=new TextEditingController();
  TextEditingController passwordTextEditingController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
            TextFormField(
              controller: userNameTextEditingController,
              decoration: textFieldDecoration('Kullanıcı Adı'),
              style: simpleTextFieldStyle(),
            ),
            TextFormField(
              controller: emailTextEditingController,
              decoration: textFieldDecoration('Email'),
              style: simpleTextFieldStyle(),
            ),
            TextFormField(
              controller: passwordTextEditingController,
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
                'Kayıt Ol',
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
                'Google İle Kayıt Ol',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Zaten Hesabın Var Mı? ",style: mediumTextFieldStyle(),),
                Text("Giriş Yap",style: TextStyle(color: Colors.black45, fontSize: 17,
                    decoration: TextDecoration.underline),),
              ],
            ),
            SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    ),);
  }
}
