// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greet.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGreetData> _$gGreetDataSerializer = new _$GGreetDataSerializer();

class _$GGreetDataSerializer implements StructuredSerializer<GGreetData> {
  @override
  final Iterable<Type> types = const [GGreetData, _$GGreetData];
  @override
  final String wireName = 'GGreetData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGreetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.hello;
    if (value != null) {
      result
        ..add('hello')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGreetData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGreetDataBuilder();

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
        case 'hello':
          result.hello = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGreetData extends GGreetData {
  @override
  final String G__typename;
  @override
  final String? hello;

  factory _$GGreetData([void Function(GGreetDataBuilder)? updates]) =>
      (new GGreetDataBuilder()..update(updates)).build();

  _$GGreetData._({required this.G__typename, this.hello}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGreetData', 'G__typename');
  }

  @override
  GGreetData rebuild(void Function(GGreetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGreetDataBuilder toBuilder() => new GGreetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGreetData &&
        G__typename == other.G__typename &&
        hello == other.hello;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), hello.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGreetData')
          ..add('G__typename', G__typename)
          ..add('hello', hello))
        .toString();
  }
}

class GGreetDataBuilder implements Builder<GGreetData, GGreetDataBuilder> {
  _$GGreetData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _hello;
  String? get hello => _$this._hello;
  set hello(String? hello) => _$this._hello = hello;

  GGreetDataBuilder() {
    GGreetData._initializeBuilder(this);
  }

  GGreetDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hello = $v.hello;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGreetData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGreetData;
  }

  @override
  void update(void Function(GGreetDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGreetData build() {
    final _$result = _$v ??
        new _$GGreetData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGreetData', 'G__typename'),
            hello: hello);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
