// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postMessage.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostMessageMutationData> _$gPostMessageMutationDataSerializer =
    new _$GPostMessageMutationDataSerializer();
Serializer<GPostMessageMutationData_createMessage>
    _$gPostMessageMutationDataCreateMessageSerializer =
    new _$GPostMessageMutationData_createMessageSerializer();
Serializer<GPostMessageMutationData_createMessage_user>
    _$gPostMessageMutationDataCreateMessageUserSerializer =
    new _$GPostMessageMutationData_createMessage_userSerializer();

class _$GPostMessageMutationDataSerializer
    implements StructuredSerializer<GPostMessageMutationData> {
  @override
  final Iterable<Type> types = const [
    GPostMessageMutationData,
    _$GPostMessageMutationData
  ];
  @override
  final String wireName = 'GPostMessageMutationData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostMessageMutationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createMessage;
    if (value != null) {
      result
        ..add('createMessage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GPostMessageMutationData_createMessage)));
    }
    return result;
  }

  @override
  GPostMessageMutationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageMutationDataBuilder();

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
        case 'createMessage':
          result.createMessage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GPostMessageMutationData_createMessage))!
              as GPostMessageMutationData_createMessage);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostMessageMutationData_createMessageSerializer
    implements StructuredSerializer<GPostMessageMutationData_createMessage> {
  @override
  final Iterable<Type> types = const [
    GPostMessageMutationData_createMessage,
    _$GPostMessageMutationData_createMessage
  ];
  @override
  final String wireName = 'GPostMessageMutationData_createMessage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostMessageMutationData_createMessage object,
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
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GPostMessageMutationData_createMessage_user)));
    }
    return result;
  }

  @override
  GPostMessageMutationData_createMessage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageMutationData_createMessageBuilder();

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
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GPostMessageMutationData_createMessage_user))!
              as GPostMessageMutationData_createMessage_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostMessageMutationData_createMessage_userSerializer
    implements
        StructuredSerializer<GPostMessageMutationData_createMessage_user> {
  @override
  final Iterable<Type> types = const [
    GPostMessageMutationData_createMessage_user,
    _$GPostMessageMutationData_createMessage_user
  ];
  @override
  final String wireName = 'GPostMessageMutationData_createMessage_user';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GPostMessageMutationData_createMessage_user object,
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
  GPostMessageMutationData_createMessage_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageMutationData_createMessage_userBuilder();

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

class _$GPostMessageMutationData extends GPostMessageMutationData {
  @override
  final String G__typename;
  @override
  final GPostMessageMutationData_createMessage? createMessage;

  factory _$GPostMessageMutationData(
          [void Function(GPostMessageMutationDataBuilder)? updates]) =>
      (new GPostMessageMutationDataBuilder()..update(updates)).build();

  _$GPostMessageMutationData._({required this.G__typename, this.createMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostMessageMutationData', 'G__typename');
  }

  @override
  GPostMessageMutationData rebuild(
          void Function(GPostMessageMutationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageMutationDataBuilder toBuilder() =>
      new GPostMessageMutationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageMutationData &&
        G__typename == other.G__typename &&
        createMessage == other.createMessage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), createMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostMessageMutationData')
          ..add('G__typename', G__typename)
          ..add('createMessage', createMessage))
        .toString();
  }
}

class GPostMessageMutationDataBuilder
    implements
        Builder<GPostMessageMutationData, GPostMessageMutationDataBuilder> {
  _$GPostMessageMutationData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostMessageMutationData_createMessageBuilder? _createMessage;
  GPostMessageMutationData_createMessageBuilder get createMessage =>
      _$this._createMessage ??=
          new GPostMessageMutationData_createMessageBuilder();
  set createMessage(
          GPostMessageMutationData_createMessageBuilder? createMessage) =>
      _$this._createMessage = createMessage;

  GPostMessageMutationDataBuilder() {
    GPostMessageMutationData._initializeBuilder(this);
  }

  GPostMessageMutationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createMessage = $v.createMessage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostMessageMutationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageMutationData;
  }

  @override
  void update(void Function(GPostMessageMutationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageMutationData build() {
    _$GPostMessageMutationData _$result;
    try {
      _$result = _$v ??
          new _$GPostMessageMutationData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPostMessageMutationData', 'G__typename'),
              createMessage: _createMessage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createMessage';
        _createMessage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostMessageMutationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostMessageMutationData_createMessage
    extends GPostMessageMutationData_createMessage {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? content;
  @override
  final GPostMessageMutationData_createMessage_user? user;

  factory _$GPostMessageMutationData_createMessage(
          [void Function(GPostMessageMutationData_createMessageBuilder)?
              updates]) =>
      (new GPostMessageMutationData_createMessageBuilder()..update(updates))
          .build();

  _$GPostMessageMutationData_createMessage._(
      {required this.G__typename, this.id, this.content, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPostMessageMutationData_createMessage', 'G__typename');
  }

  @override
  GPostMessageMutationData_createMessage rebuild(
          void Function(GPostMessageMutationData_createMessageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageMutationData_createMessageBuilder toBuilder() =>
      new GPostMessageMutationData_createMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageMutationData_createMessage &&
        G__typename == other.G__typename &&
        id == other.id &&
        content == other.content &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), content.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GPostMessageMutationData_createMessage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('content', content)
          ..add('user', user))
        .toString();
  }
}

class GPostMessageMutationData_createMessageBuilder
    implements
        Builder<GPostMessageMutationData_createMessage,
            GPostMessageMutationData_createMessageBuilder> {
  _$GPostMessageMutationData_createMessage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  GPostMessageMutationData_createMessage_userBuilder? _user;
  GPostMessageMutationData_createMessage_userBuilder get user =>
      _$this._user ??= new GPostMessageMutationData_createMessage_userBuilder();
  set user(GPostMessageMutationData_createMessage_userBuilder? user) =>
      _$this._user = user;

  GPostMessageMutationData_createMessageBuilder() {
    GPostMessageMutationData_createMessage._initializeBuilder(this);
  }

  GPostMessageMutationData_createMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _content = $v.content;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostMessageMutationData_createMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageMutationData_createMessage;
  }

  @override
  void update(
      void Function(GPostMessageMutationData_createMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageMutationData_createMessage build() {
    _$GPostMessageMutationData_createMessage _$result;
    try {
      _$result = _$v ??
          new _$GPostMessageMutationData_createMessage._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GPostMessageMutationData_createMessage', 'G__typename'),
              id: id,
              content: content,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPostMessageMutationData_createMessage',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostMessageMutationData_createMessage_user
    extends GPostMessageMutationData_createMessage_user {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? username;

  factory _$GPostMessageMutationData_createMessage_user(
          [void Function(GPostMessageMutationData_createMessage_userBuilder)?
              updates]) =>
      (new GPostMessageMutationData_createMessage_userBuilder()
            ..update(updates))
          .build();

  _$GPostMessageMutationData_createMessage_user._(
      {required this.G__typename, this.id, this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GPostMessageMutationData_createMessage_user', 'G__typename');
  }

  @override
  GPostMessageMutationData_createMessage_user rebuild(
          void Function(GPostMessageMutationData_createMessage_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageMutationData_createMessage_userBuilder toBuilder() =>
      new GPostMessageMutationData_createMessage_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageMutationData_createMessage_user &&
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
    return (newBuiltValueToStringHelper(
            'GPostMessageMutationData_createMessage_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username))
        .toString();
  }
}

class GPostMessageMutationData_createMessage_userBuilder
    implements
        Builder<GPostMessageMutationData_createMessage_user,
            GPostMessageMutationData_createMessage_userBuilder> {
  _$GPostMessageMutationData_createMessage_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GPostMessageMutationData_createMessage_userBuilder() {
    GPostMessageMutationData_createMessage_user._initializeBuilder(this);
  }

  GPostMessageMutationData_createMessage_userBuilder get _$this {
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
  void replace(GPostMessageMutationData_createMessage_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageMutationData_createMessage_user;
  }

  @override
  void update(
      void Function(GPostMessageMutationData_createMessage_userBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageMutationData_createMessage_user build() {
    final _$result = _$v ??
        new _$GPostMessageMutationData_createMessage_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GPostMessageMutationData_createMessage_user', 'G__typename'),
            id: id,
            username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
