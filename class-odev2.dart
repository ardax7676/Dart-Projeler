import 'dart:math';

void main(List<String> args) {
  List<Ogrenci> ogrenciListesi = List.empty(growable: true);
  for (int i = 1; i <= 10; i++) {
    ogrenciListesi
        .add(Ogrenci(Random().nextInt(1000), Random().nextInt(100), i));
  }

  print(ogrenciListesi);

  CemberDaire daire1 = CemberDaire(5, pi: 3);
  print(daire1.alanBul());
  print(daire1.cevreBul());
  CemberDaire daire2 = CemberDaire(1.5);
  print(daire2.alanBul());
  print(daire2.cevreBul());

  print(Ogrenci().notOrtalamasi(ogrenciListesi));
}

class Ogrenci {
  int? id;
  int? numara;
  int? not;
  Ogrenci([this.numara, this.not, this.id]);

  @override
  String toString() {
    return "id numarası: ${this.id} olan ${this.numara} numaralı öğrencinin notu ${this.not}";
  }

  double notOrtalamasi(List<Ogrenci> liste) {
    int toplam = 0;
    for (Ogrenci item in liste) {
      toplam += item.numara!;
    }
    return toplam / liste.length;
  }
}

class CemberDaire {
  double pi;
  double _yariCap = 0;
  CemberDaire(double yariCap, {this.pi = 3.14}) {
    yaricapKontrol = yariCap;
  }

  double alanBul() => pi * pow(_yariCap, 2);
  double cevreBul() => 2 * pi * _yariCap;

  void set yaricapKontrol(double yariCap) {
    if (yariCap < 0) {
      this._yariCap = 0;
    } else
      this._yariCap = yariCap;
  }
}
