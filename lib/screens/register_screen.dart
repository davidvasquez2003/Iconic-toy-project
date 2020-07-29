import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/constants.dart';
import 'package:flutter_project_iconic/screens/main_screen.dart';
import 'package:flutter_project_iconic/shortcuts/round_button.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  static const String nav = 'register_screen';
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200.0,
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Sign_of_the_Deathly_Hallows.svg/884px-Sign_of_the_Deathly_Hallows.svg.png'),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextFormField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextFormField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: ' Re enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              colores: Colors.grey,
              title: 'Register',
              onPressed: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if (newUser != null) {
                    Navigator.pushNamed(context, MainScreen.nav);
                  }
                } catch (error) {
                  print(error);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
