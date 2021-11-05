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
