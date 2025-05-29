import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  void loginUser() {}
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginUser(String userName) async {
    try {
      SharedPreferences sharedPrefs = await _prefs;
      sharedPrefs.setString('userName', userName);
    } catch (e) {
      print(e);
    }
  }

  void logoutUser() {}
  void logoutUser() async {
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.clear();
  }

  String getUserName() {
    return "poojab26";
    Future<String?> getUserName() async {
      SharedPreferences sharedPrefs = await _prefs;
      return sharedPrefs.getString('userName') ?? 'DefaultValue';
    }
  }