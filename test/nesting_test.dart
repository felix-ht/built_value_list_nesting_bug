import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';
import 'package:built_value_test/foo.dart';

void main() {
  test("fails with type 'List<Foo>' is not a subtype of type 'BuiltList<Foo>'",
      () {
    BuiltList<BuiltList<Foo>>.from([
      [Foo((b) => b.bar = 1.0)]
    ]);
  });

  test("fails with type 'List<Foo>' is not a subtype of type 'BuiltList<Foo>'",
      () {
    BuiltList<BuiltList<Foo>>.from(
        BuiltList<Foo>.from([Foo((b) => b.bar = 1.0)]));
  });

  test(
      "fails with type 'List<double>' is not a subtype of type 'BuiltList<double>'",
      () {
    BuiltList<BuiltList<double>>.from([
      [1.0]
    ]);
  });

  test("fails with type 'double' is not a subtype of type 'BuiltList<double>'",
      () {
    BuiltList<BuiltList<double>>.from(BuiltList<double>.from([1.0]));
  });
}
