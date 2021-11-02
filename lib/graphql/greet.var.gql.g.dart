// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greet.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGreetVars> _$gGreetVarsSerializer = new _$GGreetVarsSerializer();

class _$GGreetVarsSerializer implements StructuredSerializer<GGreetVars> {
  @override
  final Iterable<Type> types = const [GGreetVars, _$GGreetVars];
  @override
  final String wireName = 'GGreetVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGreetVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGreetVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGreetVarsBuilder().build();
  }
}

class _$GGreetVars extends GGreetVars {
  factory _$GGreetVars([void Function(GGreetVarsBuilder)? updates]) =>
      (new GGreetVarsBuilder()..update(updates)).build();

  _$GGreetVars._() : super._();

  @override
  GGreetVars rebuild(void Function(GGreetVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGreetVarsBuilder toBuilder() => new GGreetVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGreetVars;
  }

  @override
  int get hashCode {
    return 818023960;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGreetVars').toString();
  }
}

class GGreetVarsBuilder implements Builder<GGreetVars, GGreetVarsBuilder> {
  _$GGreetVars? _$v;

  GGreetVarsBuilder();

  @override
  void replace(GGreetVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGreetVars;
  }

  @override
  void update(void Function(GGreetVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGreetVars build() {
    final _$result = _$v ?? new _$GGreetVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
