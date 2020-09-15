import 'package:flutter/material.dart';

class ScreenArguments {
  final String title;
  final String message;
  final int number;
  ScreenArguments({this.message, this.title, this.number});
}


List<ScreenArguments> announce = [
  ScreenArguments(title: 'Hello World', message: 'Hi! Bro', number: 2),
  ScreenArguments(title: 'Hello Papa', message: 'Hi! Dad', number: 17),
  ScreenArguments(title: 'Hello Mama', message: 'Hi! Mom', number: 12),
  ScreenArguments(title: 'Good morning', message: 'tik tok', number: 23),
];