import 'package:felixir/ferry/client.dart';
import 'package:felixir/graphql/greet.data.gql.dart';
import 'package:felixir/graphql/greet.req.gql.dart';
import 'package:felixir/graphql/greet.var.gql.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  static const id = 'DASHBOARD';

  final graphqlClient = initClient();
  final greetReq = GGreetReq();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          CloseButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Home.id);
              },
              color: Colors.red[900]),
        ],
        title: Text('FElixir',
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
      body: Operation(
        client: graphqlClient,
        operationRequest: greetReq,
        builder: (context, OperationResponse<GGreetData, GGreetVars>? response,
            error) {
          if (response == null) {
            return const CustomAlert(
                title: 'Error!', message: 'Failed to fetch!');
          }
          if (response.loading) {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
              ),
            );
          }
          final data = response.data?.hello ?? 'No Data';
          return Text(data);
        },
      ),
    );
  }
}
