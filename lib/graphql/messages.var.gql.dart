// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'messages.var.gql.g.dart';

abstract class GMessagesQueryVars
    implements Built<GMessagesQueryVars, GMessagesQueryVarsBuilder> {
  GMessagesQueryVars._();

  factory GMessagesQueryVars([Function(GMessagesQueryVarsBuilder b) updates]) =
      _$GMessagesQueryVars;

  String get roomId;
  static Serializer<GMessagesQueryVars> get serializer =>
      _$gMessagesQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GMessagesQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GMessagesQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GMessagesQueryVars.serializer, json);
}
