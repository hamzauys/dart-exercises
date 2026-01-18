void main() {
  final customermouser = mouse.apple;
  print(customermouser.index);
  print(customermouser.name);
  
  switch (customermouser) {
    case mouse.magic:
      // TODO: Handle this case.
      throw UnimplementedError();
      break;
    case mouse.apple:
    // TODO: Handle this case.
      break;
    case mouse.Bloody:
      // TODO: Handle this case.
      throw UnimplementedError();
      break;
    case mouse.razer:
      // TODO: Handle this case.
      throw UnimplementedError();
      break;
  }
  print(customermouser.isCheckName('razer'));
}

enum mouse { magic, apple, Bloody, razer }

extension mouseselectededition on mouse {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
