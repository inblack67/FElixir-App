// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'greet.data.gql.g.dart';

abstract class GGreetData implements Built<GGreetData, GGreetDataBuilder> {
  GGreetData._();

  factory GGreetData([Function(GGreetDataBuilder b) updates]) = _$GGreetData;

  static void _initializeBuilder(GGreetDataBuilder b) =>
      b..G__typename = 'RootQueryType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get hello;
  static Serializer<GGreetData> get serializer => _$gGreetDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGreetData.serializer, this)
          as Map<String, dynamic>);
  static GGreetData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGreetData.serializer, json);
}
