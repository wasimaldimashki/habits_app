import 'package:habits_app/features/models/habit_model.dart';
import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';

class GenericHiveService<T> {
  final _itemsStreamController = StreamController<List<T>>.broadcast();
  Stream<List<T>> get itemsStream => _itemsStreamController.stream;
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

  T? getSingleItem() {
    return box.isNotEmpty ? box.values.first : null;
  }

  Future<void> add(T item) async {
    final dynamic typedItem = item;
    if (typedItem is HabitModel) {
      await box.put(typedItem.id, item);
      _updateStream();
    } else {
      throw Exception('Unsupported type for add method.');
    }
  }

  Future<void> saveItem(String key, T item) async {
    await box.put(key, item);
    _updateStream();
  }

  T? get(String key) {
    return box.get(key);
  }

  Future<void> delete(String key) async {
    await box.delete(key);
    _updateStream();
  }

  List<T> getAll() {
    return box.values.toList();
  }

  Future<void> clear() async {
    await box.clear();
    _updateStream();
  }

  bool itemExists(String key) {
    return box.containsKey(key);
  }

  void _updateStream() {
    _itemsStreamController.add(box.values.toList());
  }
}
