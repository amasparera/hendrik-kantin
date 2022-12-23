import 'package:flutter/material.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/presentasi/page/dashboard_view.dart';

import '../../const/main_app.dart';
import '../../dummi.dart';

class CardResto extends StatelessWidget {
  const CardResto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      clipBehavior: Clip.hardEdge,
      width: 160,
      margin: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: shadow, offset: Offset(0, 1), blurRadius: 2)
          ]),
      child: MaterialButton(
        clipBehavior: Clip.hardEdge,
        padding: EdgeInsets.zero,
        onPressed: () {
          toPage(context, const DasbordView());
        },
        child: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                mie,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
              child: Text(
                "RM. Restu bunda Payakumbuoh",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: star,
                    size: 16,
                  ),
                  const SizedBox(width: 3),
                  const Text(
                    "4.9",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    height: 12,
                    width: 1,
                    color: fontBlack,
                  ),
                  const Text(
                    "2rb+ rating",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
