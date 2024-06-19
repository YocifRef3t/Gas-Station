import 'package:hive/hive.dart';

part 'branch_model.g.dart';
@HiveType(typeId: 2)
class BrancheModel extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  int? id;

  BrancheModel({this.name, this.id});

  BrancheModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }
}
