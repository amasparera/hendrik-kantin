import 'package:flutter/cupertino.dart';

import '../../const/main_app.dart';
import '../../dummi.dart';

class KeranjangView extends StatefulWidget {
  const KeranjangView({super.key});

  @override
  State<KeranjangView> createState() => _KeranjangViewState();
}

class _KeranjangViewState extends State<KeranjangView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 18),
          child: Text(
            "Keranjang",
            style: TextStyle(
                color: fontBlack, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Expanded(
            child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 4),
          itemCount: 3,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
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
                        "RM. Restu Bundo Payakumbuoh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "2 menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        "Pesan untuk pukul 12.00",
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffEF5350)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    ));
  }
}
