import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telalogin/src/form.dart';
import 'package:telalogin/src/home.dart';
import 'package:telalogin/src/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      routes: {
        '/home': (context)=> HomePage(),
        '/login': (context)=> Login(),
      },
      initialRoute: '/home',
    );

  }

}