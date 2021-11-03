import 'package:felixir/ferry/client.dart';
import 'package:felixir/graphql/messages.data.gql.dart';
import 'package:felixir/graphql/messages.req.gql.dart';
import 'package:felixir/graphql/messages.var.gql.dart';
import 'package:felixir/graphql/rooms.req.gql.dart';
import 'package:felixir/utils/chat_arguments.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_home.dart';
import 'package:felixir/widgets/widget_message.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  static const id = 'CHAT';

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final graphqlClient = initClient();

  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController(keepScrollOffset: false);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ChatArguments;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Material(
          color: Colors.black,
          child: InkWell(
            child: const Hero(
                tag: 'logo',
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/logo.jpeg',
                  ),
                  radius: 70.0,
                  backgroundColor: Colors.black,
                )),
            onTap: () {},
          ),
        ),
        title: Text(
          'FElixir | Chat',
          style: TextStyle(
            color: Colors.red[900],
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Home.id);
              },
              icon: const Icon(
                Icons.close,
              )),
        ],
      ),
      body: Operation(
        client: graphqlClient,
        operationRequest:
            GMessagesQueryReq((b) => b..vars.roomId = args.roomId),
        builder: (context,
            OperationResponse<GMessagesQueryData, GMessagesQueryVars>? response,
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
          final data = response.data?.messages;
          if (data == null) {
            return const CustomAlert(
              title: 'Error!',
              message: 'Failed to fetch',
            );
          }
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: ListView.builder(
                    controller: scrollController,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      var el = data[index];
                      String messageContent = el.content!;
                      String messageUsername = 'inblack67';
                      print(el.user!.username!);
                      bool me = messageUsername == el.user!.username!;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Message(
                          username: messageUsername,
                          content: messageContent,
                          me: me,
                        ),
                      );
                      // return ListTile(
                      //   title: Text(messageContent),
                      // );
                    },
                  )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          child: TextField(
                        controller: messageController,
                        decoration:
                            const InputDecoration(hintText: 'Start typing...'),
                      )),
                      CustomButton(title: 'Send', onPressed: () {}),
                    ],
                  )
                ],
              ),
            ),
          );

          // return ListView.builder(
          //   itemCount: data.length,
          //   itemBuilder: (context, index) {
          //     var el = data[index];
          //     return ListTile(
          //       // leading: Text('   ' + el.name!),
          //       title: Text(el.content!),
          //       trailing: Text(el.user!.username!),
          //       onTap: () {
          //         print('message with id ${el.id} tapped');
          //       },
          //     );
          //   },
          // );
          // return Text('data');
        },
      ),
      // body: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: <Widget>[
      //         Expanded(
      //             child: ListView.builder(
      //           controller: scrollController,
      //           itemCount: 10,
      //           itemBuilder: (context, index) {
      //             String messageContent = 'hello';
      //             String messageUsername = 'inblak67';
      //             bool me = messageUsername == 'inblack';
      //             return Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Message(
      //                 username: messageUsername,
      //                 content: messageContent,
      //                 me: me,
      //               ),
      //             );
      //             // return ListTile(
      //             //   title: Text(messageContent),
      //             // );
      //           },
      //         )),
      //         const SizedBox(
      //           height: 10.0,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             Expanded(
      //                 child: TextField(
      //               controller: messageController,
      //               decoration:
      //                   const InputDecoration(hintText: 'Start typing...'),
      //             )),
      //             CustomButton(title: 'Send', onPressed: () {}),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
