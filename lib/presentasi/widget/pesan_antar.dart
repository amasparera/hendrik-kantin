import 'package:flutter/material.dart';

import '../../const/main_app.dart';
import 'main_button.dart';

class PesanAntar extends StatelessWidget {
  const PesanAntar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              width: 24,
              height: 3,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                  color: const Color(0xffBDBDBD),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: padding, right: padding, bottom: 8),
            child: Text(
              "Ganti opsi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Container(
              width: double.infinity,
              color: const Color(0xffF5F5F5),
              padding:
                  const EdgeInsets.symmetric(horizontal: padding, vertical: 12),
              child: const Text(
                "Pilih tipe pemesanan",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            onPressed: () {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    height: 28,
                    padding: const EdgeInsets.all(3.5),
                    width: 28,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: const BoxDecoration(
                        color: Color(0xffF3E5F5), shape: BoxShape.circle),
                    child: Image.asset("assets/icon/Wavy Buddies Vespa.png"),
                  ),
                  const Text(
                    "Pesan antar",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.purple),
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(backgroundColor: purple),
                  ),
                ],
              ),
            ),
          ),
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            onPressed: () {},
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    height: 28,
                    padding: const EdgeInsets.all(3.5),
                    width: 28,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: const BoxDecoration(
                        color: Color(0xffF3E5F5), shape: BoxShape.circle),
                    child:
                        Image.asset("assets/icon/Wavy Buddies Taco bags.png"),
                  ),
                  const Text(
                    "Pesan antar",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.5, color: const Color(0xffBDBDBD)),
                      shape: BoxShape.circle,
                    ),
                    // child: const CircleAvatar(backgroundColor: purple),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              color: const Color(0xffF5F5F5),
              padding:
                  const EdgeInsets.symmetric(horizontal: padding, vertical: 12),
              child: const Text(
                "Pilih waktu pengantaran",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  clipBehavior: Clip.hardEdge,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  builder: (context) => Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 24),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: padding),
                              child: Row(
                                children: [
                                  const Icon(Icons.arrow_back_ios_new_rounded),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Pesan untuk",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Pukul 11.30 - 11.45",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            MaterialButton(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: padding),
                              onPressed: () async {
                                await showTimePicker(
                                    cancelText: "Batal",
                                    confirmText: "Oke",
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                    builder: (context, child) {
                                      return Theme(
                                        data: Theme.of(context).copyWith(
                                          colorScheme: const ColorScheme.light(
                                            primary: purple, // <-- SEE HERE
                                            onPrimary:
                                                Colors.white, // <-- SEE HERE
                                            onSurface:
                                                Colors.black, // <-- SEE HERE
                                          ),
                                          textButtonTheme: TextButtonThemeData(
                                            style: TextButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: purple)),
                                          ),
                                        ),
                                        child: child!,
                                      );
                                    });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/icon/Time Circle.png",
                                      width: 24,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    const Text(
                                      "11.30 - 11.45",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: padding),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 12),
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: const BorderSide(
                                                  width: 1, color: Colors.grey),
                                            )),
                                        onPressed: () {},
                                        child: const Text(
                                          "Antar sekarang",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: fontBlack,
                                              fontSize: 15),
                                        )),
                                  ),
                                  const SizedBox(width: 18),
                                  Expanded(
                                    child: MainButton(
                                      symetry: 0,
                                      onPress: () {},
                                      text: "Konfirmasi",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ));
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: const [
                  Text(
                    "Antar sekarang",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 6),
          MainButton(
            onPress: () {},
            text: "Simpan pengantaran",
          ),
        ],
      ),
    );
  }
}
