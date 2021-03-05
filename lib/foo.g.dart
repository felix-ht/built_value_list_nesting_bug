// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Foo> _$fooSerializer = new _$FooSerializer();

class _$FooSerializer implements StructuredSerializer<Foo> {
  @override
  final Iterable<Type> types = const [Foo, _$Foo];
  @override
  final String wireName = 'Foo';

  @override
  Iterable<Object> serialize(Serializers serializers, Foo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'bar',
      serializers.serialize(object.bar, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Foo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FooBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'bar':
          result.bar = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Foo extends Foo {
  @override
  final double bar;

  factory _$Foo([void Function(FooBuilder) updates]) =>
      (new FooBuilder()..update(updates)).build();

  _$Foo._({this.bar}) : super._() {
    if (bar == null) {
      throw new BuiltValueNullFieldError('Foo', 'bar');
    }
  }

  @override
  Foo rebuild(void Function(FooBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooBuilder toBuilder() => new FooBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Foo && bar == other.bar;
  }

  @override
  int get hashCode {
    return $jf($jc(0, bar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Foo')..add('bar', bar)).toString();
  }
}

class FooBuilder implements Builder<Foo, FooBuilder> {
  _$Foo _$v;

  double _bar;
  double get bar => _$this._bar;
  set bar(double bar) => _$this._bar = bar;

  FooBuilder();

  FooBuilder get _$this {
    if (_$v != null) {
      _bar = _$v.bar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Foo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Foo;
  }

  @override
  void update(void Function(FooBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Foo build() {
    final _$result = _$v ?? new _$Foo._(bar: bar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
