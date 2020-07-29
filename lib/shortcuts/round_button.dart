import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.title,@required this.onPressed,this.colores,});
  final String title;
  final Function onPressed;
  final Color colores;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0)
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 141),
      child: Text(
        title,
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: onPressed,
      color: colores,
    );
  }
}

class RoundedButtonV2 extends StatelessWidget {
  RoundedButtonV2({this.title,@required this.onPressed,this.colores,});
  final String title;
  final Function onPressed;
  final Color colores;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 8,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0)
      ),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 150),
      child: Text(
        title,
        style: TextStyle(fontSize: 20.0),
      ),
      onPressed: onPressed,
      color: colores,
    );
  }
}
