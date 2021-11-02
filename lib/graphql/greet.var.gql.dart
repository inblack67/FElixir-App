// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'greet.var.gql.g.dart';

abstract class GGreetVars implements Built<GGreetVars, GGreetVarsBuilder> {
  GGreetVars._();

  factory GGreetVars([Function(GGreetVarsBuilder b) updates]) = _$GGreetVars;

  static Serializer<GGreetVars> get serializer => _$gGreetVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGreetVars.serializer, this)
          as Map<String, dynamic>);
  static GGreetVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGreetVars.serializer, json);
}
