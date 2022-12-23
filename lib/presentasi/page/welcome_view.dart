import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/presentasi/page/login_view.dart';

import '../widget/main_button.dart';

class WellcomeView extends StatefulWidget {
  const WellcomeView({super.key});

  @override
  State<WellcomeView> createState() => _WellcomeViewState();
}

class _WellcomeViewState extends State<WellcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Spacer(),
          const SizedBox(height: 28),
          FadeIn(
              duration: const Duration(milliseconds: 700),
              child: Image.asset(
                "assets/image/welcome.png",
                width: 170,
              )),
          const SizedBox(height: 24),
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            delay: const Duration(milliseconds: 250),
            child: const Text("Selamat datang",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: fontBlack)),
          ),
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            delay: const Duration(milliseconds: 250),
            child: const Text("di e-Kantin!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: fontBlack)),
          ),
          const SizedBox(height: 12),
          FadeInUp(
              duration: const Duration(milliseconds: 800),
              delay: const Duration(milliseconds: 500),
              child: const Text("Pesan makan jadi mudah, dan")),
          FadeInUp(
              duration: const Duration(milliseconds: 800),
              delay: const Duration(milliseconds: 500),
              child: const Text("sesuai jam yang kamu mau")),
          const Spacer(),
          FadeIn(
            duration: const Duration(seconds: 1),
            delay: const Duration(milliseconds: 1600),
            child: MainButton(
              onPress: () => toPage(context, const LoginView()),
              text: "Daftar sekarang yuk",
            ),
          ),
          const SizedBox(height: 12),
          RichText(
            text: TextSpan(
                text: "Sudah mempunyai akun? ",
                style: const TextStyle(color: fontBlack),
                children: [
                  TextSpan(
                      text: "Masuk",
                      style: const TextStyle(color: Colors.lightBlue),
                      onEnter: (event) => toPage(context, const LoginView()))
                ]),
          ),
          const SizedBox(height: 45)
        ],
      ),
    );
  }
}
