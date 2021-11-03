// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:felixir/graphql/serializers.gql.dart' as _i1;

part 'rooms.data.gql.g.dart';

abstract class GRoomsQueryData
    implements Built<GRoomsQueryData, GRoomsQueryDataBuilder> {
  GRoomsQueryData._();

  factory GRoomsQueryData([Function(GRoomsQueryDataBuilder b) updates]) =
      _$GRoomsQueryData;

  static void _initializeBuilder(GRoomsQueryDataBuilder b) =>
      b..G__typename = 'RootQueryType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GRoomsQueryData_rooms>? get rooms;
  static Serializer<GRoomsQueryData> get serializer =>
      _$gRoomsQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRoomsQueryData.serializer, this)
          as Map<String, dynamic>);
  static GRoomsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRoomsQueryData.serializer, json);
}

abstract class GRoomsQueryData_rooms
    implements Built<GRoomsQueryData_rooms, GRoomsQueryData_roomsBuilder> {
  GRoomsQueryData_rooms._();

  factory GRoomsQueryData_rooms(
          [Function(GRoomsQueryData_roomsBuilder b) updates]) =
      _$GRoomsQueryData_rooms;

  static void _initializeBuilder(GRoomsQueryData_roomsBuilder b) =>
      b..G__typename = 'RoomType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get name;
  String? get insertedAt;
  String? get id;
  GRoomsQueryData_rooms_user? get user;
  static Serializer<GRoomsQueryData_rooms> get serializer =>
      _$gRoomsQueryDataRoomsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRoomsQueryData_rooms.serializer, this)
          as Map<String, dynamic>);
  static GRoomsQueryData_rooms? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRoomsQueryData_rooms.serializer, json);
}

abstract class GRoomsQueryData_rooms_user
    implements
        Built<GRoomsQueryData_rooms_user, GRoomsQueryData_rooms_userBuilder> {
  GRoomsQueryData_rooms_user._();

  factory GRoomsQueryData_rooms_user(
          [Function(GRoomsQueryData_rooms_userBuilder b) updates]) =
      _$GRoomsQueryData_rooms_user;

  static void _initializeBuilder(GRoomsQueryData_rooms_userBuilder b) =>
      b..G__typename = 'UserType';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get username;
  static Serializer<GRoomsQueryData_rooms_user> get serializer =>
      _$gRoomsQueryDataRoomsUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GRoomsQueryData_rooms_user.serializer, this) as Map<String, dynamic>);
  static GRoomsQueryData_rooms_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GRoomsQueryData_rooms_user.serializer, json);
}
