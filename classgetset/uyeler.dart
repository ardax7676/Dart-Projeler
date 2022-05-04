class Uye {
  String? isim;
  int numara;
  String _yoneticiParola = "123456";
  String? _parola;
  Uye(this.numara, [this.isim]) {
    print(
        "Üyelik oluşturuldu lütfen parola belirleyin.\nBunun için parolaGuncelle komutunu kullanabilirsiniz!");
  }

  factory Uye.sadeceNumara(int numara, String parola) {
    if (numara <= 0) {
      return Uye(0);
    } else
      return Uye(numara);
  }

  void yoneticiGiris() {
    if (_yoneticiMi()) {
      print("Giriş Yapıldı");
    } else
      print("Giriş Yapılamadı");
  }

  bool _yoneticiMi() {
    if (this._parola == _yoneticiParola) {
      return true;
    } else
      return false;
  }

  void set parolaGuncelle(String parola) {
    List<String> turkceKarakter = ["ı", "ğ", "ö", "ş", "ç", "ü", "İ"];
    for (String item in turkceKarakter) {
      if (parola.contains(item)) {
        print("Parolanızda geçersiz karakter bulundu");
        return;
      } else {
        continue;
      }
    }
    this._parola = parola;
    print("Parola Güncellendi");
  }

  String get parolaOgren =>
      "Şu anki parolanız ${this._parola??"mevcut değildir"}\nDeğiştirmek için parolaGuncelle komutunu kullanın!";
}
