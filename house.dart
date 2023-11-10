class House {
  int? id;
  String? name;
  double? price;

  House(this.id, this.name, this.price);
}

void main() {
  House house1 = House(1, "Ankara Ev", 5000000);
  House house2 = House(2, "İstanbul Ev", 25000000);
  House house3 = House(3, "İzmir Ev", 6000000);

  List<House> houses = [house1, house2, house3];

  for (var house in houses) {
    print("House ${house.id}: ${house.name}, Price: ${house.price}\n");
  }
}
