class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Black", 14.299);
  Camera camera2 = Camera(2, "Instax", "Green", 3.399);
  Camera camera3 = Camera(3, "Sony", "Black", 27.999);

  print(
      "Camera 1 => Id: ${camera1.id}, Marka: ${camera1.brand}, Color: ${camera1.color}, Price: ${camera1.price}\n");
  print(
      "Camera 2 => Id ${camera2.id}, Marka: ${camera2.brand}, Color: ${camera2.color}, Price: ${camera2.price}\n");
  print(
      "Camera 3 => Id: ${camera3.id}, Marka: ${camera3.brand}, Color: ${camera3.color}, Price: ${camera3.price}");
}
