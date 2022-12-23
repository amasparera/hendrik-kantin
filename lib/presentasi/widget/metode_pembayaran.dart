import 'package:flutter/material.dart';

import '../../const/main_app.dart';

class PilihPembayaran extends StatelessWidget {
  const PilihPembayaran({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: padding),
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
            "Pilih metode pembayaran",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
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
                  width: 28,
                  margin: const EdgeInsets.only(right: 12),
                  child: Image.asset("assets/icon/Coming-Soon.png"),
                ),
                const Text(
                  "LinkAja",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
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
                  width: 28,
                  margin: const EdgeInsets.only(right: 12),
                  child: Image.asset("assets/icon/image 2.png"),
                ),
                const Text(
                  "Dana",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const Spacer(),
                Container(
                  height: 28,
                  width: 28,
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.5, color: const Color(0xffBDBDBD)),
                    shape: BoxShape.circle,
                  ),
                  // child: const CircleAvatar(backgroundColor: purple),
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
                  width: 28,
                  margin: const EdgeInsets.only(right: 12),
                  child: Image.asset("assets/icon/image 3.png"),
                ),
                const Text(
                  "Ovo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const Spacer(),
                Container(
                  height: 28,
                  width: 28,
                  padding: const EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.5, color: const Color(0xffBDBDBD)),
                    shape: BoxShape.circle,
                  ),
                  // child: const CircleAvatar(backgroundColor: purple),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 3,
          width: double.infinity,
          color: const Color(0xffEEEEEE),
        ),
        const Padding(
          padding: EdgeInsets.only(left: padding, right: padding, top: 12),
          child: Text(
            "Metode pembayaran",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                  child: Image.asset("assets/icon/Wallet.png"),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Tunai",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      Text(
                        "Jangan lupa konfirmasi titipkan satpam apabila kamu tidak bisa",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff20191B)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 28,
                  width: 28,
                  padding: const EdgeInsets.all(2.5),
                  margin: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.5, color: const Color(0xffBDBDBD)),
                    shape: BoxShape.circle,
                  ),
                  // child: const CircleAvatar(backgroundColor: purple),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
