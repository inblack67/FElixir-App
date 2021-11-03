import 'package:felixir/ferry/client.dart';
import 'package:felixir/graphql/greet.data.gql.dart';
import 'package:felixir/graphql/greet.req.gql.dart';
import 'package:felixir/graphql/greet.var.gql.dart';
import 'package:felixir/graphql/rooms.data.gql.dart';
import 'package:felixir/graphql/rooms.req.gql.dart';
import 'package:felixir/graphql/rooms.var.gql.dart';
import 'package:felixir/utils/chat_arguments.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/widget_chat.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  static const id = 'DASHBOARD';

  final graphqlClient = initClient();
  final roomsReq = GRoomsQueryReq();

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
        title: Text('FElixir | Rooms',
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
      body: Operation(
        client: graphqlClient,
        operationRequest: roomsReq,
        builder: (context,
            OperationResponse<GRoomsQueryData, GRoomsQueryVars>? response,
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
          final data = response.data?.rooms;
          if (data == null) {
            return const CustomAlert(
              title: 'Error!',
              message: 'Failed to fetch',
            );
          }
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              var el = data[index];
              return ListTile(
                // leading: Text('   ' + el.name!),
                title: Text(el.name!),
                trailing: Text(el.user!.username!),
                onTap: () {
                  print('room with id ${el.id} tapped');
                  Navigator.of(context).pushNamed(Chat.id,
                      arguments: ChatArguments(roomId: el.id!));
                  return;
                },
              );
            },
          );
          // return Text('data');
        },
      ),
    );
  }
}
