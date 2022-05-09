void main(List<String> args) {
  final Ogrenci k1 = Ogrenci(7382, kacSeferlik: 10);
  k1.yemekYe();
  final Ogretmen k2 = Ogretmen(1231);
  k2.yemekYe();
  print(k2.kacSeferlik);
  print(k1);
  print(k2);
  Yonetici.hakYukle(k1, 50);
  print(k1.kacSeferlik);
  Yonetici.deaktifEt(k1, false);
  k1.yemekYe();
  
}

class Ogrenci {
  bool aktifMi = true;
  int id;
  late int kacSeferlik;
  // final DateTime kalanZaman = DateTime.now()
  Ogrenci(this.id, {int kacSeferlik = 0}) {
    this.kacSeferlik = kacSeferlik;
  }

  void yemekYe() {
    if (kacSeferlik == 0 || aktifMi == false) {
      print("Kartınızı doldurun");
      return;
    } else
      print("Yemek Yenildi");
    kacSeferlik--;
  }

  @override
  String toString() {
    return "Kullanıcı id: $id Kalan hak ${kacSeferlik > 0 ? kacSeferlik : "Sınırsız"}";
  }
}

class Ogretmen extends Ogrenci {
  Ogretmen(int id) : super(id, kacSeferlik: -1);
}

abstract class Yonetici {
  static void hakYukle(Ogrenci ogrenci, int kacSeferlik) {
    ogrenci.kacSeferlik = kacSeferlik;
  }

  static void deaktifEt(Ogrenci ogrenci, bool aktiflik) {
    ogrenci.aktifMi = aktiflik;
  }
}
