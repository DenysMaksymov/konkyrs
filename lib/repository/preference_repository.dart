import 'package:shared_preferences/shared_preferences.dart';

class PreferenceRepository {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  saveInt(key, int value) async {
    final SharedPreferences prefs = await _prefs;
    await prefs.setInt(key, value);
  }

  getInt(key) async {
    final SharedPreferences prefs = await _prefs;
    final data = prefs.getInt(key);
    return data;
  }
}
