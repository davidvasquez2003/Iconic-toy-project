import 'package:flutter/material.dart';
import 'package:flutter_project_iconic/constants.dart';
import 'package:flutter_project_iconic/models/carousel.dart';

class MainScreen extends StatelessWidget {
  static const nav = 'main_screen';

  @override
  Widget build(BuildContext context) {
//    TimeOfDay _currentTime = TimeOfDay.now();
//    DateTime _currentDate = DateTime.now();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.black87],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Movies For You',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: kTextFieldInputDecoration,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Trending Movies',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: Carousel(
                    movieType: 1,
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'New movies',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  child: Carousel(
                    movieType: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // get the text in the TextField and start the Second Screen
//  void _sendDataToSecondScreen(BuildContext context) {
//    String textToSend = textFieldController.text;
//    Navigator.push(
//        context,
//        MaterialPageRoute(
//          builder: (context) => SecondScreen(text: textToSend,),
//        ));
//  }
//}
}
