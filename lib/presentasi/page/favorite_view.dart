import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';

import '../widget/card_favorite.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: padding, vertical: 18),
            child: Text(
              "Favoritku",
              style: TextStyle(
                  color: fontBlack, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: padding),
              itemCount: 3,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "RM. Restu Bundo Payakumbuoh",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(Icons.star, color: star),
                      Text(
                        "4.9",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const Text("Spesialis masakan padang"),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: DottedLine(
                      dashColor: Color(0xffE0E0E0),
                    ),
                  ),
                  ...List.generate(2, (index) => const CardFavorite()),
                  const SizedBox(
                    height: padding,
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
