// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'messages.data.gql.g.dart';

abstract class GMessagesQueryData
    implements Built<GMessagesQueryData, GMessagesQueryDataBuilder> {
  GMessagesQueryData._();

  factory GMessagesQueryData([Function(GMessagesQueryDataBuilder b) updates]) =
      _$GMessagesQueryData;

  static void _initializeBuilder(GMessagesQueryDataBuilder b) =>
      b..G__typename = 'RootQueryType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GMessagesQueryData_messages>? get messages;
  static Serializer<GMessagesQueryData> get serializer =>
      _$gMessagesQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMessagesQueryData.serializer, this)
          as Map<String, dynamic>);
  static GMessagesQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GMessagesQueryData.serializer, json);
}

abstract class GMessagesQueryData_messages
    implements
        Built<GMessagesQueryData_messages, GMessagesQueryData_messagesBuilder> {
  GMessagesQueryData_messages._();

  factory GMessagesQueryData_messages(
          [Function(GMessagesQueryData_messagesBuilder b) updates]) =
      _$GMessagesQueryData_messages;

  static void _initializeBuilder(GMessagesQueryData_messagesBuilder b) =>
      b..G__typename = 'MessageType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get content;
  String? get id;
  GMessagesQueryData_messages_user? get user;
  static Serializer<GMessagesQueryData_messages> get serializer =>
      _$gMessagesQueryDataMessagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GMessagesQueryData_messages.serializer, this) as Map<String, dynamic>);
  static GMessagesQueryData_messages? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GMessagesQueryData_messages.serializer, json);
}

abstract class GMessagesQueryData_messages_user
    implements
        Built<GMessagesQueryData_messages_user,
            GMessagesQueryData_messages_userBuilder> {
  GMessagesQueryData_messages_user._();

  factory GMessagesQueryData_messages_user(
          [Function(GMessagesQueryData_messages_userBuilder b) updates]) =
      _$GMessagesQueryData_messages_user;

  static void _initializeBuilder(GMessagesQueryData_messages_userBuilder b) =>
      b..G__typename = 'UserType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get username;
  static Serializer<GMessagesQueryData_messages_user> get serializer =>
      _$gMessagesQueryDataMessagesUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GMessagesQueryData_messages_user.serializer, this)
      as Map<String, dynamic>);
  static GMessagesQueryData_messages_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GMessagesQueryData_messages_user.serializer, json);
}
