void main(List<String> args) {
  Admin y1 = SuperModerator();
  yorumSilici(y1);
}

abstract class Yonetici {
  void girisYap();
  void yorumSil();
  void selam() {
    print("selam");
  }
}

class Admin extends Yonetici {
  @override
  void girisYap() {
    print("Admin olarak giriş yapıldı");
  }

  @override
  void yorumSil() {
    print("Admin olarak yorum silme işlemi uygulandı");
  }

  void adminPanel() {
    print("admin panel");
  }
}

class SuperModerator extends Yonetici implements Admin {
  @override
  void girisYap() {
    print("Süper Moderatör olarak giriş yapıldı");
  }

  @override
  void yorumSil() {
    print("Süper Moderatör olarak yorum silme işlemi uygulandı");
  }

  @override
  void adminPanel() {
    // TODO: implement adminPanel
  }
}

class NormalUye implements Yonetici {
  @override
  void girisYap() {
    print("Normal üye giriş yaptı");
  }

  @override
  void yorumSil() {
    print("Yaptığınız yorum silindi");
  }

  @override
  void selam() {
    // TODO: implement selam
  }
}

void yorumSilici(Yonetici yonetici) {
  yonetici.girisYap();
  yonetici.yorumSil();
}
