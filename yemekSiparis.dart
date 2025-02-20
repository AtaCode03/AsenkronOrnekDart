void main(List<String> args) async {
  print("Yemek siparisi");
  var sonuc1 = await yemekSiparisiAl("pizza");
  print(sonuc1);
  var sonuc2 = await yemekSiparisiAl("hamburger");
  print(sonuc2);
  var sonuc3 = await yemekhazir("pizza");
  print(sonuc3);
  var sonuc4 = await yemekhazir("hamburger");
  print(sonuc4);
}

Future<String> yemekSiparisiAl(String yemekadi) async {
  return Future.delayed(Duration(seconds: 5), () {
    return "$yemekadi hazirlaniyor";
  });
}

Future<String> yemekhazir(String yemekadi) async {
  return Future.delayed(Duration(seconds: 5), () {
    return "$yemekadi hazir";
  });
}
