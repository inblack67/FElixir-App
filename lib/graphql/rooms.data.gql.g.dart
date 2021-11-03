// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRoomsQueryData> _$gRoomsQueryDataSerializer =
    new _$GRoomsQueryDataSerializer();
Serializer<GRoomsQueryData_rooms> _$gRoomsQueryDataRoomsSerializer =
    new _$GRoomsQueryData_roomsSerializer();
Serializer<GRoomsQueryData_rooms_user> _$gRoomsQueryDataRoomsUserSerializer =
    new _$GRoomsQueryData_rooms_userSerializer();

class _$GRoomsQueryDataSerializer
    implements StructuredSerializer<GRoomsQueryData> {
  @override
  final Iterable<Type> types = const [GRoomsQueryData, _$GRoomsQueryData];
  @override
  final String wireName = 'GRoomsQueryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRoomsQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rooms;
    if (value != null) {
      result
        ..add('rooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GRoomsQueryData_rooms)])));
    }
    return result;
  }

  @override
  GRoomsQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRoomsQueryDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rooms':
          result.rooms.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GRoomsQueryData_rooms)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GRoomsQueryData_roomsSerializer
    implements StructuredSerializer<GRoomsQueryData_rooms> {
  @override
  final Iterable<Type> types = const [
    GRoomsQueryData_rooms,
    _$GRoomsQueryData_rooms
  ];
  @override
  final String wireName = 'GRoomsQueryData_rooms';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRoomsQueryData_rooms object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.insertedAt;
    if (value != null) {
      result
        ..add('insertedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GRoomsQueryData_rooms_user)));
    }
    return result;
  }

  @override
  GRoomsQueryData_rooms deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRoomsQueryData_roomsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'insertedAt':
          result.insertedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GRoomsQueryData_rooms_user))!
              as GRoomsQueryData_rooms_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GRoomsQueryData_rooms_userSerializer
    implements StructuredSerializer<GRoomsQueryData_rooms_user> {
  @override
  final Iterable<Type> types = const [
    GRoomsQueryData_rooms_user,
    _$GRoomsQueryData_rooms_user
  ];
  @override
  final String wireName = 'GRoomsQueryData_rooms_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRoomsQueryData_rooms_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GRoomsQueryData_rooms_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRoomsQueryData_rooms_userBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GRoomsQueryData extends GRoomsQueryData {
  @override
  final String G__typename;
  @override
  final BuiltList<GRoomsQueryData_rooms>? rooms;

  factory _$GRoomsQueryData([void Function(GRoomsQueryDataBuilder)? updates]) =>
      (new GRoomsQueryDataBuilder()..update(updates)).build();

  _$GRoomsQueryData._({required this.G__typename, this.rooms}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRoomsQueryData', 'G__typename');
  }

  @override
  GRoomsQueryData rebuild(void Function(GRoomsQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRoomsQueryDataBuilder toBuilder() =>
      new GRoomsQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRoomsQueryData &&
        G__typename == other.G__typename &&
        rooms == other.rooms;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), rooms.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRoomsQueryData')
          ..add('G__typename', G__typename)
          ..add('rooms', rooms))
        .toString();
  }
}

class GRoomsQueryDataBuilder
    implements Builder<GRoomsQueryData, GRoomsQueryDataBuilder> {
  _$GRoomsQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GRoomsQueryData_rooms>? _rooms;
  ListBuilder<GRoomsQueryData_rooms> get rooms =>
      _$this._rooms ??= new ListBuilder<GRoomsQueryData_rooms>();
  set rooms(ListBuilder<GRoomsQueryData_rooms>? rooms) => _$this._rooms = rooms;

  GRoomsQueryDataBuilder() {
    GRoomsQueryData._initializeBuilder(this);
  }

  GRoomsQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rooms = $v.rooms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRoomsQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRoomsQueryData;
  }

  @override
  void update(void Function(GRoomsQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRoomsQueryData build() {
    _$GRoomsQueryData _$result;
    try {
      _$result = _$v ??
          new _$GRoomsQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRoomsQueryData', 'G__typename'),
              rooms: _rooms?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rooms';
        _rooms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRoomsQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRoomsQueryData_rooms extends GRoomsQueryData_rooms {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? insertedAt;
  @override
  final String? id;
  @override
  final GRoomsQueryData_rooms_user? user;

  factory _$GRoomsQueryData_rooms(
          [void Function(GRoomsQueryData_roomsBuilder)? updates]) =>
      (new GRoomsQueryData_roomsBuilder()..update(updates)).build();

  _$GRoomsQueryData_rooms._(
      {required this.G__typename,
      this.name,
      this.insertedAt,
      this.id,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRoomsQueryData_rooms', 'G__typename');
  }

  @override
  GRoomsQueryData_rooms rebuild(
          void Function(GRoomsQueryData_roomsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRoomsQueryData_roomsBuilder toBuilder() =>
      new GRoomsQueryData_roomsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRoomsQueryData_rooms &&
        G__typename == other.G__typename &&
        name == other.name &&
        insertedAt == other.insertedAt &&
        id == other.id &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), name.hashCode),
                insertedAt.hashCode),
            id.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRoomsQueryData_rooms')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('insertedAt', insertedAt)
          ..add('id', id)
          ..add('user', user))
        .toString();
  }
}

class GRoomsQueryData_roomsBuilder
    implements Builder<GRoomsQueryData_rooms, GRoomsQueryData_roomsBuilder> {
  _$GRoomsQueryData_rooms? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _insertedAt;
  String? get insertedAt => _$this._insertedAt;
  set insertedAt(String? insertedAt) => _$this._insertedAt = insertedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GRoomsQueryData_rooms_userBuilder? _user;
  GRoomsQueryData_rooms_userBuilder get user =>
      _$this._user ??= new GRoomsQueryData_rooms_userBuilder();
  set user(GRoomsQueryData_rooms_userBuilder? user) => _$this._user = user;

  GRoomsQueryData_roomsBuilder() {
    GRoomsQueryData_rooms._initializeBuilder(this);
  }

  GRoomsQueryData_roomsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _insertedAt = $v.insertedAt;
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRoomsQueryData_rooms other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRoomsQueryData_rooms;
  }

  @override
  void update(void Function(GRoomsQueryData_roomsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRoomsQueryData_rooms build() {
    _$GRoomsQueryData_rooms _$result;
    try {
      _$result = _$v ??
          new _$GRoomsQueryData_rooms._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRoomsQueryData_rooms', 'G__typename'),
              name: name,
              insertedAt: insertedAt,
              id: id,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GRoomsQueryData_rooms', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRoomsQueryData_rooms_user extends GRoomsQueryData_rooms_user {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? username;

  factory _$GRoomsQueryData_rooms_user(
          [void Function(GRoomsQueryData_rooms_userBuilder)? updates]) =>
      (new GRoomsQueryData_rooms_userBuilder()..update(updates)).build();

  _$GRoomsQueryData_rooms_user._(
      {required this.G__typename, this.id, this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRoomsQueryData_rooms_user', 'G__typename');
  }

  @override
  GRoomsQueryData_rooms_user rebuild(
          void Function(GRoomsQueryData_rooms_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRoomsQueryData_rooms_userBuilder toBuilder() =>
      new GRoomsQueryData_rooms_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRoomsQueryData_rooms_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRoomsQueryData_rooms_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username))
        .toString();
  }
}

class GRoomsQueryData_rooms_userBuilder
    implements
        Builder<GRoomsQueryData_rooms_user, GRoomsQueryData_rooms_userBuilder> {
  _$GRoomsQueryData_rooms_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GRoomsQueryData_rooms_userBuilder() {
    GRoomsQueryData_rooms_user._initializeBuilder(this);
  }

  GRoomsQueryData_rooms_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRoomsQueryData_rooms_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRoomsQueryData_rooms_user;
  }

  @override
  void update(void Function(GRoomsQueryData_rooms_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRoomsQueryData_rooms_user build() {
    final _$result = _$v ??
        new _$GRoomsQueryData_rooms_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRoomsQueryData_rooms_user', 'G__typename'),
            id: id,
            username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
