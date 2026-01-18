import '1.dart';

void main() {
  var myAccount = BankAccount();

  myAccount.deposit(500);
  print(myAccount.balance); // 500.0

  myAccount.withdraw(100);
  print(myAccount.balance); // 400.0

  myAccount.balance = -50; // Hata verir: "Bakiye negatif olamaz!"
  print(myAccount.balance); // 400.0 (değişmedi)

  myAccount.balance = 350;
  print(myAccount.balance);
}
