const postMessageMutation = r'''
mutation PostMessageMutation($content: String!, $roomId: ID!) {
  createMessage(input: { content: $content, roomId: $roomId }) {
    id
    content
    user {
      id
      username
    }
  }
}

''';
