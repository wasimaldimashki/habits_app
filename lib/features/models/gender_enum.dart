import 'package:hive/hive.dart';

part 'gender_enum.g.dart';

@HiveType(typeId: 1) // Unique typeId for this enum
enum Gender {
  @HiveField(0)
  male,

  @HiveField(1)
  female,
}
