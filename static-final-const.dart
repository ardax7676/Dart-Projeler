void main(List<String> args) {
  Deneme.merhaba();
  var a = Deneme();
  a.aa();
  final zaman = DateTime.now();
  final Teacher t1 = const Teacher("MatHoca", 4);
  final Teacher t2 = const Teacher("MatHoca", 4);
  print(t1 == t2);
  List liste = [1, 2, 3, 4, "arda", true];
  forEach2(liste, (element) => print(element));
  var d = f1(5);
  print(d(10));
  print(f1(10)(30));
}

Function f1(int i) {
  return (int a) => a * i;
}

class Deneme {
  Deneme();
  static void merhaba() {
    print("Merhaba");
  }

  void aa() {
    print("instance method");
    merhaba();
  }
}

class Teacher {
  final int level;
  final String name;
  const Teacher(this.name, this.level);
}

void forEach2(List liste, Function(dynamic element) fonksiyon) {
  for (dynamic element in liste) {
    fonksiyon(element);
  }
}
