import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/dummi.dart';

import '../widget/list_harga.dart';

class DetailRiwayatSelesai extends StatefulWidget {
  const DetailRiwayatSelesai({super.key});

  @override
  State<DetailRiwayatSelesai> createState() => _DetailRiwayatSelesaiState();
}

class _DetailRiwayatSelesaiState extends State<DetailRiwayatSelesai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.only(left: padding, right: padding),
        children: [
          Center(
            child: Container(
              width: 32,
              height: 5,
              margin: const EdgeInsets.only(top: 12, bottom: padding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffBDBDBD)),
            ),
          ),
          SizedBox(
            height: 38,
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  "assets/icon/Tick Square.png",
                  width: 28,
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Selesai",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Makan sudah diterima",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "30 okt, 12.30",
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      "No. Pesanan #12345",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Divider(
            thickness: 2,
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Text(
              "Kasih Rating ke OB?",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          )),
          Center(
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              glow: false,
              unratedColor: Colors.grey.shade200,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star_purple500_sharp,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                // print(rating);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Divider(thickness: 2),
          ),
          Row(
            children: [
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(right: 12, top: 4, bottom: 4),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  person,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
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
                            style: TextStyle(fontWeight: FontWeight.normal))
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
                  )
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Divider(
              thickness: 2,
            ),
          ),
          const Text(
            "Detail pengiriman",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xff9E9E9E)),
          ),
          const SizedBox(height: 12),
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
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff9E9E9E)),
                      ),
                      Text(
                        "RM. Restu Bundo Payakumbuoh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
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
              direction: Axis.vertical, dashColor: Color(0xff9E9E9E),
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
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff9E9E9E)),
                      ),
                      Text(
                        "Tower Sudirman,Lantai 5",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              thickness: 2,
            ),
          ),
          const Text(
            "Pesanan",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          const SizedBox(height: 10),
          ...List.generate(
              3,
              (index) => Row(
                    children: const [
                      Expanded(
                          child: Text(
                        "Nasi Rendang Daging",
                        style: TextStyle(fontSize: 12),
                      )),
                      Text(
                        "1",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              thickness: 2,
            ),
          ),
          const Text(
            "Detail pembayaran",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
          const SizedBox(height: 10),
          const ListHarga(
            quantity: "Rp15.000",
            text: "Harga",
          ),
          const ListHarga(
            quantity: "Rp2.000",
            text: "Ongkir",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: DottedLine(
              dashColor: Color(0xffEEEEEE),
            ),
          ),
          const ListHarga(
            quantity: "Rp20.000",
            text: "Total",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: DottedLine(
              dashColor: Color(0xffEEEEEE),
            ),
          ),
          const ListHarga(
            quantity: "Rp20.000",
            text: "Bayar dengan tunai",
          ),
        ],
      )),
    );
  }
}
