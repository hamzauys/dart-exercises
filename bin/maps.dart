void main() {
  Map<String, int> users = {'ahmet': 20, 'veli': 30};

  print('ahmetin para ${users['ahmet']}');

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values..elementAt(i)}');
  }

  final Map<String, List<int>> akbank = {
    'ahmet': [100, 150, 200],
  };
  akbank['hamza'] = [30, 50];
  akbank['veli'] = [130];

  for (var item in akbank.keys) {
    for (var money in akbank[item]!) {
      if (money > 150) {
        print('kredin hazir');
        break;
      }
    }
  }

  for (var name in akbank.keys) {
    int result = 0;
    for (var money in akbank[name]!) {
      result = result + money;
    }
        print('$name senin toplan paran > $result');
  }

}
