import "package:shared_preferences/shared_preferences.dart";

class RemoveSharedPreference {
    dynamic clearJson(key) async {
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences prefs = await _prefs;
    var _res = prefs.remove("$key");
    return _res;
  }
}
