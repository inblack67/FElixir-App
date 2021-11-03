// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMessagesQueryVars> _$gMessagesQueryVarsSerializer =
    new _$GMessagesQueryVarsSerializer();

class _$GMessagesQueryVarsSerializer
    implements StructuredSerializer<GMessagesQueryVars> {
  @override
  final Iterable<Type> types = const [GMessagesQueryVars, _$GMessagesQueryVars];
  @override
  final String wireName = 'GMessagesQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMessagesQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'roomId',
      serializers.serialize(object.roomId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GMessagesQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMessagesQueryVarsBuilder();

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

class _$GMessagesQueryVars extends GMessagesQueryVars {
  @override
  final String roomId;

  factory _$GMessagesQueryVars(
          [void Function(GMessagesQueryVarsBuilder)? updates]) =>
      (new GMessagesQueryVarsBuilder()..update(updates)).build();

  _$GMessagesQueryVars._({required this.roomId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roomId, 'GMessagesQueryVars', 'roomId');
  }

  @override
  GMessagesQueryVars rebuild(
          void Function(GMessagesQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMessagesQueryVarsBuilder toBuilder() =>
      new GMessagesQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMessagesQueryVars && roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMessagesQueryVars')
          ..add('roomId', roomId))
        .toString();
  }
}

class GMessagesQueryVarsBuilder
    implements Builder<GMessagesQueryVars, GMessagesQueryVarsBuilder> {
  _$GMessagesQueryVars? _$v;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GMessagesQueryVarsBuilder();

  GMessagesQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMessagesQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMessagesQueryVars;
  }

  @override
  void update(void Function(GMessagesQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMessagesQueryVars build() {
    final _$result = _$v ??
        new _$GMessagesQueryVars._(
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GMessagesQueryVars', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
