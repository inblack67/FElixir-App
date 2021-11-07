import 'package:felixir/utils/client_provider.dart';
import 'package:felixir/widgets/widget_chat.dart';
import 'package:felixir/widgets/widget_dashboard.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:felixir/widgets/widget_login.dart';
import 'package:felixir/widgets/widget_register.dart';
import 'package:felixir/widgets/widget_sub.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await initHiveForFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final graphqlEndpoint = 'http://localhost:4000/api/graphql';
  final subscriptionEndpoint = 'ws://localhost:4000/socket/websocket?vsn=2.0.0';

  @override
  Widget build(BuildContext context) {
    return ClientProvider(
      uri: graphqlEndpoint,
      subscriptionUri: subscriptionEndpoint,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FElixir',
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          backgroundColor: Colors.red[900],
          primaryColor: Colors.grey[850],
          fontFamily: 'Georgia',
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold,
              color: Colors.red[900],
            ),
            headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.normal,
              color: Colors.red[900],
            ),
            bodyText2: const TextStyle(
              fontSize: 14.0,
              fontFamily: 'Hind',
              color: Colors.grey,
            ),
          ),
        ),
        home: const Sub(),
        routes: {
          Home.id: (context) => const Home(),
          Login.id: (context) => const Login(),
          Register.id: (context) => const Register(),
          Chat.id: (context) => Chat(client: clientFor(uri: graphqlEndpoint)),
          Dashboard.id: (context) => const Dashboard(),
        },
      ),
    );
  }
}
