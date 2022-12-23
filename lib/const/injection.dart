import 'package:get_it/get_it.dart';
import 'package:kantin/presentasi/controller/keranjang_controller.dart';
import 'package:kantin/presentasi/controller/onbooard_controller.dart';
import 'package:kantin/presentasi/controller/riwayat_controller.dart';

import '../presentasi/controller/login_controller.dart';

final GetIt locator = GetIt.instance;

Future<void> registerLocator() async {
  locator.registerFactory<OnBoardController>(() => OnBoardController());
  locator.registerFactory<LoginController>(() => LoginController());
  locator.registerFactory<RiwayatController>(() => RiwayatController());
  locator.registerFactory<KeranjangController>(() => KeranjangController());
}
