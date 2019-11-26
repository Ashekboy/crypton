import 'package:flutter/material.dart';
import 'LoginSignup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'crypton',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginSignup()
    );
  }
}