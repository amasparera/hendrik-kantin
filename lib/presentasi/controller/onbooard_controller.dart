// ignore_for_file: use_build_context_synchronously

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

  void init(BuildContext context) async {
    pageController = PageController();
    // final value = await LocalData().loadToken();
    // if (value != null) {
    //   toRemovePage(context, const HomeView());
    // }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
