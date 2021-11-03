// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'rooms.var.gql.g.dart';

abstract class GRoomsQueryVars
    implements Built<GRoomsQueryVars, GRoomsQueryVarsBuilder> {
  GRoomsQueryVars._();

  factory GRoomsQueryVars([Function(GRoomsQueryVarsBuilder b) updates]) =
      _$GRoomsQueryVars;

  static Serializer<GRoomsQueryVars> get serializer =>
      _$gRoomsQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRoomsQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GRoomsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRoomsQueryVars.serializer, json);
}
