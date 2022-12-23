import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      margin: const EdgeInsets.symmetric(horizontal: padding),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: const Color(0xff767475)),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/icon/Search.png",
            height: 15,
            width: 15,
          ),
          const SizedBox(width: padding / 4),
          const Expanded(
            child: TextField(
              readOnly: true,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                hintStyle: TextStyle(color: Color(0xff767475), fontSize: 10),
                hintText: "Hari ini kepingin makan apa?",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
