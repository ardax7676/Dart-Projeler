import "dart:io";

void main() {
  double a = 4.6;
  double b = 23.6;
  double c = 12.1;
  print({a + b + c / 3});
  print(nasilUcgen(3, 4, 5));

  String? vizeNot = stdin.readLineSync();
  String? finalNot = stdin.readLineSync();
  vizeNot ??= "0";
  finalNot ??= "0";

  gectiMi(vize: int.parse(vizeNot), finalNot: int.parse(finalNot));

  for (int i = 0; i < 5; i++) {
    print("Arda");
  }
  print("---------------");
  int i = 0;
  while (i < 5) {
    print("Arda");
    i++;
  }
  print("----------------------");
  do {
    print("Arda");
    i++;
  } while (i < 10);

  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print(i);
    }
  }

  print(faktoriyel(12));
}

String nasilUcgen(int kenar1, int kenar2, int kenar3) {
  if (kenar1 == kenar2 && kenar2 == kenar3) {
    return "Eşkenar Üçgen";
  } else if (kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3) {
    return "Çeşitkenar Üçgen";
  } else {
    return "İkizkenar Üçgen";
  }
}

void gectiMi({int vize = 0, int finalNot = 0}) {
  int vizeOrani = 40;
  int finalOrani = 60;
  double gecerNot = vize * vizeOrani / 100 + finalNot * finalOrani / 100;

  if (gecerNot >= 50) {
    print("Geçtiniz not ortalamanız: ${gecerNot}");
  } else {
    print("Geçemediniz not ortalamanız: ${gecerNot}");
  }
}

int faktoriyel(int sayi) {
  int sonuc = 1;

  for (int i = 1; i <= sayi; i++) {
    sonuc *= i;
  }
  return sayi < 0 ? 0 : sonuc;
}
