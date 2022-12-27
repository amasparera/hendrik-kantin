import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/presentasi/page/detail_riwayat_selesai.dart';

import '../../const/main_app.dart';
import '../widget/card_riwayat.dart';

class RiwayatView extends StatelessWidget {
  const RiwayatView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  left: padding, right: padding, top: 18, bottom: 8),
              child: Text(
                "Riwayat pesanan",
                style: TextStyle(
                    color: fontBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8),
              alignment: Alignment.centerLeft,
              child: const TabBar(
                dragStartBehavior: DragStartBehavior.start,
                isScrollable: true,
                // labelPadding: EdgeInsets.only(right: 8),
                padding: EdgeInsets.zero,
                labelColor: fontBlack, physics: ScrollPhysics(),
                indicatorColor: purple,

                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Color(0xffBDBDBD),
                // labelPadding: EdgeInsets.zero,
                indicatorPadding: EdgeInsets.all(0), indicatorWeight: 0,
                labelStyle: TextStyle(
                    color: fontBlack,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3, color: Color(0xffAB47BC)),
                    insets: EdgeInsets.only(left: 0, right: 20, bottom: 0)),

                tabs: [
                  Tab(
                    text: "Sudah selesai",
                  ),
                  Tab(
                    text: "Dalam proses",
                  ),
                  Tab(text: "Terjadwal"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                ListView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding, vertical: 18),
                  children: List.generate(
                      3,
                      (index) => CardRiwayat(
                          status: 1,
                          onTap: () {
                            Navigator.of(context)
                                .push(toUpPage(const DetailRiwayatSelesai()));
                          })),
                ),
                ListView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding, vertical: 18),
                  children: List.generate(
                      3,
                      (index) => const CardRiwayat(
                            status: 2,
                          )),
                ),
                ListView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding, vertical: 18),
                  children: List.generate(
                      3,
                      (index) => const CardRiwayat(
                            status: 3,
                          )),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
