import 'package:hive/hive.dart';

class HiveBoxes {
  static final countryNewsMeta = 'countryNewsMeta';
  static final countryNews = 'countryNews';
  static final savedCountryNews = 'savedCountryNews';

  static Future<Box<T>> openBox<T>(String boxName) async {
    Box<T> box;
    if (Hive.isBoxOpen(boxName)) {
      box = Hive.box<T>(boxName);
    } else {
      try {
        box = await Hive.openBox<T>(boxName);
      } catch (_) {
        await Hive.deleteBoxFromDisk(boxName);
        box = await Hive.openBox<T>(boxName);
      }
    }

    return box;
  }

  static Future<void> closeBox<T>(String boxName) async {
    Box box;
    if (Hive.isBoxOpen(boxName)) {
      box = Hive.box<T>(boxName);
      box.close();
    }
  }

  static void clearData() {
    _clearBox<Map>(countryNewsMeta);
    _clearBox<Map>(countryNews);
    _clearBox<Map>(savedCountryNews);
  }

  static _clearBox<T>(String name) async {
    try {
      print('clearing box $name');
      final Box<T> _box = await openBox<T>(name);
      await _box?.clear();
    } catch (_) {
      print('clear $name error: ${_.toString()}');
    }
  }
}
