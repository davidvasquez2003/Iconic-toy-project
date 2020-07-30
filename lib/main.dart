import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/screens/first_screen.dart';
import 'package:flutter_project_iconic/screens/login_screen.dart';
import 'package:flutter_project_iconic/screens/main_screen.dart';
import 'package:flutter_project_iconic/screens/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: FirstScreen.nav,
        routes: {
          FirstScreen.nav:(context) => FirstScreen(),
          LogInScreen.nav:(context) => LogInScreen(),
          RegisterScreen.nav: (context)=> RegisterScreen(),
          MainScreen.nav: (context) => MainScreen(),
          //MovieDetail.nav: (context)=> MovieDetail(),
//          ApiKey.nav: (context) => ApiKey(),
        }
    );

  }
}
