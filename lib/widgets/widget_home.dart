import 'dart:convert';

import 'package:felixir/utils/apis.dart';
import 'package:felixir/widgets/widget_mylinks.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const id = 'HOME';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isAuthenticated = false;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  getCurrentUser() async {
    try {
      var res = await http.get(Uri.parse(APIs.getMeAPI),
          headers: <String, String>{'Accept': 'application/json'});
      var data = json.decode(res.body);
      print(data);
      if (data['success'] == true) {
        setState(() {
          _isAuthenticated = true;
        });
      } else {
        print(data);
      }
    } catch (e) {
      print(e);
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
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
                  color: Colors.red[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              )
            ],
          ),
          const SizedBox(height: 16.0),
          MyLinks(isAuthenticated: _isAuthenticated),
        ],
      ),
    );
  }
}
