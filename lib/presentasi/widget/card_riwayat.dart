import 'package:flutter/material.dart';

class CardRiwayat extends StatelessWidget {
  const CardRiwayat({
    Key? key,
    required this.status,
    this.onTap,
  }) : super(key: key);

  final int status;
  final VoidCallback? onTap;

  String posisi() {
    if (status == 1) {
      return "Makanan sudah diterima";
    } else if (status == 2) {
      return "Makanan sedang diantar";
    } else {
      return "Makanan akan diantar";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                clipBehavior: Clip.hardEdge,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                    color: const Color(0xffE1BEE7),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.network(
                  "",
                  errorBuilder: (context, error, stackTrace) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/icon/Wavy Buddies Vespa.png"),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    const Text(
                      "RM. Restu Bundo Payakumbuoh",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      posisi(),
                      style: const TextStyle(fontSize: 10),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "30 Okt 12.30",
                      style: TextStyle(
                          fontSize: 10,
                          color: status != 1 ? const Color(0xffEF5350) : null),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
