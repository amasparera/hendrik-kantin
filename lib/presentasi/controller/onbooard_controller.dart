import 'package:flutter/cupertino.dart';

class OnBoardController extends ChangeNotifier {
  int indexPage = 0;
  late PageController pageController;

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
  }

  void backPage() {
    pageController.previousPage(
        duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
  }

  void changeIndex(int value) {
    indexPage = value;
    notifyListeners();
  }

  void init() {
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
