extension checkextension on int {
  bool isevenandpos() {
    return this > 0 && this % 2 == 0;
  }
}

void main() {
  int number1 = 1;
  int number2 = 4;
  int number4 = 5;
  print(number1.isevenandpos());
  print(number2.isevenandpos());
}
