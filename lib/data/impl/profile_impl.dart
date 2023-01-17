import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:kantin/const/local_data.dart';
import 'package:kantin/data/repository/profile_repository.dart';
import 'package:kantin/domain/models/favorite_model.dart';
import 'package:kantin/domain/models/user_model.dart';

import '../../const/api_app.dart';

class ProfileImpl implements ProfileRepository {
  final Client _http = Client();
  final LocalData _localData = LocalData();

  @override
  Future<Either<String, UserModel>> getProfile() async {
    try {
      final token = await _localData.loadToken();
      final api = Uri.parse(ApiApp.profile + (token ?? ""));
      final res =
          await _http.get(api, headers: {"Authorization": ApiApp.basicAuth});

      final json = jsonDecode(res.body);
      print(json);
      if (res.statusCode == 200) {
        return Right(UserModel.fromJson(json["data"]));
      } else if (json["msg"] != null) {
        return Left(json['msg']);
      } else {
        return const Left("server tidak merespone");
      }
    } catch (e) {
      return const Left("Aplikasi error");
    }
  }

  @override
  Future<Either<String, String>> deleteProfile() {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<String, List<FavoriteModel>>> favoriteMenu(
      String idCustomer) async {
    try {
      final token = await _localData.loadToken();
      final api =
          Uri.parse("${ApiApp.getFavorite}${token ?? ""}&customer=$idCustomer");
      final res =
          await _http.get(api, headers: {"Authorization": ApiApp.basicAuth});

      final json = jsonDecode(res.body);
      print(json);
      if (res.statusCode == 200) {
        return Right((json["data"] as List)
            .map((e) => FavoriteModel.fromJson(e))
            .toList());
      } else if (json["msg"] != null) {
        return Left(json['msg']);
      } else {
        return const Left("server tidak merespone");
      }
    } catch (e) {
      return const Left("Aplikasi error");
    }
  }

  @override
  Future<Either<String, String>> addFavoriteMenu(
      String idCustomer, String idMenu, String status) async {
    try {
      final token = await _localData.loadToken();
      final api = Uri.parse("${ApiApp.addFavorite}${token ?? ""}");
      final res = await _http.post(api,
          headers: {"Authorization": ApiApp.basicAuth},
          body: {"customer": idCustomer, "menu": idMenu, "favorite": status});

      final json = jsonDecode(res.body);
      print(json);
      if (res.statusCode == 201) {
        return Right(json["msg"]);
      } else if (json["msg"] != null) {
        return Left(json['msg']);
      } else {
        return const Left("server tidak merespone");
      }
    } catch (e) {
      return const Left("Aplikasi error");
    }
  }

  @override
  Future<Either<String, String>> updateProfile(String idCustomer, String name,
      String address, String phoneNumber, String photo) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }
}
