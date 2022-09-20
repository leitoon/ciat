import 'package:hive/hive.dart';

part 'user.g.dart';


@HiveType(typeId: 0)
class User  {
  @HiveField(0)
  final String nombre;
  @HiveField(1)
  final String apellido;
  @HiveField(2)
  final String cedula;

  const User({
    required this.nombre,
    required this.apellido,
    required this.cedula,
  });
}
