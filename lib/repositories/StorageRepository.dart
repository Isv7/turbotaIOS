import 'package:app/providers/StorageProvider.dart';

import 'package:app/models/User.dart';

class StorageRepository {
  StorageProvider storageProvider = StorageProvider();

  Future<User> getUser() => storageProvider.getUser();

  Future<void> saveUser(User user) => storageProvider.saveUser(user);

  Future<void> removeToken() => storageProvider.removeToken();

  Future<void> saveLanguage(String languageCode) =>
      storageProvider.saveLanguage(languageCode);

  Future<String> getLanguage() => storageProvider.getLanguage();

  void dispose() {
    storageProvider.dispose();
  }
}
