import 'dart:math';

int? generateRandom() {
  Random random = Random();
  int randomNumber = random.nextInt(2);
  return randomNumber == 0 ? null : 100;
}

void main() {
  int? sayi = generateRandom();
  sayi ??= 0;
  print("Sayı: $sayi");
}
