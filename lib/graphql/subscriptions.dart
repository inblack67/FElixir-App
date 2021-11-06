const newMessageSubscription = r'''
subscription NewMessageSubscription($roomId: ID!) {
  newMessage(input: {roomId: $roomId }){
    content
    id
    user{
      username
      id
    }
  }
}
''';
