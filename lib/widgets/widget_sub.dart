import 'package:felixir/graphql/subscriptions.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Sub extends StatefulWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: Subscription(
        onSubscriptionResult: (queryRes, _client) {
          print('onSubscriptionResult');
          print(queryRes.data);
        },
        builder: (result) {
          print('result');
          print(result.data);
          print(result.toString());
          return const Text('ok');
        },
        options: SubscriptionOptions(
            document: gql(newMessageSubscription),
            variables: {
              'roomId': '1',
            }),
      ),
    );
  }
}
