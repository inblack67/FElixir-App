// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'postMessage.var.gql.g.dart';

abstract class GPostMessageMutationVars
    implements
        Built<GPostMessageMutationVars, GPostMessageMutationVarsBuilder> {
  GPostMessageMutationVars._();

  factory GPostMessageMutationVars(
          [Function(GPostMessageMutationVarsBuilder b) updates]) =
      _$GPostMessageMutationVars;

  String get content;
  String get roomId;
  static Serializer<GPostMessageMutationVars> get serializer =>
      _$gPostMessageMutationVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPostMessageMutationVars.serializer, this)
          as Map<String, dynamic>);
  static GPostMessageMutationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPostMessageMutationVars.serializer, json);
}
