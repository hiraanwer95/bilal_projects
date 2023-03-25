import "package:shared_preferences/shared_preferences.dart";
import "dart:convert";

class GetSharedPreferences {
  /// Get integer value
  dynamic getInt(key) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    int? _res = prefs.getInt("$key");

    return _res;
  }

  /// Get string value
  dynamic getString(key) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    String? _res = prefs.getString("$key");
    return _res;
  }

  /// Get bool value
  dynamic getBoolean(key) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    bool? _res = prefs.getBool("$key");
    return _res;
  }

  /// Get list or object
  /// Use import 'dart:convert'; for jsonEncode
  dynamic getJson(key) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    String? jsonString = prefs.getString("$key");
    var _res = jsonDecode(jsonString!);
    return _res;
  }
}
