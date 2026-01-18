class product {
  final int money;
  final String name;

  product(this.name, this.money);
}

class Productcategories extends product {
  Productcategories(String name, int money) : super(name, money) {
    showinfo();
  }

  final String category = "lux";

  void showinfo() {
    print('$name $money $category');
  }
}

abstract class Database {
  void write();
}

class SQL extends Database{
  @override
  void write() {
    // TODO: implement write
  }

}


class mongo extends Database{
  @override
  void write() {
    // TODO: implement write
  }
}
abstract class Iuseroperation implements Iuserlocation {
  void write();
  void listen();
  void read();
}


abstract class Iuserlocation{
  void locationchange();
}


abstract class  





void main() {
  Productcategories product1 = Productcategories('gaye', 55);

  Database database = SQL();
  database = mongo();
  database.write();
}


