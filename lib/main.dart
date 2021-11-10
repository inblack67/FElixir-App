import 'package:felixir/utils/client_provider.dart';
import 'package:felixir/widgets/widget_chat.dart';
import 'package:felixir/widgets/widget_dashboard.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:felixir/widgets/widget_login.dart';
import 'package:felixir/widgets/widget_register.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

void main() async {
  await initHiveForFlutter();
  runApp(const GraphQLProvider());
}

class MyApp extends StatelessWidget {
  final bool websocketConnected;
  const MyApp({Key? key, required this.websocketConnected}) : super(key: key);

  final graphqlEndpoint = 'http://localhost:4000/api/graphql';
  final subscriptionEndpoint = 'ws://localhost:4000/socket/websocket';

  @override
  Widget build(BuildContext context) {
    print('websocketConnected $websocketConnected');
    return ClientProvider(
        uri: graphqlEndpoint,
        // subscriptionUri: websocketConnected ? subscriptionEndpoint : null,
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
          home: const Home(),
          routes: {
            Home.id: (context) => const Home(),
            Login.id: (context) => const Login(),
            Register.id: (context) => const Register(),
            Chat.id: (context) => Chat(
                websocketConnected: websocketConnected,
                client: clientFor(
                  uri: graphqlEndpoint,
                  // subscriptionUri: websocketConnected ? subscriptionEndpoint : null,
                )),
            Dashboard.id: (context) => const Dashboard(),
          },
        ));
  }
}

class GraphQLProvider extends StatefulWidget {
  const GraphQLProvider({Key? key}) : super(key: key);

  @override
  GraphQLProviderState createState() => GraphQLProviderState();
}

class GraphQLProviderState extends State<GraphQLProvider> {
  late PhoenixSocket _socket;
  bool _websocketConnected = false;

  void playChannels() {
    print('playing channels...');
    _socket = PhoenixSocket('ws://localhost:4000/socket/websocket')..connect();
    _socket.closeStream.listen((event) {
      setState(() {
        _websocketConnected = false;
      });
      print('websocket disconnected...');
    });
    _socket.openStream.listen((event) {
      setState(() {
        _websocketConnected = true;
      });
      print('websocket connected...');
    });
  }

  @override
  void initState() {
    super.initState();
    playChannels();
  }

  @override
  Widget build(BuildContext context) {
    return MyApp(websocketConnected: _websocketConnected);
  }
}
