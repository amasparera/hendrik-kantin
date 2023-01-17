import 'package:flutter/material.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/dummi.dart';
import 'package:kantin/presentasi/page/profile_view.dart';

import '../../const/main_app.dart';
import '../widget/card_makan_siang.dart';
import '../widget/card_resto.dart';
import '../widget/search_home.dart';

class ExplorView extends StatelessWidget {
  const ExplorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: padding, right: padding, top: padding, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Lokasi Kamu",
                        style: TextStyle(fontSize: 11),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Tower Sudirman, Lantai 5",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => toPageCupertino(context, const Profileview()),
                  child: Hero(
                    tag: "avatar",
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      onBackgroundImageError: (exception, stackTrace) =>
                          const Icon(Icons.person),
                      radius: 15,
                      backgroundImage: const NetworkImage(person),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 14),
            child: ChatInputField(),
          ),
          Container(
            color: const Color(0xffFFFFFF),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding, vertical: 8),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Saatnya makan siang",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Yuk jangan sampai perutmu keroncongan",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 24),
                          backgroundColor: const Color(0xffE1BEE7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          "Lihat semua",
                          style: TextStyle(
                              color: purple,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ListView.builder(
                    itemCount: 3,
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const CardMakanSiang(),
                  ),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: padding, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Kantin pilihan untukmu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Banyak review bagus di sini",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  itemCount: 3,
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const CardResto(),
                ),
              ),
              const SizedBox(height: 18),
            ],
          ),
          Container(
            color: const Color(0xffFFFFFF),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: padding, vertical: 12),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Populer di sekitarmu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Banyak orang pesan di sini",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: ListView.builder(
                    itemCount: 3,
                    clipBehavior: Clip.none,
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const CardResto(),
                  ),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
