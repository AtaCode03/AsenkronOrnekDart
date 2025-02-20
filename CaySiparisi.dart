void main(List<String> args) async {
  print("Çay hazirlaniyor");

//   suyuKaynat().then((veri) {
//     print(veri);
//     return cayDemle();
//   }).then((veri) {
//     print(veri);
//     return bardakHazirla();
//   }).then((veri) {
//     print(veri);
//     print("Çay sipirişiniz hazir");
//   }).catchError((hata) {
//     print("$hata");
//   });
//   print("Diğer siparişi alabilirim");
// }

  var sonuc = await Future.wait([suyuKaynat(), cayDemle(), bardakHazirla()]);
  print(sonuc[0]);
  print(sonuc[1]);
  print(sonuc[2]);
}

Future<String> suyuKaynat() {
  return Future.delayed(Duration(seconds: 3), () => "Su kaynıyor");
}

Future<String> cayDemle() {
  return Future.delayed(Duration(seconds: 2), () => "Cay demleniyor");
}

Future<String> bardakHazirla() {
  return Future.delayed(Duration(seconds: 1), () => "Bardağa dolduruluyor");
}
