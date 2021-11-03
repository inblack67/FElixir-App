// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'postMessage.data.gql.g.dart';

abstract class GPostMessageMutationData
    implements
        Built<GPostMessageMutationData, GPostMessageMutationDataBuilder> {
  GPostMessageMutationData._();

  factory GPostMessageMutationData(
          [Function(GPostMessageMutationDataBuilder b) updates]) =
      _$GPostMessageMutationData;

  static void _initializeBuilder(GPostMessageMutationDataBuilder b) =>
      b..G__typename = 'RootMutationType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostMessageMutationData_createMessage? get createMessage;
  static Serializer<GPostMessageMutationData> get serializer =>
      _$gPostMessageMutationDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPostMessageMutationData.serializer, this)
          as Map<String, dynamic>);
  static GPostMessageMutationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPostMessageMutationData.serializer, json);
}

abstract class GPostMessageMutationData_createMessage
    implements
        Built<GPostMessageMutationData_createMessage,
            GPostMessageMutationData_createMessageBuilder> {
  GPostMessageMutationData_createMessage._();

  factory GPostMessageMutationData_createMessage(
          [Function(GPostMessageMutationData_createMessageBuilder b) updates]) =
      _$GPostMessageMutationData_createMessage;

  static void _initializeBuilder(
          GPostMessageMutationData_createMessageBuilder b) =>
      b..G__typename = 'MessageType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get content;
  GPostMessageMutationData_createMessage_user? get user;
  static Serializer<GPostMessageMutationData_createMessage> get serializer =>
      _$gPostMessageMutationDataCreateMessageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPostMessageMutationData_createMessage.serializer, this)
      as Map<String, dynamic>);
  static GPostMessageMutationData_createMessage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPostMessageMutationData_createMessage.serializer, json);
}

abstract class GPostMessageMutationData_createMessage_user
    implements
        Built<GPostMessageMutationData_createMessage_user,
            GPostMessageMutationData_createMessage_userBuilder> {
  GPostMessageMutationData_createMessage_user._();

  factory GPostMessageMutationData_createMessage_user(
      [Function(GPostMessageMutationData_createMessage_userBuilder b)
          updates]) = _$GPostMessageMutationData_createMessage_user;

  static void _initializeBuilder(
          GPostMessageMutationData_createMessage_userBuilder b) =>
      b..G__typename = 'UserType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get username;
  static Serializer<GPostMessageMutationData_createMessage_user>
      get serializer => _$gPostMessageMutationDataCreateMessageUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GPostMessageMutationData_createMessage_user.serializer, this)
      as Map<String, dynamic>);
  static GPostMessageMutationData_createMessage_user? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GPostMessageMutationData_createMessage_user.serializer, json);
}
