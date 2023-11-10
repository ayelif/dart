import 'dart:io';
import 'dart:async';

void main() async {
  stdout.write("Lütfen 1. Sayıyı Giriniz: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Lütfen 2. Sayıyı Giriniz: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int geriSayim = 3;

  Timer timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
    print(geriSayim);
    if (geriSayim == 1) {
      t.cancel();
    } else {
      geriSayim--;
    }
  });

  await Future.delayed(Duration(seconds: 3));

  int sum = num1 + num2;
  print("Toplam: $sum");
}
