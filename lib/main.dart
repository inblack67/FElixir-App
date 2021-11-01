import 'package:felixir/widgets/widget_dashboard.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:felixir/widgets/widget_login.dart';
import 'package:felixir/widgets/widget_register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FElixir',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        backgroundColor: Colors.red,
        primaryColor: Colors.grey[850],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          headline6: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.normal,
            color: Colors.red,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
            color: Colors.grey,
          ),
        ),
      ),
      home: const Home(),
      routes: {
        Home.id: (context) => const Home(),
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        Dashboard.id: (context) => const Dashboard(),
      },
    );
  }
}
