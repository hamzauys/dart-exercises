class UserManager {
  String name;

  UserManager({required this.name});

  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('a');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

void main() {
  UserManager  manager1 = UserManager(name: "hamza");

  UserLocalization localization = UserLocalization(manager1);


  localization.updateNameAndLocalization();
  

  print(manager1.name);  


}

