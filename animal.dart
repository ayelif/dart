class Animal {
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String? sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  Cat myCat = Cat(1, "Karam", "Black", "Meow");
  print(
      "Kedim => sayısı: ${myCat.id}, ismi: ${myCat.name}, rengi: ${myCat.color}, sesi: ${myCat.sound}\n");
}
