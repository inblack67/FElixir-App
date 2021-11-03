import 'package:felixir/ferry/client.dart';
import 'package:felixir/graphql/messages.data.gql.dart';
import 'package:felixir/graphql/messages.req.gql.dart';
import 'package:felixir/graphql/messages.var.gql.dart';
import 'package:felixir/graphql/postMessage.req.gql.dart';
import 'package:felixir/utils/chat_arguments.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_dashboard.dart';
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
  late String roomId;

  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController(keepScrollOffset: false);

  handlePostMessage() async {
    String messageContent = messageController.text;
    print('room id $roomId message content => $messageContent');
    final postMessageReq = GPostMessageMutationReq((r) => r
      ..vars.content = messageContent
      ..vars.roomId = roomId);
    final res = await graphqlClient
        .request(postMessageReq)
        .firstWhere((response) => response.dataSource != DataSource.Optimistic);
    print('post message res');
    print(res.data?.createMessage?.content);
    final messagesReq = GMessagesQueryReq((b) => b..vars.roomId = roomId);
    graphqlClient.requestController.add(messagesReq);
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ChatArguments?;

    print('args');
    print(args);

    if (args == null) {
      Navigator.of(context).pushNamed(Dashboard.id);
    }

    roomId = args!.roomId!;

    final messagesReq = GMessagesQueryReq((b) => b..vars.roomId = roomId);

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
        operationRequest: messagesReq,
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
                      CustomButton(title: 'Send', onPressed: handlePostMessage),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
