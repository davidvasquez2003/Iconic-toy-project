import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  ItemCard({this.cardMainColor, this.cardImage});

  final Color cardMainColor;
  final Image cardImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Card(
          elevation: 19.0,
          child: Container(
            child: cardImage,
            height: 200.0,
            width: 130.0,
          ),
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.symmetric(horizontal: 16)
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Film Title',
          style: TextStyle(fontSize: 18.0,color: Colors.white),
        ),
      ],
    );
  }
}
