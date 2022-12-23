import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';

import '../../const/navigasi.dart';
import '../../dummi.dart';
import 'edit_profile.dart';

class Profileview extends StatefulWidget {
  const Profileview({super.key});

  @override
  State<Profileview> createState() => _ProfileviewState();
}

class _ProfileviewState extends State<Profileview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: fontBlack,
            size: 20,
          ),
          onPressed: () => closePage(context),
        ),
        title: const Text(
          "Profilku",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: fontBlack,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: padding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(width: 1, color: const Color(0xffCE93D8))),
                  child: const Hero(
                    tag: "avatar",
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(person),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: 40,
                  child: VerticalDivider(
                    thickness: 1.2,
                    color: Color(0xff898989),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Aruna",
                        style: mainStyle,
                      ),
                      Text(
                        "Sentana",
                        style:
                            mainStyle.copyWith(fontWeight: FontWeight.normal),
                      ),
                      const Text("+62 1234567890"),
                      const Text("johndoe@email.com")
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    toPageCupertino(context, const EditProfile());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(
                      "assets/icon/Edit Square.png",
                      width: 22,
                      height: 22,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: padding, bottom: 12, right: padding, left: padding),
            child: Text(
              "Personal akun",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: padding),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/Paper (2).png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "Riwayat",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: fontBlack,
                          fontSize: 15),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff969394),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: padding),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icon/Swap.png",
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "Metode pembayaran",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: fontBlack,
                          fontSize: 15),
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff969394),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
