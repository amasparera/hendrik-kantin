import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

import '../../const/main_app.dart';
import '../../dummi.dart';
import 'main_button.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            clipBehavior: Clip.hardEdge,
            height: MediaQuery.of(context).size.width - (padding * 2),
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.network(
              rendang,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Nasi Rendang Daging",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              const Text("Rp15.000"),
              const Spacer(),
              TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size(12, 12),
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            color: Color(0xffBDBDBD), width: .5)),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(
                        Icons.favorite_outline_rounded,
                        size: 13,
                        color: Color(0xffBDBDBD),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Favoritkan",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: fontBlack),
                      ),
                    ],
                  )),
            ],
          ),
          MainButton(
            vertical: 8,
            symetry: 0,
            paddingButtom: const EdgeInsets.symmetric(vertical: 4),
            onPress: () {
              showBottomSheet(
                  elevation: 2,
                  clipBehavior: Clip.hardEdge,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                  ),
                  context: context,
                  builder: (context) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Container(
                              width: 24,
                              height: 3,
                              margin: const EdgeInsets.only(top: 12),
                              decoration: BoxDecoration(
                                  color: const Color(0xffBDBDBD),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: padding,
                                right: padding,
                                bottom: 12,
                                top: 12),
                            child: Text(
                              "Tambah catatan untuk pesananmu",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: padding),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffFAFAFA),
                              border: RDottedLineBorder.all(
                                  width: 1, color: const Color(0xff9E9E9E)),
                            ),
                            child: TextField(
                              autofocus: true,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(200),
                              ],
                              minLines: 7,
                              maxLines: 7,
                              style: const TextStyle(fontSize: 13),
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 6),
                                hintStyle: TextStyle(
                                    color: Color(0xff767475), fontSize: 13),
                                hintText: "Cth : sambal dipisah yaa",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: padding,
                                bottom: 40,
                                right: padding,
                                top: 8),
                            child: Row(
                              children: [
                                const Text(
                                  "0/200",
                                  style: TextStyle(fontSize: 12),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffBDBDBD),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18))),
                                    onPressed: () {},
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 18),
                                      child: Text(
                                        "Simpan",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ));
            },
            text: "Tambah Pesanan",
            fontSize: 13,
          )
        ],
      ),
    );
  }
}
