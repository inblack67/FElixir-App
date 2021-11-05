import 'package:felixir/graphql/mutations.dart';
import 'package:felixir/graphql/queries.dart';
import 'package:felixir/utils/chat_arguments.dart';
import 'package:felixir/widgets/custom_alert.dart';
import 'package:felixir/widgets/custom_button.dart';
import 'package:felixir/widgets/widget_dashboard.dart';
import 'package:felixir/widgets/widget_message.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Chat extends StatefulWidget {
  final ValueNotifier<GraphQLClient> client;
  const Chat({Key? key, required this.client}) : super(key: key);

  static const id = 'CHAT';

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late String roomId;

  TextEditingController messageController = TextEditingController();
  ScrollController scrollController = ScrollController(keepScrollOffset: false);

  handlePostMessage() async {
    String messageContent = messageController.text;
    if (messageContent.isEmpty) {
      return;
    }
    print('room id $roomId message content => $messageContent');
    final MutationOptions _options = MutationOptions(
      document: gql(postMessageMutation),
      variables: <String, String>{'content': messageContent, 'roomId': roomId},
    );
    var result = await widget.client.value.mutate(_options);
    if (result.hasException) {
      showDialog(
        context: context,
        builder: (context) =>
            CustomAlert(title: 'Error!', message: result.exception.toString()),
      );
    }
    // print(result.data);
    if (result.isLoading) {
      showDialog(
          context: context,
          builder: (context) => const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              ));
    }
    print("post message result");
    print(result.data);
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

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('FElixir | Chat',
            style: TextStyle(
              color: Colors.red[900],
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            )),
        backgroundColor: Colors.black,
      ),
      body: Query(
        options: QueryOptions(
          document: gql(messagesQuery),
          variables: {
            'roomId': roomId,
          },
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
          final data = result.data!['messages'];
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
                      String messageContent = el['content'];
                      String messageUsername = 'inblack67';
                      bool me = messageUsername == el['user']['username'];
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
