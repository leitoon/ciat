import 'package:ciat/screens/screens.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class Hivedata {
  const Hivedata();
  Future<int> saveContact(User contact) async {
    final Box<User> box = await Hive.openBox<User>('Usuarios');
    return box.add(contact);
  }

  Future<List<User>> get contacts async {
    final Box<User> box = await Hive.openBox<User>('Usuarios');
    return box.values.toList();
  }
}
