// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMessagesQueryData> _$gMessagesQueryDataSerializer =
    new _$GMessagesQueryDataSerializer();
Serializer<GMessagesQueryData_messages> _$gMessagesQueryDataMessagesSerializer =
    new _$GMessagesQueryData_messagesSerializer();
Serializer<GMessagesQueryData_messages_user>
    _$gMessagesQueryDataMessagesUserSerializer =
    new _$GMessagesQueryData_messages_userSerializer();

class _$GMessagesQueryDataSerializer
    implements StructuredSerializer<GMessagesQueryData> {
  @override
  final Iterable<Type> types = const [GMessagesQueryData, _$GMessagesQueryData];
  @override
  final String wireName = 'GMessagesQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessagesQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.messages;
    if (value != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GMessagesQueryData_messages)])));
    }
    return result;
  }

  @override
  GMessagesQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessagesQueryDataBuilder();

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
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GMessagesQueryData_messages)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMessagesQueryData_messagesSerializer
    implements StructuredSerializer<GMessagesQueryData_messages> {
  @override
  final Iterable<Type> types = const [
    GMessagesQueryData_messages,
    _$GMessagesQueryData_messages
  ];
  @override
  final String wireName = 'GMessagesQueryData_messages';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessagesQueryData_messages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
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
            specifiedType: const FullType(GMessagesQueryData_messages_user)));
    }
    return result;
  }

  @override
  GMessagesQueryData_messages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessagesQueryData_messagesBuilder();

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
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMessagesQueryData_messages_user))!
              as GMessagesQueryData_messages_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GMessagesQueryData_messages_userSerializer
    implements StructuredSerializer<GMessagesQueryData_messages_user> {
  @override
  final Iterable<Type> types = const [
    GMessagesQueryData_messages_user,
    _$GMessagesQueryData_messages_user
  ];
  @override
  final String wireName = 'GMessagesQueryData_messages_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessagesQueryData_messages_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  GMessagesQueryData_messages_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessagesQueryData_messages_userBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMessagesQueryData extends GMessagesQueryData {
  @override
  final String G__typename;
  @override
  final BuiltList<GMessagesQueryData_messages>? messages;

  factory _$GMessagesQueryData(
          [void Function(GMessagesQueryDataBuilder)? updates]) =>
      (new GMessagesQueryDataBuilder()..update(updates)).build();

  _$GMessagesQueryData._({required this.G__typename, this.messages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMessagesQueryData', 'G__typename');
  }

  @override
  GMessagesQueryData rebuild(
          void Function(GMessagesQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessagesQueryDataBuilder toBuilder() =>
      new GMessagesQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessagesQueryData &&
        G__typename == other.G__typename &&
        messages == other.messages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), messages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessagesQueryData')
          ..add('G__typename', G__typename)
          ..add('messages', messages))
        .toString();
  }
}

class GMessagesQueryDataBuilder
    implements Builder<GMessagesQueryData, GMessagesQueryDataBuilder> {
  _$GMessagesQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMessagesQueryData_messages>? _messages;
  ListBuilder<GMessagesQueryData_messages> get messages =>
      _$this._messages ??= new ListBuilder<GMessagesQueryData_messages>();
  set messages(ListBuilder<GMessagesQueryData_messages>? messages) =>
      _$this._messages = messages;

  GMessagesQueryDataBuilder() {
    GMessagesQueryData._initializeBuilder(this);
  }

  GMessagesQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _messages = $v.messages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessagesQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessagesQueryData;
  }

  @override
  void update(void Function(GMessagesQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessagesQueryData build() {
    _$GMessagesQueryData _$result;
    try {
      _$result = _$v ??
          new _$GMessagesQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GMessagesQueryData', 'G__typename'),
              messages: _messages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messages';
        _messages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMessagesQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessagesQueryData_messages extends GMessagesQueryData_messages {
  @override
  final String G__typename;
  @override
  final String? content;
  @override
  final String? id;
  @override
  final GMessagesQueryData_messages_user? user;

  factory _$GMessagesQueryData_messages(
          [void Function(GMessagesQueryData_messagesBuilder)? updates]) =>
      (new GMessagesQueryData_messagesBuilder()..update(updates)).build();

  _$GMessagesQueryData_messages._(
      {required this.G__typename, this.content, this.id, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMessagesQueryData_messages', 'G__typename');
  }

  @override
  GMessagesQueryData_messages rebuild(
          void Function(GMessagesQueryData_messagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessagesQueryData_messagesBuilder toBuilder() =>
      new GMessagesQueryData_messagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessagesQueryData_messages &&
        G__typename == other.G__typename &&
        content == other.content &&
        id == other.id &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), content.hashCode), id.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessagesQueryData_messages')
          ..add('G__typename', G__typename)
          ..add('content', content)
          ..add('id', id)
          ..add('user', user))
        .toString();
  }
}

class GMessagesQueryData_messagesBuilder
    implements
        Builder<GMessagesQueryData_messages,
            GMessagesQueryData_messagesBuilder> {
  _$GMessagesQueryData_messages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GMessagesQueryData_messages_userBuilder? _user;
  GMessagesQueryData_messages_userBuilder get user =>
      _$this._user ??= new GMessagesQueryData_messages_userBuilder();
  set user(GMessagesQueryData_messages_userBuilder? user) =>
      _$this._user = user;

  GMessagesQueryData_messagesBuilder() {
    GMessagesQueryData_messages._initializeBuilder(this);
  }

  GMessagesQueryData_messagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _content = $v.content;
      _id = $v.id;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessagesQueryData_messages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessagesQueryData_messages;
  }

  @override
  void update(void Function(GMessagesQueryData_messagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessagesQueryData_messages build() {
    _$GMessagesQueryData_messages _$result;
    try {
      _$result = _$v ??
          new _$GMessagesQueryData_messages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GMessagesQueryData_messages', 'G__typename'),
              content: content,
              id: id,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMessagesQueryData_messages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMessagesQueryData_messages_user
    extends GMessagesQueryData_messages_user {
  @override
  final String G__typename;
  @override
  final String? username;

  factory _$GMessagesQueryData_messages_user(
          [void Function(GMessagesQueryData_messages_userBuilder)? updates]) =>
      (new GMessagesQueryData_messages_userBuilder()..update(updates)).build();

  _$GMessagesQueryData_messages_user._(
      {required this.G__typename, this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMessagesQueryData_messages_user', 'G__typename');
  }

  @override
  GMessagesQueryData_messages_user rebuild(
          void Function(GMessagesQueryData_messages_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessagesQueryData_messages_userBuilder toBuilder() =>
      new GMessagesQueryData_messages_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessagesQueryData_messages_user &&
        G__typename == other.G__typename &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessagesQueryData_messages_user')
          ..add('G__typename', G__typename)
          ..add('username', username))
        .toString();
  }
}

class GMessagesQueryData_messages_userBuilder
    implements
        Builder<GMessagesQueryData_messages_user,
            GMessagesQueryData_messages_userBuilder> {
  _$GMessagesQueryData_messages_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GMessagesQueryData_messages_userBuilder() {
    GMessagesQueryData_messages_user._initializeBuilder(this);
  }

  GMessagesQueryData_messages_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessagesQueryData_messages_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessagesQueryData_messages_user;
  }

  @override
  void update(void Function(GMessagesQueryData_messages_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessagesQueryData_messages_user build() {
    final _$result = _$v ??
        new _$GMessagesQueryData_messages_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GMessagesQueryData_messages_user', 'G__typename'),
            username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
