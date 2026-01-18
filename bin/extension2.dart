void main() {
  if ('ali'.isAdmin()){
   print('ok');}

  else{
    print('no');
  }
}

extension StringUserCheckExtension on String {
  bool isAdmin() {
    return this.toLowerCase() == 'admin'.toLowerCase();
  }
}
