import 'package:flutter/material.dart';
import 'ScreenArguments.dart';

class PassArgumentsScreen extends StatefulWidget{
  static const routerName = '/passArguments';
  final String title1;
  final String message1;
  final int number1;

  PassArgumentsScreen({this.title1, this.message1, this.number1});

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState
    return _PassArgumentsScreenState(title2: title1, message2: message1, number2: number1 );
  }
}

class _PassArgumentsScreenState extends State<PassArgumentsScreen>{
  final String title2;
  final String message2;
  final int number2;
  _PassArgumentsScreenState({this.title2, this.message2, this.number2});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title2),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(message2),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Number is $number2'),
            )
          ],
        )
      ),
    );
  }
}