import 'package:felixir/graphql/subscriptions.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class WNewMessage extends StatelessWidget {
  final String roomId;
  const WNewMessage({Key? key, required this.roomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Subscription(
        options: SubscriptionOptions(
            document: gql(newMessageSubscription),
            variables: {'roomId': roomId}),
        builder: (result) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          print('loading => $result.loading');
          print('data => $result.data');

          return const Text('done');

          // if (result.isLoading) {
          //   return const Center(
          //     child:  CircularProgressIndicator(),
          //   );
          // }
          // return ResultAccumulator.appendUniqueEntries(
          //   latest: result.data,
          //   builder: (context, {results}) => DisplayReviews(
          //     reviews: results.reversed.toList(),
          //   ),
          // );
        });
  }
}
