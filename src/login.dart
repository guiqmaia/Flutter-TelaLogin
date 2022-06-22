import 'package:flutter/material.dart';
import 'package:telalogin/src/form.dart';

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Login'),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      body: Formulario(),
    );

  }

}