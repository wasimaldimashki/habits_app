import 'package:habits_app/features/models/gender_enum.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0) // Unique typeId for this model
class UserModel extends HiveObject {
  @HiveField(0)
  final String? userName;

  @HiveField(1)
  final Gender? gender;

  UserModel({
    this.userName,
    this.gender,
  });
}
