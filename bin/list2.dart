void main() {
  List<dynamic> users = [1, 'a', true];

  for (var item in users) {
    print(item);
  }

  List<String> usernames = ['ali', 'veli', 'ayse'];

  print(usernames.contains('hamza'));

  for (var item in usernames) {
    if (item == 'veli') {
      print('ok');
    }
  }
}
