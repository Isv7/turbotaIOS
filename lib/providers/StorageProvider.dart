import 'dart:convert';
import 'package:app/models/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageProvider {
  Future<User> getUser() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var storageUser = localStorage.getString('user');
    if (storageUser != null) {
      var user = json.decode(storageUser);
      return User.fromResponse(user);
    }
    return null;
  }

  Future<void> saveUser(User user) async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('user', user.toJson());
  }

  Future<void> removeToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var storageUser = localStorage.getString('user');
    if (storageUser != null) {
      var user = json.decode(storageUser);
      user["token"] = "";
      User updateUser = User.fromResponse(user);
      saveUser(updateUser);
    }
  }

  Future<void> saveLanguage(String languageCode) async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.setString('language', languageCode);
  }

  Future<String> getLanguage() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var storageLanguage = localStorage.getString('language');
    return storageLanguage;
  }

  void dispose() {}
}
