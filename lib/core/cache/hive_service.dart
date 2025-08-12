import 'package:hive/hive.dart';

class GenericHiveService<T> {
  final String boxName;
  Box<T>? _box;

  GenericHiveService(this.boxName);

  Future<void> openBox() async {
    if (_box == null || !_box!.isOpen) {
      _box = await Hive.openBox<T>(boxName);
    }
  }

  Box<T> get box {
    if (_box == null || !_box!.isOpen) {
      throw Exception('Box $boxName is not open. Call openBox() first.');
    }
    return _box!;
  }

  Future<void> saveItem(String key, T item) async {
    await box.put(key, item);
  }

  T? getItem(String key) {
    return box.get(key);
  }

  Future<void> deleteItem(String key) async {
    await box.delete(key);
  }

  Future<void> clearAll() async {
    await box.clear();
  }

  bool itemExists(String key) {
    return box.containsKey(key);
  }

  List<T> getAllItems() {
    return box.values.toList();
  }
}
