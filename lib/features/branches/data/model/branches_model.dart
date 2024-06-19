import 'package:gas_station_app/shared/models/branch_model.dart';

class ALLBranchesModel {
  List<BrancheModel>? branchesList = <BrancheModel>[];

  ALLBranchesModel({this.branchesList});

  ALLBranchesModel.fromJson(List json) {
    if (json.isNotEmpty) {
      for (var element in json) {
        branchesList?.add(BrancheModel.fromJson(element));
      }
    }
  }
}

// class Branche {
//   String? name;
//   int? id;

//   Branche({this.name, this.id});

//   Branche.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     id = json['id'];
//   }
// }
