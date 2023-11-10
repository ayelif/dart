import 'dart:io';

class Soru {
  String soruMetni;
  List<String> secenekler;
  String dogruCevap;

  Soru(this.soruMetni, this.secenekler, this.dogruCevap);

  bool cevapKontrol(String cevap) => cevap.toLowerCase() == dogruCevap;
}

class Quiz {
  List<Soru> sorular;
  int toplamPuan;

  Quiz(this.sorular) : toplamPuan = 0;

  void sorulariSor() {
    for (var soru in sorular) {
      print(soru.soruMetni);
      for (int i = 0; i < soru.secenekler.length; i++) {
        print("${String.fromCharCode(97 + i)}) ${soru.secenekler[i]}");
      }

      stdout.write("Cevabınızı girin (a, b veya c): ");
      String cevap = stdin.readLineSync()!;

      if (soru.cevapKontrol(cevap)) {
        print("Doğru!\n");
        toplamPuan += 10;
      } else {
        print("Yanlış. Doğru cevap: ${soru.dogruCevap}\n");
        toplamPuan -= 4;
      }
    }
    print("Quiz tamamlandı. Toplam Puanınız: $toplamPuan");
  }
}

void main() {
  List<Soru> soruListesi = [
    Soru(
      "1)Dart hangi tür bir programlama dilidir?",
      [
        "Statik tip kontrollü",
        "Dinamik tip kontrollü",
        "Her iki türü de destekler"
      ],
      "c",
    ),
    Soru(
      "2)Dart programlama dili hangi yıl çıkmıştır?",
      ["2011", "1985", "2001"],
      "a",
    ),
    Soru(
      "3)İlk programlama dili hangisidir?",
      ["Java", "Fortran", "Go"],
      "b",
    ),
    Soru(
      "4)Hngileri nesne tabanlı dillerdir?",
      ["Java,Ruby,C#", "Java,C,Fortran", "Ruby,Fortran,C"],
      "a",
    ),
    Soru(
      "5)Dart'ı hangi şirket geliştirmiştir?",
      ["Google", "Facebook", "Apple"],
      "a",
    ),
  ];

  Quiz quiz = Quiz(soruListesi);
  quiz.sorulariSor();
}
