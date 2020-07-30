import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black87, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(14.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(16.0)),
  ),
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.black38,
  icon: Icon(
    Icons.search,
    color: Colors.white,
  ),
  hintText: 'Search movie by name',
  hintStyle: TextStyle(
    color: Colors.white24,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(7.0)),
    borderSide: BorderSide.none,
  ),
);
