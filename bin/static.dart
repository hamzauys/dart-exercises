void main() {
  final newproduct = Product.money;
  calculateMoney();

  final User1 = User("Ali");
  final newproduct2 = Product.fromUser(User1);

  print(User1);
  print(newproduct2);
}

class User {
  final String name;

  User(this.name);

    @override
  String toString() {
    return 'User(name: $name)';
  }
}

void calculateMoney() {
  if (Product.money != null && Product.money! > 5) {
    print('5 tl daha ekledik');
    Product.incrementMoney(100);
    print(Product.money);
  }
}

class Product {
  static int? money = 10;

  String name;
  Product(this.name);

  Product.veli([this.name = 'veli']);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyname = "VB BANK";

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }

  @override
  String toString() {
    return 'Product(name: $name, money: $money)';
  }
}
