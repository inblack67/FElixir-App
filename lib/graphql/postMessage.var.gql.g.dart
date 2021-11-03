// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postMessage.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostMessageMutationVars> _$gPostMessageMutationVarsSerializer =
    new _$GPostMessageMutationVarsSerializer();

class _$GPostMessageMutationVarsSerializer
    implements StructuredSerializer<GPostMessageMutationVars> {
  @override
  final Iterable<Type> types = const [
    GPostMessageMutationVars,
    _$GPostMessageMutationVars
  ];
  @override
  final String wireName = 'GPostMessageMutationVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostMessageMutationVars object,
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
  GPostMessageMutationVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostMessageMutationVarsBuilder();

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

class _$GPostMessageMutationVars extends GPostMessageMutationVars {
  @override
  final String content;
  @override
  final String roomId;

  factory _$GPostMessageMutationVars(
          [void Function(GPostMessageMutationVarsBuilder)? updates]) =>
      (new GPostMessageMutationVarsBuilder()..update(updates)).build();

  _$GPostMessageMutationVars._({required this.content, required this.roomId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        content, 'GPostMessageMutationVars', 'content');
    BuiltValueNullFieldError.checkNotNull(
        roomId, 'GPostMessageMutationVars', 'roomId');
  }

  @override
  GPostMessageMutationVars rebuild(
          void Function(GPostMessageMutationVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostMessageMutationVarsBuilder toBuilder() =>
      new GPostMessageMutationVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostMessageMutationVars &&
        content == other.content &&
        roomId == other.roomId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), roomId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GPostMessageMutationVars')
          ..add('content', content)
          ..add('roomId', roomId))
        .toString();
  }
}

class GPostMessageMutationVarsBuilder
    implements
        Builder<GPostMessageMutationVars, GPostMessageMutationVarsBuilder> {
  _$GPostMessageMutationVars? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _roomId;
  String? get roomId => _$this._roomId;
  set roomId(String? roomId) => _$this._roomId = roomId;

  GPostMessageMutationVarsBuilder();

  GPostMessageMutationVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _roomId = $v.roomId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostMessageMutationVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostMessageMutationVars;
  }

  @override
  void update(void Function(GPostMessageMutationVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPostMessageMutationVars build() {
    final _$result = _$v ??
        new _$GPostMessageMutationVars._(
            content: BuiltValueNullFieldError.checkNotNull(
                content, 'GPostMessageMutationVars', 'content'),
            roomId: BuiltValueNullFieldError.checkNotNull(
                roomId, 'GPostMessageMutationVars', 'roomId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
