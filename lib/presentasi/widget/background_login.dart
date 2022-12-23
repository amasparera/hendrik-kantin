import 'package:flutter/material.dart';

import '../../const/main_app.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            transform: Matrix4.translationValues(250.0, 0.0, 0.0),
            height: h * .55,
            padding: const EdgeInsets.all(36),
            decoration:
                const BoxDecoration(color: purple4, shape: BoxShape.circle),
            child: Container(
              alignment: Alignment.topCenter,
              decoration:
                  const BoxDecoration(color: purple3, shape: BoxShape.circle),
            ),
          ),
          SizedBox(height: h * .3),
          Image.asset(
            "assets/image/Intersect.png",
            height: h * .15,
          )
        ],
      ),
    );
  }
}
