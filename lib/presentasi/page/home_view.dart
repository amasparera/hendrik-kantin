import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/presentasi/page/riwayat_view.dart';

import 'explor_view.dart';
import 'favorite_view.dart';
import 'keranjang_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: index, children: const [
        ExplorView(),
        FavoriteView(),
        KeranjangView(),
        RiwayatView()
      ]),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (value) async {
            index = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          // selectedIconTheme:
          //     const IconThemeData(color: purple, size: 40),
          selectedItemColor: purple,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          items: [
            BottomNavigationBarItem(
                label: "Explor",
                icon: Image.asset(
                  "assets/icon/Discovery (1).png",
                  width: 20,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  "assets/icon/Discovery.png",
                  width: 20,
                  height: 20,
                )),
            BottomNavigationBarItem(
                label: "Favoritku",
                icon: Image.asset(
                  "assets/icon/Heart (1).png",
                  width: 20,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  "assets/icon/Heart.png",
                  width: 20,
                  height: 20,
                )),
            BottomNavigationBarItem(
                label: "Keranjang",
                icon: Image.asset(
                  "assets/icon/Bag (1).png",
                  width: 20,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  "assets/icon/Bag.png",
                  width: 20,
                  height: 20,
                )),
            BottomNavigationBarItem(
                label: "Riwayat",
                icon: Image.asset(
                  "assets/icon/Paper (1).png",
                  width: 20,
                  height: 20,
                ),
                activeIcon: Image.asset(
                  "assets/icon/Paper.png",
                  width: 20,
                  height: 20,
                ))
          ]),
    );
  }
}
