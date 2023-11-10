import 'dart:io';

void main() {
  List<int> girilenSayilar = [];
  List<int> degisenListe = [];

  print(
      'Listeye Koymak İstediğiniz Sayıları Giriniz(enter a basana kadar girdi bekleyecek):');
  while (true) {
    String input = stdin.readLineSync()!;
    if (input.isEmpty || !isNumeric(input)) {
      break;
    }
    girilenSayilar.add(int.parse(input));
  }

  for (int number in girilenSayilar) {
    degisenListe.add(number * 2);
  }

  print('İlk Liste: $girilenSayilar');
  print('Son Liste: $degisenListe');
}

bool isNumeric(String s) {
  return double.tryParse(s) != null;
}
