// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(GDeleteMessageInput.serializer)
      ..add(GDeleteRoomInput.serializer)
      ..add(GDeletedMessageInput.serializer)
      ..add(GGreetData.serializer)
      ..add(GGreetReq.serializer)
      ..add(GGreetVars.serializer)
      ..add(GListMessagesType.serializer)
      ..add(GMessageInputType.serializer)
      ..add(GMessagesQueryData.serializer)
      ..add(GMessagesQueryData_messages.serializer)
      ..add(GMessagesQueryData_messages_user.serializer)
      ..add(GMessagesQueryReq.serializer)
      ..add(GMessagesQueryVars.serializer)
      ..add(GPostMessageMutationData.serializer)
      ..add(GPostMessageMutationData_createMessage.serializer)
      ..add(GPostMessageMutationData_createMessage_user.serializer)
      ..add(GPostMessageMutationReq.serializer)
      ..add(GPostMessageMutationVars.serializer)
      ..add(GRoomInputType.serializer)
      ..add(GRoomsQueryData.serializer)
      ..add(GRoomsQueryData_rooms.serializer)
      ..add(GRoomsQueryData_rooms_user.serializer)
      ..add(GRoomsQueryReq.serializer)
      ..add(GRoomsQueryVars.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GMessagesQueryData_messages)]),
          () => new ListBuilder<GMessagesQueryData_messages>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(GRoomsQueryData_rooms)]),
          () => new ListBuilder<GRoomsQueryData_rooms>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
