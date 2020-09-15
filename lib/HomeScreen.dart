import 'package:flutter/material.dart';
import 'package:flutter_app_text/ExtractArgumentsScreen.dart';
import 'ScreenArguments.dart';
import 'PassArgumentsScreen.dart';
//import 'MyApp.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Navigate to screen that extracts arguments'),
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    ExtractArgumentsScreen.routerName,
                    arguments: ScreenArguments(
                        title: announce[3].title,
                        message:announce[2].message,
                        number: announce[0].number
                    )
                );
              },
            ),
            RaisedButton(
              child: Text('Navigate to a named that accepts arguments'),
              onPressed: (){
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routerName,
                  arguments: ScreenArguments(
                    title: announce[2].title,
                    message: announce[3].message,
                    number: announce[1].number
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}