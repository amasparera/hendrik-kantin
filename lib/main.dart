import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kantin/const/local_data.dart';
import 'package:kantin/const/main_app.dart';
import 'package:kantin/presentasi/controller/keranjang_controller.dart';
import 'package:kantin/presentasi/page/home_view.dart';
import 'package:provider/provider.dart';

import "./const/injection.dart" as injection;
import 'presentasi/controller/login_controller.dart';
import 'presentasi/controller/onbooard_controller.dart';
import 'presentasi/controller/profile_controller.dart';
import 'presentasi/controller/riwayat_controller.dart';
import 'presentasi/page/onboard_view.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await injection.registerLocator();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark),
  );
  final home = await LocalData().loadToken();
  runApp(MyApp(
    home: home,
  ));
}
// masih baru
class MyApp extends StatelessWidget {
  const MyApp({super.key, this.home});

  final String? home;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                injection.locator<OnBoardController>()..init(context)),
        ChangeNotifierProvider(
            create: (_) => injection.locator<LoginController>()),
        ChangeNotifierProvider(
            create: (_) => injection.locator<RiwayatController>()),
        ChangeNotifierProvider(
            create: (_) => injection.locator<KeranjangController>()),
        ChangeNotifierProvider(
            create: (_) => injection.locator<ProfileController>())
      ],
      child: MaterialApp(
          title: "E-Kantin",
          debugShowCheckedModeBanner: false,
          home: home == null ? const OnBoardView() : const HomeView(),
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
