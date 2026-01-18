void main() {
  final model = CarModel(
    category: CarModels.bmw,
    name: 'bmwx12',
    money: 122,
    isSecondhand: false,
    users: [User('Ali'), User('Ayse')],
  );

  final carItems = [
    CarModel(category: CarModels.toyota, name: 'Corolla', money: 100.000),
    CarModel(category: CarModels.subaru, name: 'Impreza GTX', money: 500.000),
    CarModel(
      category: CarModels.bmw,
      name: '520',
      money: 300000,
      isSecondhand: false,
      users: [User('Ali'), User('Ayse')],
    ),
  ];

  final resultcount =
      carItems.where((element) => element.isSecondhand = true).length;
  print(resultcount);

  final newcar = CarModel(category: CarModels.bmw, name: '520', money: 300000);

  final ishavecar = carItems.contains(newcar);
  if (ishavecar) {
    print("no gerek");
  } else {
    print("alak");
  }

  final resultbmwmore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  });
  print(resultbmwmore20);

  final carnames = carItems.map((e) => e.name).join('---');
  print(carnames);

  try {
    final mercedescar = carItems.singleWhere(
      (element) => element.category == CarModels.mercedes,
    );
    print(mercedescar);
  } catch (e) {
    print("yok yok yok");
  } finally {
    print("mümkünse birdaha gorusmeyelim tayfun");
  }

  final index = carItems.indexOf(newcar);
  print(index);

  carItems.add(
    CarModel(category: CarModels.mercedes, name: 'c180', money: 30000),
  );

  int index2 = carItems.indexOf(
    CarModel(category: CarModels.mercedes, name: 'c180', money: 30000),
  );
  print(index2);

  carItems.sort((first, second) => first.money.compareTo(second.money));

  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  print(users);

/*   carItems.removeWhere(
    (element) => element.category == CarModels.bmw || element.name == 'c180',
  );
  print(carItems); */

  changeInTheCategoryType(carItems);

  print(carItems);
}

void changeInTheCategoryType(List<CarModel> items) {
  for (var e in items) {
    if (e.category == CarModels.bmw) {
      e.category = CarModels.subaru;
    }
    if (e.isSecondhand) {
      e.isSecondhand = false;
    }
  }
}

class CarModel {
  CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondhand;
  List<User> users;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondhand = true,
    this.users = const [],
  });

  @override
  String toString() {
    return '$name - ${category.name} - $money';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.isSecondhand == isSecondhand;
  }

  @override
  int get hashCode =>
      category.hashCode ^
      name.hashCode ^
      money.hashCode ^
      isSecondhand.hashCode;
}

enum CarModels { bmw, subaru, toyota, mercedes }

class User {
  final String name;

  User(this.name);

  @override
  String toString() => name;
}
