import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static late final SharedPreferences _prefs;

  Future<void> loginUser(String userName) async {
    try {
      SharedPreferences sharedPrefs = await _prefs;
      sharedPrefs.setString('userName', userName);
      _prefs.setString('userName', userName);
    } catch (e) {
      print(e);
    }
  }

  void logoutUser() async {
    SharedPreferences sharedPrefs = await _prefs;
    sharedPrefs.clear();
    void logoutUser() {
      _prefs.clear();
    }

    Future<String?> getUserName() async {
      SharedPreferences sharedPrefs = await _prefs;
      return sharedPrefs.getString('userName') ?? 'DefaultValue';
      String? getUserName() {
        return _prefs.getString('userName') ?? 'DefaultValue';
      }
    }