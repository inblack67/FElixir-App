// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/postMessage.ast.gql.dart' as _i5;
import 'package:felixir/graphql/postMessage.data.gql.dart' as _i2;
import 'package:felixir/graphql/postMessage.var.gql.dart' as _i3;
import 'package:felixir/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'postMessage.req.gql.g.dart';

abstract class GPostMessageMutationReq
    implements
        Built<GPostMessageMutationReq, GPostMessageMutationReqBuilder>,
        _i1.OperationRequest<_i2.GPostMessageMutationData,
            _i3.GPostMessageMutationVars> {
  GPostMessageMutationReq._();

  factory GPostMessageMutationReq(
          [Function(GPostMessageMutationReqBuilder b) updates]) =
      _$GPostMessageMutationReq;

  static void _initializeBuilder(GPostMessageMutationReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'PostMessageMutation')
    ..executeOnListen = true;
  _i3.GPostMessageMutationVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GPostMessageMutationData? Function(
          _i2.GPostMessageMutationData?, _i2.GPostMessageMutationData?)?
      get updateResult;
  _i2.GPostMessageMutationData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GPostMessageMutationData? parseData(Map<String, dynamic> json) =>
      _i2.GPostMessageMutationData.fromJson(json);
  static Serializer<GPostMessageMutationReq> get serializer =>
      _$gPostMessageMutationReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GPostMessageMutationReq.serializer, this)
          as Map<String, dynamic>);
  static GPostMessageMutationReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GPostMessageMutationReq.serializer, json);
}
