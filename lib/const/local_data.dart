// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:shared_preferences/shared_preferences.dart';

class LocalData {
  final String token = 'TOKEN';

  void saveToken(String token) async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    sf.setString(this.token, token);
  }

  Future<String?> loadToken() async {
    final SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(token);
  }
}
