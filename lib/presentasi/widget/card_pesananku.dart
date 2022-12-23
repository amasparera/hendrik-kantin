import 'package:flutter/material.dart';

import '../../const/main_app.dart';
import '../../dummi.dart';

class CardPesananKu extends StatelessWidget {
  const CardPesananKu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: padding, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  clipBehavior: Clip.hardEdge,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                      color: fontgrey, borderRadius: BorderRadius.circular(12)),
                  child: Image.network(
                    rendang,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(height: 4),
                      Text(
                        "Nasi rendang Daging",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Rp${15000}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: const Size(6, 6),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 7),
                          backgroundColor: bg,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: const BorderSide(
                                  color: Color(0xffCE93D8), width: 1.2)),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.remove_rounded,
                          color: purple,
                          size: 15,
                        )),
                    Container(
                      alignment: Alignment.center,
                      width: 24,
                      // color: Colors.red,
                      child: const Text(
                        "10",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: const Size(6, 6),
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 7),
                          backgroundColor: bg,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: const BorderSide(
                                  color: Color(0xffCE93D8), width: 1.2)),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.add_rounded,
                          color: purple,
                          size: 15,
                        )),
                  ],
                )
              ],
            ),
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
                    side:
                        const BorderSide(color: Color(0xffBDBDBD), width: 1.2)),
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
      ],
    );
  }
}
