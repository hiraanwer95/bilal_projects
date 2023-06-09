import "package:shared_preferences/shared_preferences.dart";
import "dart:convert";

class SetSharedPreference {
  /// Adding an integer value
  dynamic putInt(key, val) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    var _res = prefs.setInt("$key", val);
    return _res;
  }

  /// Adding a string value
  dynamic putString(key, val) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    var _res = prefs.setString("$key", val);
    return _res;
  }

 /// Adding a bool value
  dynamic putBoolean(key, val) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    var _res = prefs.setBool("$key", val);
    return _res;
  }

  /// Adding a list or object
  dynamic putJson(key, val) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    var valString = jsonEncode(val);
    var _res = prefs.setString("$key", valString);
    return _res;
  }
  
}
