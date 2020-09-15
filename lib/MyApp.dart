import 'package:flutter/material.dart';
import 'package:flutter_app_text/ExtractArgumentsScreen.dart';
import 'HomeScreen.dart';
import 'ScreenArguments.dart';
import 'PassArgumentsScreen.dart';


class MyApp extends StatelessWidget{

  Widget text(String text){
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      onGenerateRoute: (settings){
        if(settings.name == PassArgumentsScreen.routerName) {
          final ScreenArguments args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title1: args.title,
                message1: args.message,
                number1: args.number,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
        title: 'Navigation with Argument',
      home: HomeScreen(),
      routes: {
        ExtractArgumentsScreen.routerName: (context) => ExtractArgumentsScreen(),
        //PassArgumentsScreen.routerName: (context) => PassArgumentsScreen()
      },
    );
  }
}