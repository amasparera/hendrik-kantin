import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/presentasi/controller/keranjang_controller.dart';
import 'package:provider/provider.dart';

import "./const/injection.dart" as injection;
import 'presentasi/controller/login_controller.dart';
import 'presentasi/controller/onbooard_controller.dart';
import 'presentasi/controller/riwayat_controller.dart';
import 'presentasi/page/onboard_view.dart';

void main(List<String> args) async {
  await injection.registerLocator();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => injection.locator<OnBoardController>()),
        ChangeNotifierProvider(
            create: (_) => injection.locator<LoginController>()),
        ChangeNotifierProvider(
            create: (_) => injection.locator<RiwayatController>()),
        ChangeNotifierProvider(
            create: (_) => injection.locator<KeranjangController>())
      ],
      child: MaterialApp(
          title: "e-Kantin",
          debugShowCheckedModeBanner: false,
          home: const OnBoardView(),
          theme: ThemeData.light().copyWith(
              primaryColor: purple,
              textTheme: GoogleFonts.interTextTheme(),
              backgroundColor: bg,
              appBarTheme: const AppBarTheme(
                  backgroundColor: bg,
                  systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: Colors.transparent,
                      statusBarIconBrightness: Brightness.dark,
                      systemNavigationBarColor: Colors.transparent,
                      systemNavigationBarIconBrightness: Brightness.dark)))),
    );
  }
}
