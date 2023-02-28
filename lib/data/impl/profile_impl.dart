// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

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
  Future<Either<String, String>> updateProfile(
      String name, String address, String phoneNumber,
      {File? photo}) async {
    // try {
    final token = await _localData.loadToken();
    print(token);
    final id = await _localData.loadId();
    print(id);

    final api = Uri.parse(ApiApp.updateProfile + (token ?? ""));
    final req = MultipartRequest('POST', api);

    req.headers.addAll({"Authorization": ApiApp.basicAuth});
    req.fields.addAll({
      "customer": id ?? '',
      "name": name,
      "address": address,
      "phone_number": phoneNumber,
    });
    if (photo != null) {
      req.files.add(await MultipartFile.fromPath("photo_profile", photo.path));
    }

    print(req.fields);
    final respone = await req.send();
    final responed = await Response.fromStream(respone);
    final json = jsonDecode(responed.body);
    print(json);
    print(responed.statusCode);
    print(0);
    if (responed.statusCode == 200 || responed.statusCode == 201) {
      print(1);
      return Right(json["msg"]);
    } else if (json["data"][0]["msg"] != null) {
      print(2);
      return Left(json["data"][0]["msg"]);
    } else if (json["msg"] != null) {
      print(3);
      return Left(json["msg"]);
    } else {
      print(4);
      return const Left("Server Error");
    }
    // } catch (e) {
    //   print(e);
    //   return const Left("Aplikasi error");
    // }
  }
}
