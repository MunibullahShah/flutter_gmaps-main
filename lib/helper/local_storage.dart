import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static final LocalStorageService _singleton = LocalStorageService._internal();

  factory LocalStorageService() => _singleton;

  LocalStorageService._internal();

  Future<bool> readBool(String key) async {
    final storage = await SharedPreferences.getInstance();
    return storage.getBool(key);
  }

  Future<String> readString(String key) async {
    final storage = await SharedPreferences.getInstance();
    return storage.getString(key);
  }

  Future<bool> setString(String key, String value) async {
    final storage = await SharedPreferences.getInstance();
    return storage.setString(key, value);
  }

  Future<bool> setToken(String token) async {
    final storage = await SharedPreferences.getInstance();
    return storage.setString("token", token);
  }

  Future<String> getToken() async {
    final storage = await SharedPreferences.getInstance();
    return storage.getString("token");
  }

  Future<bool> writeBool(String key, {bool value = false}) async {
    final storage = await SharedPreferences.getInstance();
    return storage.setBool(key, value);
  }

  Future<bool> deleteAll() async {
    final storage = await SharedPreferences.getInstance();
    return storage.clear();
  }
}
