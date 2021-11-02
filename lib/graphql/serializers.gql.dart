import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:felixir/graphql/greet.data.gql.dart' show GGreetData;
import 'package:felixir/graphql/greet.req.gql.dart' show GGreetReq;
import 'package:felixir/graphql/greet.var.gql.dart' show GGreetVars;
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
  GRoomInputType
])
final Serializers serializers = _serializersBuilder.build();
