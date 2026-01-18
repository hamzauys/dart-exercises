void main() {
  List<int> values = [300, 150, 200];

  print('Kvara value ${values[2]} €');

  values.sort();

  print(values);

  values.add(1000);
  values.insert(3, 350);

  print(values);

  List<double> playervalue = List.generate(10, (index) {
    return index + 5;
  });
  print(playervalue);

  for (int index = 0; index < playervalue.length; index += 1) {
    print('Degeri:${playervalue[index]}');
    if (playervalue[index] > 100) {
      print('cok pahali');
    }
  }
}
