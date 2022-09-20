import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class UserProvider {
  late Box box;
  Future<bool> inicialitazarBox() async {
    final directorio = await getApplicationSupportDirectory();
    Hive.init(directorio.path);
    box = await Hive.openBox('UserBox');
    return box.isOpen;
  }

  Future<bool> anadirUser(var user) async {
    await box.add(user);
    return true;
  }

  Map<dynamic, dynamic> leerUser() {
    Map<dynamic, dynamic> userMap = box.toMap();
    return userMap;
  }

  dispose() {
    box.close();
  }
}
