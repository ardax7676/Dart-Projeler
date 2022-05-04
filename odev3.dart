import 'dart:io';

void main() {
  List<String> iller = List.filled(5, "");
  iller[0] = "Ankara";
  iller[1] = "İstanbul";
  iller[2] = "İzmir";
  iller[3] = "Bursa";
  iller[4] = "Iğdır";

  for (var item in iller) {
    print(item);
  }

  Map<String, dynamic> pcOzellikleri = {
    "islemciCekirdek": 4,
    "ram": 8,
    "ssd": false,
  };

  for (var key in pcOzellikleri.keys) {
    print(
        "${pcOzellikleri.keys.toList().indexOf(key) + 1}.özellik $key bu özelliğin değeri ${pcOzellikleri[key]}");
  }

  var a = pcOzellikleri.keys.any((element) => element.length > 5);
  print(a);

  List x = List.from(pcOzellikleri.keys);
  print(x);

  int key = 0;
  dynamic toplamVeSonuc = 0;
  while (true) {
    var numara = stdin.readLineSync();
    if (int.parse(numara!) == 0) {
      print("ortalama:${toplamVeSonuc / key}");
      break;
    } else {
      key++;
      toplamVeSonuc += int.parse(numara);
    }
  }
}
