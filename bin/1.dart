class BankAccount {
  // Private (gizli) alan
  double _balance = 0;

  // Getter: Dışarıdan sadece okunabilir
  double get balance => _balance;

  // Setter: Dışarıdan sadece kontrollü değer atanabilir
  set balance(double newBalance) {
    if (newBalance < 0) {
      print("Bakiye negatif olamaz!");
    } else {
      _balance = newBalance;
    }
  }
  // Para ekleme fonksiyonu
  void deposit(double amount) {
    if (amount <= 0) {
      print("Geçersiz para yatırma işlemi.");
    } else {
      _balance += amount;
    }
  }
  // Para çekme fonksiyonu
  void withdraw(double amount) {
    if (amount > _balance) {
      print("Yetersiz bakiye.");
    } else {
      _balance -= amount;
    }
  }
}
