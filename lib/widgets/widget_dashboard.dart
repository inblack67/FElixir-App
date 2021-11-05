import 'package:felixir/graphql/queries.dart';
import 'package:felixir/utils/chat_arguments.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/widget_chat.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const id = 'DASHBOARD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('FElixir | Rooms',
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
      body: Query(
        options: QueryOptions(
          document: gql(roomsQuery),
        ),
        builder: (QueryResult result,
            {Future<QueryResult> Function(FetchMoreOptions)? fetchMore,
            Future<QueryResult?> Function()? refetch}) {
          if (result.hasException) {
            return CustomAlert(
                title: 'Error!', message: result.exception.toString());
          }
          // print(result.data);
          if (result.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            );
          }
          if (result.data == null) {
            return const CustomAlert(
              title: 'Error!',
              message: 'Failed to fetch',
            );
          }
          final data = result.data!['rooms'];
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var el = data[index];
              return ListTile(
                // leading: Text('   ' + el.name!),
                title: Text(el['name']),
                trailing: Text(el['user']['username']),
                onTap: () {
                  print('room with id ${el['id']} tapped');
                  Navigator.of(context).pushNamed(Chat.id,
                      arguments: ChatArguments(roomId: el['id']));
                },
              );
            },
          );
        },
      ),
    );
  }
}
