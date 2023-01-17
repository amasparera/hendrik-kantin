import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kantin/const/navigasi.dart';
import 'package:kantin/const/request_datate.dart';
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
    final co = context.read<LoginController>();
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
              MainTextField(
                controller: co.emailLogin,
                hint: "Email atau nomor ponsel",
                icon: const Icon(
                  Icons.email_outlined,
                  color: Color(0xffBDBDBD),
                ),
              ),
              const SizedBox(height: 12),
              Consumer<LoginController>(builder: (context, c, _) {
                return MainTextField(
                  controller: c.passwordLogin,
                  hint: "Password",
                  obscure: c.visibiliti,
                  icon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0xffBDBDBD),
                  ),
                  visibiliti: GestureDetector(
                    onTap: () => c.swithVisibiliti(),
                    child: Icon(
                        c.visibiliti
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                        color: const Color(0xffBDBDBD)),
                  ),
                );
              }),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        toPageCupertino(context, const LupaPassword());
                      },
                      child: const Text("Lupa Password?"))),
              Consumer<LoginController>(builder: (context, c, _) {
                return MainButton(
                  onPress: () {
                    c.reqLogin == RequestState.empty ? c.login(context) : null;
                  },
                  text: c.reqLogin == RequestState.empty ? "Masuk" : null,
                  symetry: 0,
                  child: c.reqLogin == RequestState.loading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: bg,
                            strokeWidth: 1.5,
                          ),
                        )
                      : null,
                );
              }),
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
                          text: "Buat akunmu",
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
