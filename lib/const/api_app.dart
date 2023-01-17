import 'dart:convert';

class ApiApp {
//
  static String baseUrl = "https://ekantin.amazeglam.id/api";

// login
  static String basicAuth =
      'Basic ${base64.encode(utf8.encode('e-kantin:e-kantin2023'))}';
  static String login = "$baseUrl/customer/login/auth";
  static String lupaPassword = "$baseUrl/customer/login/reset_password";
  static String verifikasi = "$baseUrl/customer/login/code_verification";
  static String regiter = "$baseUrl/customer/login/register";
  static String updatePassword =
      "$baseUrl/customer/login/update_password?token_user=";

// profile
  static String profile = "$baseUrl/customer/my_customer?token_user=";
  static String updateProfile = "$baseUrl/customer/update?token_user=";
  static String getFavorite =
      "$baseUrl/customer/menu/favorite_menu?token_user=";
  static String addFavorite = "$baseUrl/customer/menu/set_favorite?token_user=";
}
