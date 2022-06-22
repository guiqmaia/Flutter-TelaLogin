import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() => _Formulario();
}

class _Formulario extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Digite Seu E-mail',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Você Precisa Digitar Algo';
              }
            },
          ),
          TextFormField(
            obscureText: true,
              decoration: InputDecoration(hintText: 'Digite Sua Senha'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Você Precisa Digitar Uma Senha';
                } else if (value.length <= 4) {
                  return 'Senha Precisa De, No Mínimo, 5 caracteres';
                }
              }),
          RaisedButton(
            onPressed: () {
              if(_formkey.currentState!.validate()){
                print('Formulário Validado');
              }else{
                print('Formulário Não Está Correto');
              }         
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
