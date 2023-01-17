import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/presentasi/widget/list_harga.dart';

import '../../const/navigasi.dart';
import '../../dummi.dart';
import 'panggilan_view.dart';
import 'pesan_view.dart';

class LihatDetail extends StatelessWidget {
  const LihatDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: padding),
                height: 3,
                width: padding,
                decoration: BoxDecoration(
                    color: const Color(0xffbdbdbd),
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  padding: const EdgeInsets.all(2),
                  margin:
                      const EdgeInsets.only(right: padding, bottom: 2, top: 2),
                  child: Image.asset(
                    "assets/icon/Tick Square (3).png",
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Oder diterima",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffbdbdbd)),
                    ),
                    Text(
                      "Pesananmu sudah dikonfirmasi",
                      style: TextStyle(fontSize: 12, color: Color(0xffbdbdbd)),
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.5),
              child: SizedBox(
                width: 28,
                height: padding,
                child: DottedLine(
                  direction: Axis.vertical,
                  dashColor: Color(0xffE0E0E0),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  // padding: const EdgeInsets.all(2),
                  margin:
                      const EdgeInsets.only(right: padding, bottom: 2, top: 2),
                  child: Image.asset(
                    "assets/icon/Tick Square.png",
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Order dinatar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff20191B)),
                    ),
                    Text(
                      "Pesananmu sedang dibawa OB",
                      style: TextStyle(fontSize: 12, color: Color(0xff20191B)),
                    ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13.5),
              child: SizedBox(
                width: 28,
                height: padding,
                child: DottedLine(
                  direction: Axis.vertical,
                  dashColor: Color(0xffE0E0E0),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  padding: const EdgeInsets.all(2),
                  margin:
                      const EdgeInsets.only(right: padding, bottom: 2, top: 2),
                  child: Image.asset(
                    "assets/icon/Tick Square (2).png",
                  ),
                ),
                const Text(
                  "Selesai",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xffbdbdbd)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: const Color(0xffBDBDBD))),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    margin: const EdgeInsets.only(right: 12, top: 4, bottom: 4),
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
                                fontWeight: FontWeight.bold, color: fontBlack),
                            text: "Jade Filter ",
                            children: [
                              TextSpan(
                                  text: "(OB)",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
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
                                  fontSize: 10, fontWeight: FontWeight.bold),
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
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                  color: const Color(0xffF3E5F5),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          padding: const EdgeInsets.all(3.5),
                          width: 20,
                          margin: const EdgeInsets.only(right: 12, left: 12),
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child:
                              Image.asset("assets/icon/Wavy Buddies Vespa.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Pesan antar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Diantar hari ini, 12.30 - 12.45",
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffBDBDBD)),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // color: Colors.red,
                          // height: 40,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icon/lokasi.png",
                                width: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Lokasi kantin",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff9E9E9E)),
                                    ),
                                    Text(
                                      "RM. Restu Bundo Payakumbuoh",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: DottedLine(
                            direction: Axis.vertical,
                            dashColor: Color(0xff9E9E9E),
                            lineLength: 12,
                            lineThickness: .5,
                            // dashGapLength: .5,
                          ),
                        ),
                        SizedBox(
                          // color: Colors.red,
                          // height: 40,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icon/posisi.png",
                                width: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Lokasi Kantor",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xff9E9E9E)),
                                    ),
                                    Text(
                                      "Tower Sudirman,Lantai 5",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: const Color(0xffbdbdbd))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Pesanan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffBDBDBD),
                  ),
                  ListHarga(text: "Nasi Rendang Daging", quantity: "1"),
                  ListHarga(text: "Nasi Empat Hati", quantity: "1"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: const Color(0xffbdbdbd))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Pesanan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    thickness: 1,
                    color: Color(0xffBDBDBD),
                  ),
                  ListHarga(text: "Nasi Rendang Daging", quantity: "1"),
                  ListHarga(text: "Nasi Empat Hati", quantity: "1"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: const Color(0xffbdbdbd))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Metode pembayaran",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xffBDBDBD),
                  ),
                  Row(children: [
                    Container(
                      height: 28,
                      padding: const EdgeInsets.all(3.5),
                      width: 28,
                      margin: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icon/Wallet.png"),
                    ),
                    const Expanded(
                      child: Text(
                        "Tunai",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ),
                    const Text("Rp15.000"),
                  ])
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Text(
                  "No. Pesanan #12345",
                  style: TextStyle(color: Color(0xffBDBDBD)),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: const Color(0xffFFEBEE)),
              onPressed: () {},
              child: const Text(
                "Batalkan Pesanan",
                style: TextStyle(
                    color: Color(0xffD32F2F), fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: padding,
            )
          ]),
    ));
  }
}
