void main() {
  String isim = "Arda";
  int yas = 18;
  print("adım $isim yaşım $yas isimimdeki akraket sayısı ${isim.length}");

  dynamic kenar1 = 6;
  dynamic kenar2 = 8;
  kenar1 = "a";
  kenar2 = "f";
  int kenar3 = 10;

  print("Üçgenin çevresi ${kenar1 + kenar2 + kenar3}");
}
