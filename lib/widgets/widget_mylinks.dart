import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_dashboard.dart';
import 'package:felixir/widgets/widget_login.dart';
import 'package:felixir/widgets/widget_register.dart';
import 'package:flutter/material.dart';

class MyLinks extends StatelessWidget {
  final bool isAuthenticated;
  const MyLinks({Key? key, required this.isAuthenticated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isAuthenticated
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Dashboard',
                onPressed: () {
                  Navigator.of(context).pushNamed(Dashboard.id);
                },
              ),
            ],
          )
        : Row(
            children: [
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
              )
            ],
          );
  }
}
