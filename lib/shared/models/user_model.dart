import 'package:hive/hive.dart';

///=====>flutter packages pub run build_runner build
part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel extends HiveObject {
  @HiveField(0)
  final String token;
  @HiveField(1)
  final String id;
  @HiveField(2)
  final String userName;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String role;
  @HiveField(5)
  final String compNo;
  @HiveField(6)
  final String compId;
  @HiveField(7)
  final String name;

  UserModel({
    required this.token,
    required this.id,
    required this.userName,
    required this.email,
    required this.role,
    required this.compNo,
    required this.compId,
    required this.name,
  });

  factory UserModel.fromJson(json) {
    return UserModel(
      token: json['token'].toString(),
      id: json['id'].toString(),
      userName: json['username'].toString(),
      email: json['email'].toString(),
      role: json['role'].toString(),
      compId: json['cmpId'].toString(),
      compNo: json['cmpNo'].toString(),
      name: json['name'].toString(),
    );
  }
}
