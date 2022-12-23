import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  bool isLogin = false;

  void swith() {
    if (isLogin) {
      isLogin = false;
      notifyListeners();
    } else {
      isLogin = true;
      notifyListeners();
    }
  }

  void init() {
    isLogin = true;
  }
}
