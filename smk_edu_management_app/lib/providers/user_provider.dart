import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/models/user_model.dart';

class UserProvider with ChangeNotifier {
  UserModel? _user;
  UserModel? get user => _user;

  // fungsi untuk login
  void registerUser(String name, UserType type) {
    _user = UserModel(name: name, type: type);
    notifyListeners();
  }
}
