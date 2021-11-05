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
        title: Text('FElixir',
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
      body: Query(
        options: QueryOptions(
          document: gql(r'''
            query Greet {
              hello
            }
        '''),
        ),
        builder: (QueryResult result,
            {Future<QueryResult> Function(FetchMoreOptions)? fetchMore,
            Future<QueryResult?> Function()? refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }
          print('result');
          print(result.data);
          return Column(
            children: <Widget>[
              if (result.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              if (result.data != null) Text(result.data!['hello'] ?? 'oops')
            ],
          );
        },
      ),
    );
  }
}
