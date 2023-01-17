import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/dummi.dart';
import 'package:kantin/presentasi/controller/keranjang_controller.dart';
import 'package:kantin/presentasi/page/pesananku_view.dart';
import 'package:kantin/presentasi/widget/card_favorite.dart';
import 'package:kantin/presentasi/widget/main_button.dart';
import 'package:provider/provider.dart';

import '../widget/detail_product.dart';
import '../widget/pesan_antar.dart';

class DasbordView extends StatefulWidget {
  const DasbordView({super.key});

  @override
  State<DasbordView> createState() => _DasbordViewState();
}

class _DasbordViewState extends State<DasbordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Consumer<KeranjangController>(
          builder: (context, value, child) => value.keranjang.isNotEmpty
              ? FadeInUp(
                  child: MainButton(
                    paddingButtom: const EdgeInsets.only(top: 12, bottom: 12),
                    vertical: 18,
                    borderRadius: BorderRadius.circular(20),
                    onPress: () {
                      toPageCupertino(context, const PesanankuView());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Pesan antar dari RM. Restu Bundo, Pukul 12.30 - 12.45",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Stack(
                            children: [
                              Image.asset(
                                "assets/icon/Bag_white.png",
                                width: 20,
                              ),
                              const Positioned(
                                  top: 2,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 4,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox()),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          elevation: 1,
          pinned: true,
          expandedHeight: 280,
          flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(mie), fit: BoxFit.cover)),
                  child: ClipRRect(
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            const Color(0xff959B9B).withOpacity(0),
                            const Color(0xff594D4F).withOpacity(.84)
                          ])),
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: padding),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(person),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Spesialis masakan padang",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xffF2F2F2),
                                        ),
                                      ),
                                      Text(
                                        "RM. Restu Bundo Payakumbuoh",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xffF2F2F2),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ))),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                closePage(context);
              },
              child: const CircleAvatar(
                maxRadius: 15,
                minRadius: 8,
                // radius: 15,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: fontBlack,
                  size: 15,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 14),
            // height: 70,
            color: const Color(0xffEEEEEE),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "08.00 - 19.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    Text(
                      "Buka pukul",
                      style: TextStyle(fontSize: 11),
                    )
                  ],
                ),
                const SizedBox(height: 30, width: 26, child: VerticalDivider()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: star,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      "2rb rating",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 30, width: 28, child: VerticalDivider()),
                const Expanded(
                    child: Text(
                  "Kantin tower sudirman, Gedung A sektor 4, Jl. Jendral Sudirman No. 45",
                  style: TextStyle(fontSize: 10),
                ))
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
            margin: const EdgeInsets.symmetric(
                horizontal: padding, vertical: padding),
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
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: demoCategoryMenus.length, (context, index) {
          List<Menu> items = demoCategoryMenus[index].items;
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 18),
                  padding: const EdgeInsets.symmetric(horizontal: padding),
                  height: 30,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    demoCategoryMenus[index].category,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: DottedLine(
                    dashColor: Color(0xffE0E0E0),
                  ),
                ),
                const SizedBox(height: 18),
                ...List.generate(
                    items.length,
                    (index) => CardFavorite(
                          onTap: () {
                            showBottomSheet(
                                context: context,
                                elevation: 2,
                                clipBehavior: Clip.hardEdge,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                ),
                                builder: (context) => const DetailProduct());
                          },
                          tambah: () {
                            context
                                .read<KeranjangController>()
                                .addKeranjang(items[index]);
                          },
                          price: items[index].price.toInt(),
                          title: items[index].title,
                          horizontal: padding,
                        )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  height: 4,
                  width: double.infinity,
                  color: const Color(0xffEEEEEE),
                )
              ]);
        })),
        const SliverToBoxAdapter(
          child: SizedBox(height: 100),
        )
      ]),
    );
  }
}
