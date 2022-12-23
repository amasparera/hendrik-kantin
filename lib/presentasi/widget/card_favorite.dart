import 'package:flutter/material.dart';

import '../../const/main_app.dart';
import '../../dummi.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite(
      {Key? key,
      this.horizontal = 0,
      t,
      this.title,
      this.price,
      this.tambah,
      this.onTap,
      this.favorite})
      : super(key: key);

  final double horizontal;
  final String? title;
  final int? price;

  final VoidCallback? tambah;
  final VoidCallback? onTap;
  final VoidCallback? favorite;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 4),
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
                children: [
                  const SizedBox(height: 4),
                  Text(
                    title ?? "Nasi rendang Daging",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Rp${price ?? 15000}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(12, 12),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 10),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: purple, width: .5)),
                    ),
                    onPressed: tambah,
                    child: const Text(
                      "Tambah",
                      style: TextStyle(
                          color: purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
