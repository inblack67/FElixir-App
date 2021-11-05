const helloQuery = r'''
            query Greet {
              hello
            }
        ''';

const roomsQuery = r'''
query RoomsQuery {
  rooms {
    name
    insertedAt
    id
    user {
      id
      username
    }
  }
}
''';

const messagesQuery = r'''
query MessagesQuery($roomId: ID!) {
  messages(input: { roomId: $roomId }) {
    content
    id
    user {
      username
    }
  }
}

''';
