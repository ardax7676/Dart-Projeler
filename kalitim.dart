void main(List<String> args) {
  Uye uye1 = Uye("arda");
  uye1.girisYap();
  uye1.cikisYap();
  VipUye uye2 = VipUye("a", 2);
  uye2.hizliGiris();
  print(uye2.username);
  var uye3 = PremiumUye("ardax76", 4, 43);
  uye3.girisYap();
  uye3.selam();

  List<Uye> a = [uye1, uye2, uye3];

  for (var item in a) {
    item.girisYap();
  }
}

class Uye {
  String username;

  Uye(this.username) {
    print("Uye Constructor");
  }

  void girisYap() {
    print("Giriş yapıldı");
  }

  void cikisYap() {
    print("Çıkış yapıldı");
  }
}

class VipUye extends Uye {
  int kademe;
  VipUye(String username, this.kademe) : super(username) {
    print("Vip constructor");
  }

  void hizliGiris() {
    print("Vip hızlı giriş özelliği kullanıldı");
  }

  void indirimAl() {
    print("Vip indirimi kazandınız");
  }
}

class PremiumUye extends VipUye {
  int kalangun;
  PremiumUye(String username, int kademe, this.kalangun)
      : super(username, kademe) {
    print("premium constructor");
  }

  @override
  void girisYap() {
    super.girisYap();
    print("Premium Üyelik Sahibisiniz");
  }

  void selam() {
    print("selam");
  }

  @override
  void hizliGiris() {
    print("Premium giriş kullanıldı");
  }
}
