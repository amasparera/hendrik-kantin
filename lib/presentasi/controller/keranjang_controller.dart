import 'package:flutter/foundation.dart';
import 'package:kantin/dummi.dart';

class KeranjangController extends ChangeNotifier {
  Map<Menu, int> keranjang = {};

  void addKeranjang(Menu menu) {
    if (keranjang.containsKey(menu)) {
      keranjang[menu] = (keranjang[menu]! + 1);
      notifyListeners();
    } else {
      keranjang.addAll({menu: 1});
      notifyListeners();
    }

    if (kDebugMode) {
      print(keranjang);
    }
  }

  void removeKeranjang(Menu menu) {
    if (keranjang.containsKey(menu) && keranjang[menu]! >= 1) {
      keranjang[menu] = keranjang[menu]! - 1;
      notifyListeners();
    } else {
      keranjang.remove(menu);
      notifyListeners();
    }
  }

  void hapus() {
    keranjang.clear();
    notifyListeners();
  }
}
