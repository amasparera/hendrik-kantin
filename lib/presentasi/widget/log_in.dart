import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/presentasi/page/home_view.dart';
import 'package:provider/provider.dart';

import '../../const/main_app.dart';
import '../controller/login_controller.dart';
import '../page/lupa_password_view.dart';
import 'custom_divider.dart';
import 'main_button.dart';
import 'main_textfield.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: padding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              const Text(
                "MASUK",
                style: mainStyle,
              ),
              const Text("Hai, Selamat Datang!"),
              const SizedBox(height: 24),
              const MainTextField(
                hint: "Email atau nomor ponsel",
                icon: Icon(
                  Icons.email_outlined,
                  color: Color(0xffBDBDBD),
                ),
              ),
              const SizedBox(height: 12),
              const MainTextField(
                hint: "Password",
                obscure: true,
                icon: Icon(
                  Icons.lock_outline_rounded,
                  color: Color(0xffBDBDBD),
                ),
                visibiliti: Icon(Icons.visibility_off_outlined,
                    color: Color(0xffBDBDBD)),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        toPageCupertino(context, const LupaPassword());
                      },
                      child: const Text("Lupa Password?"))),
              MainButton(
                onPress: () {
                  toPage(context, const HomeView());
                },
                text: "Masuk",
                symetry: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: const [
                    CustomDivider(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Atau",
                        style: TextStyle(color: grey2),
                      ),
                    ),
                    CustomDivider(),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: purple, width: 1.5)),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icon/Google svg (1).png",
                          width: 20,
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Masuk dengan goolge",
                          style: TextStyle(
                              color: fontgrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    )),
              ),
              const SizedBox(height: 24),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Belum mempunyai akun? ",
                      style: const TextStyle(color: fontBlack),
                      children: [
                        TextSpan(
                          text: "Masuk",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.read<LoginController>().swith();
                            },
                          style: const TextStyle(color: Colors.lightBlue),
                        )
                      ]),
                ),
              ),
              const SizedBox(height: 25)
            ],
          ),
        ),
      ),
    );
  }
}
