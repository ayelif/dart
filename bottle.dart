abstract class Bottle {
  void open();
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print("Coke bottle is opened");
  }

  factory CokeBottle() {
    return CokeBottle._();
  }
  CokeBottle._();
}

void main() {
  Bottle cokeBottle = CokeBottle();
  cokeBottle.open();
}
