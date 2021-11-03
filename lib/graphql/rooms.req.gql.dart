// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/rooms.ast.gql.dart' as _i5;
import 'package:felixir/graphql/rooms.data.gql.dart' as _i2;
import 'package:felixir/graphql/rooms.var.gql.dart' as _i3;
import 'package:felixir/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'rooms.req.gql.g.dart';

abstract class GRoomsQueryReq
    implements
        Built<GRoomsQueryReq, GRoomsQueryReqBuilder>,
        _i1.OperationRequest<_i2.GRoomsQueryData, _i3.GRoomsQueryVars> {
  GRoomsQueryReq._();

  factory GRoomsQueryReq([Function(GRoomsQueryReqBuilder b) updates]) =
      _$GRoomsQueryReq;

  static void _initializeBuilder(GRoomsQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RoomsQuery')
    ..executeOnListen = true;
  _i3.GRoomsQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRoomsQueryData? Function(_i2.GRoomsQueryData?, _i2.GRoomsQueryData?)?
      get updateResult;
  _i2.GRoomsQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRoomsQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GRoomsQueryData.fromJson(json);
  static Serializer<GRoomsQueryReq> get serializer =>
      _$gRoomsQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRoomsQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GRoomsQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRoomsQueryReq.serializer, json);
}
