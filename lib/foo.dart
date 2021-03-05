import 'dart:ffi';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foo.g.dart';

abstract class Foo implements Built<Foo, FooBuilder> {
  double get bar;

  Foo._();
  factory Foo([void Function(FooBuilder) updates]) = _$Foo;
}
