import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/dummi.dart';
import 'package:kantin/presentasi/page/panggilan_view.dart';
import 'package:kantin/presentasi/page/pesan_view.dart';

import '../../const/main_app.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              closePage(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: fontBlack,
            )),
        title: const Text(
          "Pesananku",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: fontBlack, fontSize: 17),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: padding, vertical: padding),
            child: Image.asset("assets/image/Wavy Buddies Address.png"),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
                color: Color(0xffF3E5F5)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding, vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        margin:
                            const EdgeInsets.only(right: 12, top: 4, bottom: 4),
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.network(
                          person,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: fontBlack),
                                text: "Jade Filter ",
                                children: [
                                  TextSpan(
                                      text: "(OB)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal))
                                ],
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          toPage(context, const PesanView());
                        },
                        child: Image.asset(
                          "assets/icon/Group 46.png",
                          scale: 4,
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      GestureDetector(
                        onTap: () {
                          toPage(context, const PanggilanView());
                        },
                        child: Image.asset(
                          "assets/icon/Group 47.png",
                          scale: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 18, bottom: 12, left: padding, right: padding),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18)),
                      color: bg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                DottedLine(
                                  lineLength: 60,
                                  dashColor: Color(0xffE0E0E0),
                                ),
                                SizedBox(width: 60),
                                DottedLine(
                                  lineLength: 60,
                                  dashColor: Color(0xffE0E0E0),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/Tick Square.png",
                                      width: 24,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      "Order diterima",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/Tick Square (2).png",
                                      width: 24,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      "Order diantar",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffBDBDBD)),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/Tick Square (2).png",
                                      width: 24,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      "selesai",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xffBDBDBD)),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: padding),
                      const Text(
                        "RM. Restu Bundo Pakakumbuoh",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Rp2.000 • 2 menu • Tunai",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff9E9E9E)),
                        ),
                      ),
                      const Text(
                        "Tower Sudirman, Lantai 5 ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff9E9E9E)),
                      ),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Lihat detail",
                              style: TextStyle(
                                  color: Color(0xffBA68C8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
