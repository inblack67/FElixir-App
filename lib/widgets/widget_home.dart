import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_login.dart';
import 'package:felixir/widgets/widget_register.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const id = 'HOME';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('FElixir',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Hero(
                    tag: 'logo',
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.jpeg'),
                      radius: 70.0,
                    )),
              ),
              Text(
                'FElixir',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              )
            ],
          ),
          const SizedBox(height: 16.0),
          CustomButton(
            title: 'Login',
            onPressed: () {
              Navigator.of(context).pushNamed(Login.id);
            },
          ),
          const SizedBox(height: 16.0),
          CustomButton(
            title: 'Register',
            onPressed: () {
              Navigator.of(context).pushNamed(Register.id);
            },
          ),
        ],
      ),
    );
  }
}
