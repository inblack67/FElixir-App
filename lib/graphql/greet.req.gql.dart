// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/greet.ast.gql.dart' as _i5;
import 'package:felixir/graphql/greet.data.gql.dart' as _i2;
import 'package:felixir/graphql/greet.var.gql.dart' as _i3;
import 'package:felixir/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'greet.req.gql.g.dart';

abstract class GGreetReq
    implements
        Built<GGreetReq, GGreetReqBuilder>,
        _i1.OperationRequest<_i2.GGreetData, _i3.GGreetVars> {
  GGreetReq._();

  factory GGreetReq([Function(GGreetReqBuilder b) updates]) = _$GGreetReq;

  static void _initializeBuilder(GGreetReqBuilder b) => b
    ..operation = _i4.Operation(document: _i5.document, operationName: 'Greet')
    ..executeOnListen = true;
  _i3.GGreetVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGreetData? Function(_i2.GGreetData?, _i2.GGreetData?)? get updateResult;
  _i2.GGreetData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGreetData? parseData(Map<String, dynamic> json) =>
      _i2.GGreetData.fromJson(json);
  static Serializer<GGreetReq> get serializer => _$gGreetReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGreetReq.serializer, this)
          as Map<String, dynamic>);
  static GGreetReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGreetReq.serializer, json);
}
