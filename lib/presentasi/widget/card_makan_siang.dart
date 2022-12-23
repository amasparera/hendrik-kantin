import 'package:flutter/material.dart';

import '../../const/main_app.dart';
import '../../const/navigasi.dart';
import '../../dummi.dart';

class CardMakanSiang extends StatelessWidget {
  const CardMakanSiang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context, .8),
      height: 100,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(color: shadow, offset: Offset(0, 1), blurRadius: 2)
      ], borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.network(
              rendang,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Nasi Rendang Daging",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "RM. Restu Bundo Payakumbuah",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  Spacer(),
                  Text(
                    "Rp15.000",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
