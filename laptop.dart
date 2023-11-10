class Laptop {
  int? id;
  String? name;
  int? ram;

  void display() {
    print("Laptop id: $id");
    print("Laptop name: $name");
    print("Laptop ram: $ram\n");
  }
}

void main() {
  Laptop laptop1 = Laptop();
  laptop1.id = 1;
  laptop1.name = "ASUS TUF Gaming F15";
  laptop1.ram = 16;
  laptop1.display();

  Laptop laptop2 = Laptop();
  laptop2.id = 2;
  laptop2.name = "Lenovo IdeaPad Gaming 3";
  laptop2.ram = 16;
  laptop2.display();

  Laptop laptop3 = Laptop();
  laptop3.id = 3;
  laptop3.name = "MacBook Pro/M2 PRO";
  laptop3.ram = 16;
  laptop3.display();
}
