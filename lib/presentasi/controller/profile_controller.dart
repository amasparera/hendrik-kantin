import 'package:flutter/cupertino.dart';
import 'package:kantin/const/request_datate.dart';
import 'package:kantin/data/impl/profile_impl.dart';
import 'package:kantin/domain/models/user_model.dart';

class ProfileController extends ChangeNotifier {
  RequestState reqProfile = RequestState.empty;
  final ProfileImpl _profileImpl = ProfileImpl();
  UserModel? userModel;

  void getFavorite() async {
    reqProfile = RequestState.loading;
    notifyListeners();
    final res = await _profileImpl.getProfile();
    res.fold((l) {
      reqProfile = RequestState.empty;
      notifyListeners();
    }, (r) {
      reqProfile = RequestState.empty;
      userModel = r;
      notifyListeners();
    });
  }
}
