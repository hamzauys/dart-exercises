int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }
  // Gerek yok: Dart otomatik olarak null döndürür
}

// ad zorunlu
// para zorunllu
// Yas ve ssehirt sart degil

class User {
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;

  User(String name, int money, int? age, String? city) {
    this.name = name;
    this.age = age;
    this.money = money;
    this.city = city;
  }
}

void main() {
  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("beyfendi");
      } else {
        print("byy");
      }
    } else {
      print("haydi hesap açalım");
    }

    // İsteğe bağlı: controlMoney fonksiyonunun kullanımı
    int? result = controlMoney(item);
    bool resultTF = controlMoney(item) == null ? false : true;
    print(resultTF);
    print("Kontrol sonucu: $result");
  }
  User user1 = User('hamza', 12, 11, 'byr');

  print(user1.age);

  //bool isEmptyage() {
    //return age.isEmpty;
  }
  //bool isEmptyage() => 


