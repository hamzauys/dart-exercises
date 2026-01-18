void main() {
  final int money = 1000;

  void controlusermoney(int money, int min) {
    if (money > min) {
      print('yagli musteri');
    } else {
      print('yok para');
    }
  }

  void controlusersalary() {
    int salary = 100;
    if (salary < 50) {
      print('gariban');
    } else {
      print('zenginsin');
    }
  }

  controlusermoney(money, 10);
  controlusersalary();

  int converttodolar(int money) {
    return money ~/ 39;
  }

  int dolar = converttodolar(money);
  print('$dolar');

  // optional parameter örneği

  int converttoeuro(int money, {int euroindex = 43}) {
    return money ~/ euroindex;
  }

  int converttomark({required int money, int markindex = 10}) {
    return money ~/ markindex;
  }

  int euro = converttoeuro(money);
  print('$euro');

  int euro2 = converttoeuro(300, euroindex: 20);
  print('$euro2');

  int mark = converttomark(money: 1000);
    print('$mark mark');


}
