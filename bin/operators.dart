void main() {
  const int appleprice = 20;
  const double discount = 2.5;

  int mymoney = 30;
   mymoney = mymoney - (appleprice ~/ discount);
  print(mymoney);
  print(mymoney.isEven ) ;
}
