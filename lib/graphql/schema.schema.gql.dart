// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GDeletedMessageInput
    implements Built<GDeletedMessageInput, GDeletedMessageInputBuilder> {
  GDeletedMessageInput._();

  factory GDeletedMessageInput(
          [Function(GDeletedMessageInputBuilder b) updates]) =
      _$GDeletedMessageInput;

  String get roomId;
  static Serializer<GDeletedMessageInput> get serializer =>
      _$gDeletedMessageInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeletedMessageInput.serializer, this)
          as Map<String, dynamic>);
  static GDeletedMessageInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeletedMessageInput.serializer, json);
}

abstract class GDeleteMessageInput
    implements Built<GDeleteMessageInput, GDeleteMessageInputBuilder> {
  GDeleteMessageInput._();

  factory GDeleteMessageInput(
      [Function(GDeleteMessageInputBuilder b) updates]) = _$GDeleteMessageInput;

  String get messageId;
  String get roomId;
  static Serializer<GDeleteMessageInput> get serializer =>
      _$gDeleteMessageInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteMessageInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteMessageInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteMessageInput.serializer, json);
}

abstract class GDeleteRoomInput
    implements Built<GDeleteRoomInput, GDeleteRoomInputBuilder> {
  GDeleteRoomInput._();

  factory GDeleteRoomInput([Function(GDeleteRoomInputBuilder b) updates]) =
      _$GDeleteRoomInput;

  String get roomId;
  static Serializer<GDeleteRoomInput> get serializer =>
      _$gDeleteRoomInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteRoomInput.serializer, this)
          as Map<String, dynamic>);
  static GDeleteRoomInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteRoomInput.serializer, json);
}

abstract class GListMessagesType
    implements Built<GListMessagesType, GListMessagesTypeBuilder> {
  GListMessagesType._();

  factory GListMessagesType([Function(GListMessagesTypeBuilder b) updates]) =
      _$GListMessagesType;

  int? get cursor;
  String get roomId;
  static Serializer<GListMessagesType> get serializer =>
      _$gListMessagesTypeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GListMessagesType.serializer, this)
          as Map<String, dynamic>);
  static GListMessagesType? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GListMessagesType.serializer, json);
}

abstract class GMessageInputType
    implements Built<GMessageInputType, GMessageInputTypeBuilder> {
  GMessageInputType._();

  factory GMessageInputType([Function(GMessageInputTypeBuilder b) updates]) =
      _$GMessageInputType;

  String get content;
  String get roomId;
  static Serializer<GMessageInputType> get serializer =>
      _$gMessageInputTypeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMessageInputType.serializer, this)
          as Map<String, dynamic>);
  static GMessageInputType? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GMessageInputType.serializer, json);
}

abstract class GRoomInputType
    implements Built<GRoomInputType, GRoomInputTypeBuilder> {
  GRoomInputType._();

  factory GRoomInputType([Function(GRoomInputTypeBuilder b) updates]) =
      _$GRoomInputType;

  String get description;
  String get name;
  static Serializer<GRoomInputType> get serializer =>
      _$gRoomInputTypeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRoomInputType.serializer, this)
          as Map<String, dynamic>);
  static GRoomInputType? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRoomInputType.serializer, json);
}
