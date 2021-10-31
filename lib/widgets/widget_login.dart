import 'dart:async';
import 'dart:convert';

import 'package:felixir/entities/user.dart';
import 'package:felixir/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const id = 'LOGIN';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _loginEndpoint = 'http://localhost:4000/api/auth/login';

  String _username = '';
  String _password = '';

  Future<void> loginUser() async {
    final _form = _formKey.currentState;
    if (_form != null && _form.validate()) {
      _form.save();
      Map<String, String> user = {
        'username': _username,
        'password': _password,
      };

      try {
        var userJson = jsonEncode(user);
        var res = await http.post(
          Uri.parse(_loginEndpoint),
          headers: <String, String>{
            'Accept': 'application/json',
            'Content-Type': 'application/json; charset=UTF-8',
            
          },
          body: userJson,
        );
        print(res.headers);
        var resBody = json.decode(res.body);
        print(resBody);
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: const Text('FElixir',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              )),
          backgroundColor: Colors.black,
          actions: [
            CloseButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                color: Colors.purple),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              const Expanded(
                child: Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/logo.jpeg',
                      ),
                      radius: 70.0,
                    )),
              ),
              const SizedBox(height: 40.0),
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Enter your username'),
                onChanged: (val) => _username = val,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Username is required';
                  }
                  return null;
                },
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                onChanged: (val) => _password = val,
                decoration: const InputDecoration(hintText: 'Enter password'),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Password is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30.0),
              CustomButton(title: 'Login', onPressed: loginUser),
            ],
          ),
        ),
      ),
    );
  }
}
