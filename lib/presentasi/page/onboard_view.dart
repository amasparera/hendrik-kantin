import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/presentasi/controller/onbooard_controller.dart';
import 'package:kantin/presentasi/page/welcome_view.dart';
import 'package:provider/provider.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  @override
  void initState() {
    context.read<OnBoardController>().init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bg,
      floatingActionButton: FloatingActionButton(
          // mini: true,
          backgroundColor: purple,
          onPressed: () => context.read<OnBoardController>().indexPage == 2
              ? toPage(context, const WellcomeView())
              : context.read<OnBoardController>().nextPage(),
          child: const Icon(Icons.arrow_forward)),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: padding, left: padding, right: padding),
            child: Consumer<OnBoardController>(
                builder: (context, controller, widget) {
              return Row(
                children: [
                  if (controller.indexPage != 0)
                    GestureDetector(
                      onTap: () => controller.backPage(),
                      child: Container(
                        width: 20,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                          color: grey1,
                        ),
                      ),
                    ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => toPage(context, const WellcomeView()),
                    child: const Text(
                      "Lewati",
                      style: TextStyle(color: grey1),
                    ),
                  ),
                ],
              );
            }),
          ),
          Expanded(
              child: PageView(
            onPageChanged: (value) =>
                context.read<OnBoardController>().changeIndex(value),
            controller: context.read<OnBoardController>().pageController,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Pesan makananmu",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: fontBlack),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 40),
                      child: RichText(
                        text: const TextSpan(
                            text:
                                "Sekarang kamu bisa pesan makanan dengan\nmudah menggunakan ",
                            style: TextStyle(color: fontBlack),
                            children: [
                              TextSpan(
                                  text: "handphone",
                                  style: TextStyle(fontStyle: FontStyle.italic))
                            ]),
                      ),
                    ),
                    Image.asset("assets/image/onboard_1 (1).png"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/image/onborad_2 (2).png"),
                    const SizedBox(height: 25),
                    const Text(
                      "Diantar sesuai keinginanmu",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: fontBlack),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 40),
                      child: RichText(
                        text: const TextSpan(
                          text: "Bisa pilih mau diantar jam berapa, lho!",
                          style: TextStyle(color: fontBlack),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tentunya aman buat kamu",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: fontBlack),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 40),
                      child: RichText(
                        text: const TextSpan(
                          text:
                              "Kami terus mensosialisasi mitra, untuk\nterus menjaga kebersihan selama membuat\nmakanan",
                          style: TextStyle(color: fontBlack),
                        ),
                      ),
                    ),
                    Image.asset("assets/image/onboard_3 (1).png"),
                  ],
                ),
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 30, left: padding, right: padding),
            child: Consumer<OnBoardController>(
                builder: (context, controller, widget) {
              return Row(
                children: List.generate(
                    3,
                    (index) => AnimatedContainer(
                          height: 10,
                          width: index == controller.indexPage ? 25 : 10,
                          margin: const EdgeInsets.only(right: 6),
                          decoration: index == controller.indexPage
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: purple)
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: purple2),
                          duration: const Duration(milliseconds: 250),
                        )),
              );
            }),
          )
        ],
      )),
    );
  }
}
