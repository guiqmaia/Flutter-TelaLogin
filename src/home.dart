import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
          child: Container(
              child: Column(
        children: [
          Text(
            'Bem Vindo Ao App',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(height: 20),
          RaisedButton(
            child: Text('Fazer Login'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ))),
    );
  }
}
