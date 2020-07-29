import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/screens/login_screen.dart';
import 'package:flutter_project_iconic/screens/register_screen.dart';
import 'package:flutter_project_iconic/shortcuts/round_button.dart';

class FirstScreen extends StatelessWidget {
  static const String nav = 'first_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Sign_of_the_Deathly_Hallows.svg/884px-Sign_of_the_Deathly_Hallows.svg.png'),
                height: 60.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'HARRY POTTER',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundedButtonV2(
              title: 'Log In',
              colores: Colors.blueGrey,
              onPressed: () {
                Navigator.pushNamed(context, LogInScreen.nav);
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            RoundedButton(
              title: 'Register',
              colores: Colors.grey,
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.nav);
              },
            ),
          ],
        ),
      ),
    );
  }
}