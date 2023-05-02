import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static int() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBoolean({
    required String Key,
    required bool value,
  }) async
  {
    return await sharedPreferences!.setBool(Key, value);
  }


  static bool? getBoolean({
    required String Key,
  }) {
    return sharedPreferences?.getBool(Key);
  }
}
