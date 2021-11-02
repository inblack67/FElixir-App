// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeletedMessageInput> _$gDeletedMessageInputSerializer =
    new _$GDeletedMessageInputSerializer();
Serializer<GDeleteMessageInput> _$gDeleteMessageInputSerializer =
    new _$GDeleteMessageInputSerializer();
Serializer<GDeleteRoomInput> _$gDeleteRoomInputSerializer =
    new _$GDeleteRoomInputSerializer();
Serializer<GListMessagesType> _$gListMessagesTypeSerializer =
    new _$GListMessagesTypeSerializer();
Serializer<GMessageInputType> _$gMessageInputTypeSerializer =
    new _$GMessageInputTypeSerializer();
Serializer<GRoomInputType> _$gRoomInputTypeSerializer =
    new _$GRoomInputTypeSerializer();

class _$GDeletedMessageInputSerializer
    implements StructuredSerializer<GDeletedMessageInput> {
  @override
  final Iterable<Type> types = const [
    GDeletedMessageInput,
    _$GDeletedMessageInput
  ];
  @override
  final String wireName = 'GDeletedMessageInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeletedMessageInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'roomId',
      serializers.serialize(object.roomId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeletedMessageInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletedMessageInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMessageInputSerializer
    implements StructuredSerializer<GDeleteMessageInput> {
  @override
  final Iterable<Type> types = const [
    GDeleteMessageInput,
    _$GDeleteMessageInput
  ];
  @override
  final String wireName = 'GDeleteMessageInput';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMessageInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'messageId',
      serializers.serialize(object.messageId,
          specifiedType: const FullType(String)),
      'roomId',
      serializers.serialize(object.roomId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteMessageInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMessageInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'messageId':
          result.messageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteRoomInputSerializer
    implements StructuredSerializer<GDeleteRoomInput> {
  @override
  final Iterable<Type> types = const [GDeleteRoomInput, _$GDeleteRoomInput];
  @override
  final String wireName = 'GDeleteRoomInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteRoomInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'roomId',
      serializers.serialize(object.roomId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteRoomInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteRoomInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GListMessagesTypeSerializer
    implements StructuredSerializer<GListMessagesType> {
  @override
  final Iterable<Type> types = const [GListMessagesType, _$GListMessagesType];
  @override
  final String wireName = 'GListMessagesType';

  @override
  Iterable<Object?> serialize(Serializers serializers, GListMessagesType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'roomId',
      serializers.serialize(object.roomId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.cursor;
    if (value != null) {
      result
        ..add('cursor')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GListMessagesType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GListMessagesTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cursor':
          result.cursor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GMessageInputTypeSerializer
    implements StructuredSerializer<GMessageInputType> {
  @override
  final Iterable<Type> types = const [GMessageInputType, _$GMessageInputType];
  @override
  final String wireName = 'GMessageInputType';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMessageInputType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'roomId',
      serializers.serialize(object.roomId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMessageInputType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessageInputTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRoomInputTypeSerializer
    implements StructuredSerializer<GRoomInputType> {
  @override
  final Iterable<Type> types = const [GRoomInputType, _$GRoomInputType];
  @override
  final String wireName = 'GRoomInputType';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRoomInputType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRoomInputType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRoomInputTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletedMessageInput extends GDeletedMessageInput {
  @override
  final String roomId;

  factory _$GDeletedMessageInput(
          [void Function(GDeletedMessageInputBuilder)? updates]) =>
      (new GDeletedMessageInputBuilder()..update(updates)).build();

  _$GDeletedMessageInput._({required this.roomId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roomId, 'GDeletedMessageInput', 'roomId');
  }

  @override
  GDeletedMessageInput rebuild(
          void Function(GDeletedMessageInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletedMessageInputBuilder toBuilder() =>
      new GDeletedMessageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletedMessageInput && roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeletedMessageInput')
          ..add('roomId', roomId))
        .toString();
  }
}

class GDeletedMessageInputBuilder
    implements Builder<GDeletedMessageInput, GDeletedMessageInputBuilder> {
  _$GDeletedMessageInput? _$v;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GDeletedMessageInputBuilder();

  GDeletedMessageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletedMessageInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletedMessageInput;
  }

  @override
  void update(void Function(GDeletedMessageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeletedMessageInput build() {
    final _$result = _$v ??
        new _$GDeletedMessageInput._(
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GDeletedMessageInput', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteMessageInput extends GDeleteMessageInput {
  @override
  final String messageId;
  @override
  final String roomId;

  factory _$GDeleteMessageInput(
          [void Function(GDeleteMessageInputBuilder)? updates]) =>
      (new GDeleteMessageInputBuilder()..update(updates)).build();

  _$GDeleteMessageInput._({required this.messageId, required this.roomId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        messageId, 'GDeleteMessageInput', 'messageId');
    BuiltValueNullFieldError.checkNotNull(
        roomId, 'GDeleteMessageInput', 'roomId');
  }

  @override
  GDeleteMessageInput rebuild(
          void Function(GDeleteMessageInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMessageInputBuilder toBuilder() =>
      new GDeleteMessageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMessageInput &&
        messageId == other.messageId &&
        roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, messageId.hashCode), roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteMessageInput')
          ..add('messageId', messageId)
          ..add('roomId', roomId))
        .toString();
  }
}

class GDeleteMessageInputBuilder
    implements Builder<GDeleteMessageInput, GDeleteMessageInputBuilder> {
  _$GDeleteMessageInput? _$v;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GDeleteMessageInputBuilder();

  GDeleteMessageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageId = $v.messageId;
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMessageInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMessageInput;
  }

  @override
  void update(void Function(GDeleteMessageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteMessageInput build() {
    final _$result = _$v ??
        new _$GDeleteMessageInput._(
            messageId: BuiltValueNullFieldError.checkNotNull(
                messageId, 'GDeleteMessageInput', 'messageId'),
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GDeleteMessageInput', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteRoomInput extends GDeleteRoomInput {
  @override
  final String roomId;

  factory _$GDeleteRoomInput(
          [void Function(GDeleteRoomInputBuilder)? updates]) =>
      (new GDeleteRoomInputBuilder()..update(updates)).build();

  _$GDeleteRoomInput._({required this.roomId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(roomId, 'GDeleteRoomInput', 'roomId');
  }

  @override
  GDeleteRoomInput rebuild(void Function(GDeleteRoomInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteRoomInputBuilder toBuilder() =>
      new GDeleteRoomInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteRoomInput && roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteRoomInput')
          ..add('roomId', roomId))
        .toString();
  }
}

class GDeleteRoomInputBuilder
    implements Builder<GDeleteRoomInput, GDeleteRoomInputBuilder> {
  _$GDeleteRoomInput? _$v;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GDeleteRoomInputBuilder();

  GDeleteRoomInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteRoomInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteRoomInput;
  }

  @override
  void update(void Function(GDeleteRoomInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteRoomInput build() {
    final _$result = _$v ??
        new _$GDeleteRoomInput._(
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GDeleteRoomInput', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

class _$GListMessagesType extends GListMessagesType {
  @override
  final int? cursor;
  @override
  final String roomId;

  factory _$GListMessagesType(
          [void Function(GListMessagesTypeBuilder)? updates]) =>
      (new GListMessagesTypeBuilder()..update(updates)).build();

  _$GListMessagesType._({this.cursor, required this.roomId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roomId, 'GListMessagesType', 'roomId');
  }

  @override
  GListMessagesType rebuild(void Function(GListMessagesTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GListMessagesTypeBuilder toBuilder() =>
      new GListMessagesTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GListMessagesType &&
        cursor == other.cursor &&
        roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, cursor.hashCode), roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GListMessagesType')
          ..add('cursor', cursor)
          ..add('roomId', roomId))
        .toString();
  }
}

class GListMessagesTypeBuilder
    implements Builder<GListMessagesType, GListMessagesTypeBuilder> {
  _$GListMessagesType? _$v;

  int? _cursor;
  int? get cursor => _$this._cursor;
  set cursor(int? cursor) => _$this._cursor = cursor;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GListMessagesTypeBuilder();

  GListMessagesTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cursor = $v.cursor;
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GListMessagesType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GListMessagesType;
  }

  @override
  void update(void Function(GListMessagesTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GListMessagesType build() {
    final _$result = _$v ??
        new _$GListMessagesType._(
            cursor: cursor,
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GListMessagesType', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

class _$GMessageInputType extends GMessageInputType {
  @override
  final String content;
  @override
  final String roomId;

  factory _$GMessageInputType(
          [void Function(GMessageInputTypeBuilder)? updates]) =>
      (new GMessageInputTypeBuilder()..update(updates)).build();

  _$GMessageInputType._({required this.content, required this.roomId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        content, 'GMessageInputType', 'content');
    BuiltValueNullFieldError.checkNotNull(
        roomId, 'GMessageInputType', 'roomId');
  }

  @override
  GMessageInputType rebuild(void Function(GMessageInputTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessageInputTypeBuilder toBuilder() =>
      new GMessageInputTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessageInputType &&
        content == other.content &&
        roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessageInputType')
          ..add('content', content)
          ..add('roomId', roomId))
        .toString();
  }
}

class GMessageInputTypeBuilder
    implements Builder<GMessageInputType, GMessageInputTypeBuilder> {
  _$GMessageInputType? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GMessageInputTypeBuilder();

  GMessageInputTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessageInputType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessageInputType;
  }

  @override
  void update(void Function(GMessageInputTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessageInputType build() {
    final _$result = _$v ??
        new _$GMessageInputType._(
            content: BuiltValueNullFieldError.checkNotNull(
                content, 'GMessageInputType', 'content'),
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GMessageInputType', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

class _$GRoomInputType extends GRoomInputType {
  @override
  final String description;
  @override
  final String name;

  factory _$GRoomInputType([void Function(GRoomInputTypeBuilder)? updates]) =>
      (new GRoomInputTypeBuilder()..update(updates)).build();

  _$GRoomInputType._({required this.description, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, 'GRoomInputType', 'description');
    BuiltValueNullFieldError.checkNotNull(name, 'GRoomInputType', 'name');
  }

  @override
  GRoomInputType rebuild(void Function(GRoomInputTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRoomInputTypeBuilder toBuilder() =>
      new GRoomInputTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRoomInputType &&
        description == other.description &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, description.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRoomInputType')
          ..add('description', description)
          ..add('name', name))
        .toString();
  }
}

class GRoomInputTypeBuilder
    implements Builder<GRoomInputType, GRoomInputTypeBuilder> {
  _$GRoomInputType? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GRoomInputTypeBuilder();

  GRoomInputTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRoomInputType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRoomInputType;
  }

  @override
  void update(void Function(GRoomInputTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRoomInputType build() {
    final _$result = _$v ??
        new _$GRoomInputType._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'GRoomInputType', 'description'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GRoomInputType', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
