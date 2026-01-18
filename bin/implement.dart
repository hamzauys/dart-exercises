abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print("Duck is flying");

  @override
  void swim() => print("Duck is swimming");
}

/////////////////////////////////

abstract class Animal {
  void makeSound();
}
class Dog implements Animal {
  @override
  void makeSound() {
    print("Hav hav!");
  }
}
void main() {
  Dog myDog = Dog();
  myDog.makeSound(); // Çıktı: Hav hav!
}
