import 'package:flutter/material.dart';
import 'ScreenArguments.dart';

class ExtractArgumentsScreen extends StatefulWidget{
  static const routerName = '/ExtractArgumentsScreen';

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExtractArgumentsScreenState();
  }
}

class _ExtractArgumentsScreenState extends State<ExtractArgumentsScreen>{
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(announce[3].message),
      ),
    );
  }
}
