import 'dart:async';
import 'dart:convert';

import 'package:felixir/utils/apis.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:felixir/widgets/widget_login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const id = 'REGISTER';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  final _registerEndpoint = APIs.registerAPI;

  String _name = '';
  String _email = '';
  String _username = '';
  String _password = '';

  Future<void> registerUser() async {
    final _form = _formKey.currentState;
    if (_form != null && _form.validate()) {
      _form.save();
      Map<String, String> user = {
        'username': _username,
        'password': _password,
        'name': _name,
        'email': _email,
      };

      try {
        var userJson = jsonEncode(user);
        var res = await http.post(
          Uri.parse(_registerEndpoint),
          headers: <String, String>{
            'Accept': 'application/json',
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: userJson,
        );

        setState(() {
          _name = '';
          _email = '';
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
          Navigator.of(context).pushNamed(Login.id);
        } else {
          showDialog(
            context: context,
            builder: (context) =>
                CustomAlert(title: 'Error!', message: resBody['error']),
          );
          print(resBody);
        }
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => CustomAlert(
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
        actions: [
          CloseButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Home.id);
              },
              color: Colors.red),
        ],
        title: const Text('FElixir',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
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
                decoration: const InputDecoration(hintText: 'Enter your name'),
                onChanged: (val) => _name = val,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Enter your email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) => _email = val,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
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
              CustomButton(title: 'Register', onPressed: registerUser),
            ],
          ),
        ),
      ),
    );
  }
}
