void main() {
  final user = _User('veli', age: 55);

  // Müsterinin ytaaı 18ten kücük olmalı

  // if ((user.age ?? 10) < 18) {}

  if (user.age is int) {
    if (user.age! < 18) {
      print('evet kucuk');
      user.updatemoneyWithString("TR");
    } else {
      user.updatemoneyWithNumber(15);
    }
  }
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + "A");

  final moneyBank1 = Bank(50, '12');
  final moneyBank2 = Bank(60, '45');

  moneyBank1
   ..money += 10
   ..id = "hamza";

  print(moneyBank1 + moneyBank2);
  print(moneyBank1);
}

class _User {
  final String name;
  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updatemoneyWithNumber(int number) {
    moneyType = number;
  }

  void updatemoneyWithString(String data) {
    moneyType = data;
  }
}

class Bank {
  int money;
  String id;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  @override
  String toString() {
    return 'Bank(money: $money, id: $id)';
  }

  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  //   @override
  // String toString() {
  //   return super.toString() + 'veli';
}
