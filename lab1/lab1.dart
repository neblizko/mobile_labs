//dart run

class Class {
  int p1;
  int p2;
  String _p;
  String get p => _p;
  set p(String str) => _p = str + '. Field of Class';
  static var collection = [];

  factory Class.f(int p1, p2) {
    return collection.contains(Class(p1, p2)) ? Class(p1, p2) : null;
  }

  Class.init()
      : p1 = 0,
        p2 = 0;

  Class(this.p1, this.p2);
}

class Class2 extends Class with Mixin {
  int p3;
  Class2(this.p3) : super(0, 0);
}

mixin Mixin {
  int p4;
}

Function closure(int incr) => (int num) => num + incr;

main() {
  var num1 = 42;
  dynamic num2 = 322;
  String str = 'String example';

  var increment = closure(10);
  increment ??= (int num) => num + 1;

  Class obj = Class(num1, num2);
  obj.p = str;
  assert(obj._p == 'String example. Field of Class');

  Class2 obj2 = Class2(num1);
  obj2.p4 = 10;

  var list = [1, 2, 3];
  var values = ['value1', 'value2', 'value3'];
  var map = {'key1': 'value1', 'key2': 'value2'};
  var map2 = {'key3': 'value3', 'key4': 'value4'};

  map.addAll(map2);
  values.forEach((e) => print(e));
  list.insert(3, 4);

  print(obj._p);
  print(obj2.p3);
  print(obj2.p4);
}
