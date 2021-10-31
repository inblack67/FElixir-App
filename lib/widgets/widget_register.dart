import 'dart:async';

import 'package:felixir/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const id = 'REGISTER';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _username = '';
  String _password = '';

  Future<void> registerUser() async {
    final _form = _formKey.currentState;
    if (_form != null && _form.validate()) {
      _form.save();
      print('$_name $_email $_username, $_password');
    }
  }

  handleGoBack() {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          CloseButton(onPressed: handleGoBack, color: Colors.purple),
        ],
        title: const Text('FElixir',
            style: TextStyle(
              color: Colors.purple,
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
