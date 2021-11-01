import 'dart:async';
import 'dart:convert';

import 'package:felixir/utils/apis.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_dashboard.dart';
import 'package:felixir/widgets/widget_home.dart';
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

  final _loginEndpoint = APIs.loginAPI;

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
        var body = jsonEncode(user);
        var res = await http.post(
          Uri.parse(_loginEndpoint),
          headers: <String, String>{
            'Accept': 'application/json',
            'Content-Type': 'application/json; charset=UTF-8'
          },
          body: body,
        );

        setState(() {
          _username = '';
          _password = '';
        });

        var resBody = json.decode(res.body);

        if (resBody['success'] == true) {
          showDialog(
            context: context,
            builder: (context) =>
                CustomAlert(title: 'Success!', message: resBody['message']),
          );
          Navigator.of(context).pushNamed(Dashboard.id);
        } else {
          showDialog(
            context: context,
            builder: (context) =>
                CustomAlert(title: 'Error!', message: resBody['error']),
          );

          print(resBody);
        }
      } catch (e) {
        setState(() {
          _username = '';
          _password = '';
        });
        showDialog(
          context: context,
          builder: (context) => const CustomAlert(
            title: 'Error!',
            message: 'Something went wrong!',
            okTitle: 'I understand',
          ),
        );
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text('FElixir',
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              )),
          backgroundColor: Colors.black,
          actions: [
            CloseButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Home.id);
                },
                color: Colors.red[900]),
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
                // onChanged: (val) => _username = val,
                onSaved: (val) => setState(() {
                  _username = val!;
                }),
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
                onSaved: (val) => setState(() {
                  _password = val!;
                }),
                // onChanged: (val) => _password = val,
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
