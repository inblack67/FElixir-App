import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

ValueNotifier<GraphQLClient> clientFor({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(uri);
  if (subscriptionUri != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      subscriptionUri,
    );
    print('CONNECTED!');
    link = Link.split((request) => request.isSubscription, websocketLink, link);
  }

  // print('making socket...');
  // PhoenixSocket socket = PhoenixSocket('ws://localhost:4000/socket/websocket')
  //   ..connect();

  // WebSocketLink? webSocketLink;

  // socket.openStream.listen((event) {
  //   print('is connected => ${socket.isConnected}');
  //   print('connected...');
  //   webSocketLink = WebSocketLink('ws://localhost:4000/socket/websocket');
  // });

  // print('webSocketLink $webSocketLink');

  return ValueNotifier<GraphQLClient>(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );
}

/// Wraps the root application with the `graphql_flutter` client.
/// We use the cache for all state management.
class ClientProvider extends StatelessWidget {
  ClientProvider({
    Key? key,
    required this.child,
    required String uri,
    String? subscriptionUri,
  })  : client = clientFor(
          uri: uri,
          subscriptionUri: subscriptionUri,
        ),
        super(key: key);

  final Widget child;
  final ValueNotifier<GraphQLClient> client;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: child,
    );
  }
}
