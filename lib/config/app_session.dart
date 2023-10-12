part of 'configs.dart';

class AppSession {
  static Future<bool> saveToken(String token) async {
    final pref = await SharedPreferences.getInstance();
    return await pref.setString('token', token);
  }

  static Future<String> getToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString('token').toString();
  }

  static Future<bool> removeToken() async {
    final pref = await SharedPreferences.getInstance();
    return pref.remove('token');
  }
}
