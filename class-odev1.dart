void main() {
  Uye uye0 = Uye(1, isim: "Arda");
  print(uye0.numara);
  print(uye0.isim);
  var uye1 = Uye(2);
  print(uye1.isim);
  dynamic uye2 = Uye.numarasiz("Cabbar");
  print(uye2.isim);
}

class Uye {
  int? numara;
  String isim;

  Uye(this.numara, {this.isim = "Nameless"}) {
    print("Kurucu metot çalıştı");
  }

  Uye.numarasiz(this.isim) {
    print("İsimlendirilmiş kurucu metot çalıştı");
  }
}
