class EagerSingleton {
  // 1. Statik olarak kendisini oluşturur (tek bir örnek)
  static final EagerSingleton _instance = EagerSingleton._internal();

  // 2. Dışarıya bu örneği veren getter (isteğe bağlı)
  static EagerSingleton get instance => _instance;

  // 3. Dışarıdan constructor çağrılmasın diye private yapıyoruz
  EagerSingleton._internal() {
    print('EagerSingleton oluşturuldu.');
  }

  // 4. Örnek bir method
  void doSomething() {
    print('EagerSingleton çalışıyor.');
  }
}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance {
    if (_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
  void dosomething() {
    print("lazy singleton calisiyor");
  }
}

void main() {
  var obj1 = EagerSingleton.instance;
  obj1.doSomething();

  var obj2 = EagerSingleton.instance;
  print(obj1 == obj2); // true — aynı nesne

  var lazy1 = ProductLazySingleton.instance;
  lazy1.dosomething();

  var lazy2 = ProductLazySingleton.instance;
  print(lazy1 == lazy2);
}
