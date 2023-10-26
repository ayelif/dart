import 'dart:io';

void add(int num1, int num2, [int? num3]) {
  int sum = num1 + num2;
  if (num3 != null) {
    sum += num3;
  }
  print("sonuç = $sum");
}

void sub(int num1, int num2) {
  int sub = num1 - num2;
  print("sonuç = $sub");
}

void mul(int num1, int num2) {
  int mul = num1 * num2;
  print("sonuç = $mul");
}

void div(int num1, int num2) {
  double div = num1 / num2;
  print("sonuç= $div");
}

void main() {
  print("Lütfen bir işlem türü seçin (+, -, *, /):");
  String? islemTuru = stdin.readLineSync()!;

  if (islemTuru == null ||
      (islemTuru != '+' &&
          islemTuru != '-' &&
          islemTuru != '*' &&
          islemTuru != '/')) {
    print("Hata: Geçersiz işlem türü!");
    return;
  }

  print("Lütfen birinci sayıyı girin:");
  int? num1 = int.parse(stdin.readLineSync()!);

  print("Lütfen ikinci sayıyı girin:");
  int? num2 = int.parse(stdin.readLineSync()!);

  if (islemTuru == "+") {
    if (islemTuru == "+") {
      print("Üçüncü sayıyı girin (veya boş bırakın):");
      int? num3 = int.tryParse(stdin.readLineSync()!);
      add(num1, num2, num3);
    }
  } else if (islemTuru == "-") {
    sub(num1, num2);
  } else if (islemTuru == "*") {
    mul(num1, num2);
  } else if (islemTuru == "/") {
    if (num2 != 0) {
      div(num1, num2);
    } else {
      print("Hata: Sıfıra bölme hatası!");
      return;
    }
  } else {
    print("Hata: Geçersiz işlem türü!");
    return;
  }
}
