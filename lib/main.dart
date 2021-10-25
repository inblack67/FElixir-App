import 'package:felixir/widgets/widget_home.dart';
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
        backgroundColor: Colors.purple[50],
        primaryColor: Colors.grey[850],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
          headline6: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.normal,
            color: Colors.purple,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
            color: Colors.grey,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
