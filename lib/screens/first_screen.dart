import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/screens/login_screen.dart';
import 'package:flutter_project_iconic/screens/register_screen.dart';
import 'package:flutter_project_iconic/shortcuts/round_button.dart';

class FirstScreen extends StatelessWidget {
  static const String nav = 'first_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                elevation: 30,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlue.shade200,
                  radius: 70,
                  child: Image.network('https://cdn4.iconfinder.com/data/icons/planner-color/64/popcorn-movie-time-512.png')
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'MOVIES FOR YOU',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RoundedButtonV2(
              title: 'Log In',
              colores: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, LogInScreen.nav);
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            RoundedButton(
              title: 'Register',
              colores: Colors.lightBlue.shade200,
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