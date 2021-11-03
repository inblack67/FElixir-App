import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:felixir/graphql/greet.data.gql.dart' show GGreetData;
import 'package:felixir/graphql/greet.req.gql.dart' show GGreetReq;
import 'package:felixir/graphql/greet.var.gql.dart' show GGreetVars;
import 'package:felixir/graphql/messages.data.gql.dart'
    show
        GMessagesQueryData,
        GMessagesQueryData_messages,
        GMessagesQueryData_messages_user;
import 'package:felixir/graphql/messages.req.gql.dart' show GMessagesQueryReq;
import 'package:felixir/graphql/messages.var.gql.dart' show GMessagesQueryVars;
import 'package:felixir/graphql/postMessage.data.gql.dart'
    show
        GPostMessageMutationData,
        GPostMessageMutationData_createMessage,
        GPostMessageMutationData_createMessage_user;
import 'package:felixir/graphql/postMessage.req.gql.dart'
    show GPostMessageMutationReq;
import 'package:felixir/graphql/postMessage.var.gql.dart'
    show GPostMessageMutationVars;
import 'package:felixir/graphql/rooms.data.gql.dart'
    show GRoomsQueryData, GRoomsQueryData_rooms, GRoomsQueryData_rooms_user;
import 'package:felixir/graphql/rooms.req.gql.dart' show GRoomsQueryReq;
import 'package:felixir/graphql/rooms.var.gql.dart' show GRoomsQueryVars;
import 'package:felixir/graphql/schema.schema.gql.dart'
    show
        GDeleteMessageInput,
        GDeleteRoomInput,
        GDeletedMessageInput,
        GListMessagesType,
        GMessageInputType,
        GRoomInputType;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GDeleteMessageInput,
  GDeleteRoomInput,
  GDeletedMessageInput,
  GGreetData,
  GGreetReq,
  GGreetVars,
  GListMessagesType,
  GMessageInputType,
  GMessagesQueryData,
  GMessagesQueryData_messages,
  GMessagesQueryData_messages_user,
  GMessagesQueryReq,
  GMessagesQueryVars,
  GPostMessageMutationData,
  GPostMessageMutationData_createMessage,
  GPostMessageMutationData_createMessage_user,
  GPostMessageMutationReq,
  GPostMessageMutationVars,
  GRoomInputType,
  GRoomsQueryData,
  GRoomsQueryData_rooms,
  GRoomsQueryData_rooms_user,
  GRoomsQueryReq,
  GRoomsQueryVars
])
final Serializers serializers = _serializersBuilder.build();
