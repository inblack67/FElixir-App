// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/messages.ast.gql.dart' as _i5;
import 'package:felixir/graphql/messages.data.gql.dart' as _i2;
import 'package:felixir/graphql/messages.var.gql.dart' as _i3;
import 'package:felixir/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'messages.req.gql.g.dart';

abstract class GMessagesQueryReq
    implements
        Built<GMessagesQueryReq, GMessagesQueryReqBuilder>,
        _i1.OperationRequest<_i2.GMessagesQueryData, _i3.GMessagesQueryVars> {
  GMessagesQueryReq._();

  factory GMessagesQueryReq([Function(GMessagesQueryReqBuilder b) updates]) =
      _$GMessagesQueryReq;

  static void _initializeBuilder(GMessagesQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'MessagesQuery')
    ..executeOnListen = true;
  _i3.GMessagesQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GMessagesQueryData? Function(
      _i2.GMessagesQueryData?, _i2.GMessagesQueryData?)? get updateResult;
  _i2.GMessagesQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GMessagesQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GMessagesQueryData.fromJson(json);
  static Serializer<GMessagesQueryReq> get serializer =>
      _$gMessagesQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GMessagesQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GMessagesQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GMessagesQueryReq.serializer, json);
}
