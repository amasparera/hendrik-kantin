import 'package:flutter/material.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/presentasi/controller/login_controller.dart';
import 'package:provider/provider.dart';

import '../widget/background_login.dart';
import '../widget/log_in.dart';
import '../widget/sing_up.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    context.read<LoginController>().init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: bg,
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundLogin(),
          Consumer<LoginController>(builder: (context, controler, widget) {
            return controler.isLogin
                ? const LoginWidget()
                : const SingUpWidget();
          }),
          Positioned(
            right: 0,
            top: 20,
            child: IconButton(
              icon: const Icon(
                Icons.close_rounded,
                size: 28,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      )),
    );
  }
}
