import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kantin/presentasi/controller/login_controller.dart';
import 'package:kantin/presentasi/widget/main_button.dart';
import 'package:provider/provider.dart';

import '../../const/main_app.dart';
import '../../const/request_datate.dart';
import 'cek_karakter.dart';
import 'custom_divider.dart';
import 'main_textfield.dart';

class SingUpWidget extends StatelessWidget {
  const SingUpWidget({
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
                height: MediaQuery.of(context).size.height / 7.7,
              ),
              const Text(
                "BUAT AKUN",
                style: mainStyle,
              ),
              const Text("Hai, Selamat Datang di e-Kantin!"),
              const SizedBox(height: 24),
              MainTextField(
                controller: co.nameDaftar,
                hint: "Nama lengkap",
                icon: Image.asset(
                  "assets/icon/ID.png",
                  width: 8,
                ),
              ),
              const SizedBox(height: 12),
              MainTextField(
                controller: co.emailDaftar,
                hint: "Email atau nomor ponsel",
                icon: const Icon(
                  Icons.email_outlined,
                  color: Color(0xffBDBDBD),
                ),
              ),
              const SizedBox(height: 12),
              Consumer<LoginController>(builder: (context, c, _) {
                return MainTextField(
                  onChange: (value) => c.readPass(),
                  controller: c.passwordDaftar,
                  hint: "Password",
                  obscure: c.visibilitidaftar,
                  icon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Color(0xffBDBDBD),
                  ),
                  visibiliti: GestureDetector(
                    onTap: () => c.swithVisibilitidafatar(),
                    child: Icon(
                        c.visibilitidaftar
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                        color: const Color(0xffBDBDBD)),
                  ),
                );
              }),
              const SizedBox(height: 8),
              Consumer<LoginController>(builder: (context, c, _) {
                return c.openPass
                    ? Column(
                        children: [
                          CekCharakter(
                            fill: c.hasMinLength,
                            text: "Memiliki 8 charakter",
                          ),
                          CekCharakter(
                            fill: c.hasUppercase,
                            text: "Memiliki Setidaknya 1 karakter kapital",
                          ),
                          CekCharakter(
                            fill: c.hasSpecialCharacters,
                            text:
                                "Memiliki karakter unik seperti ~!@#\$%^&*().",
                          ),
                          CekCharakter(
                            fill: c.hasDigits,
                            text: "Memiliki karakter numerik",
                          ),
                        ],
                      )
                    : const SizedBox();
              }),
              // const SizedBox(height: ),
              Transform.translate(
                offset: const Offset(-12, 0),
                child: Consumer<LoginController>(builder: (context, c, _) {
                  return Row(
                    children: [
                      Checkbox(
                        value: c.syarat,
                        fillColor: const MaterialStatePropertyAll(purple),
                        onChanged: (value) => c.swithSyarat(),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        side: BorderSide(
                            width: 1.5,
                            color: Theme.of(context).unselectedWidgetColor),
                        splashRadius: 0,
                      ),
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                              text: "Saya setuju untuk ",
                              style: TextStyle(color: fontBlack),
                              children: [
                                TextSpan(
                                    text: "Ketentuan Layanan",
                                    style: TextStyle(color: Colors.lightBlue)),
                                TextSpan(text: " dan "),
                                TextSpan(
                                    text: "Kebijakan Privasi.",
                                    style: TextStyle(color: Colors.lightBlue))
                              ]),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(height: 2),
              Consumer<LoginController>(builder: (context, c, _) {
                return MainButton(
                  onPress: () {
                    c.reqDaftar == RequestState.empty
                        ? c.daftar(context)
                        : null;
                  },
                  text:
                      c.reqDaftar == RequestState.empty ? "Buat Akunmu" : null,
                  symetry: 0,
                  child: c.reqDaftar == RequestState.loading
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
                      text: "Sudah punya akun? ",
                      style: const TextStyle(color: fontBlack),
                      children: [
                        TextSpan(
                          text: "Masuk akunmu",
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
