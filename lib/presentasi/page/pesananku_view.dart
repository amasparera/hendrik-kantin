import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/presentasi/widget/main_button.dart';

import '../widget/card_pesananku.dart';
import '../widget/metode_pembayaran.dart';
import '../widget/pesan_antar.dart';
import 'checkout_view.dart';

class PesanankuView extends StatefulWidget {
  const PesanankuView({super.key});

  @override
  State<PesanankuView> createState() => _PesanankuViewState();
}

class _PesanankuViewState extends State<PesanankuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: MainButton(
        vertical: 12,
        onPress: () {
          toPageCupertino(context, const CheckoutView());
        },
        text: "Pesan dan antar sekarang",
      ),
      backgroundColor: bg,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
            margin:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 12),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color(0xffE0E0E0),
                ),
                borderRadius: BorderRadius.circular(14)),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Pesan antar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Diatar dalam 20 menit",
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(0, 0),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    backgroundColor: bg,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(
                            color: Color(0xffCE93D8), width: 1.2)),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        clipBehavior: Clip.hardEdge,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                        ),
                        builder: (context) => const PesanAntar());
                  },
                  child: const Text(
                    "Ganti",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: purple,
                        fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              children: [
                const Text(
                  "Alamat pengantaran",
                  style: TextStyle(fontSize: 12),
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(0, 0),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    backgroundColor: bg,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: const BorderSide(
                            color: Color(0xffCE93D8), width: 1.2)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Ganti Alamat",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: purple,
                        fontSize: 13),
                  ),
                ),
                const SizedBox(
                  width: padding,
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 8),
            child: Row(
              children: [
                Image.asset(
                  "assets/icon/Location.png",
                  width: 20,
                ),
                const SizedBox(width: 20),
                const Expanded(
                    child: Text(
                  "Tower Sudirman, Lantai 5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 4),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: const Color(0xffC8E6C9),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/icon/Frame 124.png",
                  width: 13,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    "Mohon isi catatan biar office boy gampang menemukan mejamu, atau konfirmasi pengantaran pesananmu",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(width: padding),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(0, 0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                  backgroundColor: bg,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: const BorderSide(
                          color: Color(0xffBDBDBD), width: 1.2)),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icon/Document.png",
                      width: 12,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Catatan",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff424242),
                          fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 6,
            margin: const EdgeInsets.symmetric(vertical: 6),
            color: const Color(0xffEEEEEE),
            width: double.infinity,
          ),
          const CardPesananKu(),
          Container(
            height: 6,
            margin: const EdgeInsets.symmetric(vertical: 6),
            color: const Color(0xffEEEEEE),
            width: double.infinity,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  clipBehavior: Clip.hardEdge,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  builder: (context) => const PilihPembayaran());
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: padding, vertical: 14),
              child: Row(
                children: [
                  const Text(
                    "Pilih pembayaran",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Image.asset("assets/icon/More Circle.png", width: 20)
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 4),
            child: Row(
              children: const [
                Text(
                  "Total pesanan",
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
                Text(
                  "Rp15.000",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 4),
            child: Row(
              children: const [
                Text(
                  "Ongkos kirim",
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
                Text(
                  "Rp2.000",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: padding, vertical: 4),
            child: Divider(
              color: Color(0xff616161),
              thickness: 1,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 4),
            child: Row(
              children: const [
                Text(
                  "Total pembayaran",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Rp2.000",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
