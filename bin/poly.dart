void main() {
  IUser user = Turk();

  user.sayName();
  user = english();

  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'veli';

  @override
  void sayName() {
    print('merhaba hosgeldiniz');
  }
}

class english implements IUser {
  @override
  String get name => 'jack';

  @override
  void sayName() {
    print('hi, welcome the palace  $name ');
  }
}
