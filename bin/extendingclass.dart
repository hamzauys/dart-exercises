abstract class IUser {
  void sayMoneyWithCompanyName();
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money);

  @override
  void sayMoneyWithCompanyName() {
    print('$name - $money paranız vardır');
  }
}

void main() {
  final userNormal = User('vb', 15);
  userNormal.sayMoneyWithCompanyName();
}
