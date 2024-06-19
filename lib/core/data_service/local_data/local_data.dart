import 'package:dartz/dartz.dart';
import 'package:gas_station_app/core/constans/boxs.dart';
import 'package:gas_station_app/core/data_service/failure.dart';

import 'package:gas_station_app/shared/models/branch_model.dart';
import 'package:gas_station_app/shared/models/store_model.dart';
import 'package:gas_station_app/shared/models/user_model.dart';
import 'package:hive/hive.dart';

bool checkLocalLogin() {
  var box = Hive.box<UserModel>(kUserBox);
  var data = box.values.toList();
  if (data.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}

UserModel? getUser() {
  var box = Hive.box<UserModel>(kUserBox);
  var data = box.values.toList();
  if (data.isNotEmpty) {
    return data.first;
  } else {
    return null;
  }
}

String? getToken() {
  var user = getUser();
  if (user != null) {
    return user.token;
  } else {
    return null;
  }
}

Future<Either<Failure, bool>> localLogout() async {
  try {
    var box = Hive.box<UserModel>(kUserBox);
    await box.clear();
    return right(true);
  } catch (e) {
    return left(Failure.defaultMessage());
  }
}

UserModel? saveLocation() {
  var box = Hive.box<UserModel>(kUserBox);
  var data = box.values.toList();
  if (data.isNotEmpty) {
    return data.first;
  } else {
    return null;
  }
}

Future saveBranch({required BrancheModel brancheModel}) async {
  final box = Hive.box<BrancheModel>(kBrancheBox);
  await box.put(0, brancheModel);
  print("branch id  ${box.getAt(0)?.id}");
  removeStore();
}

BrancheModel? getBranch() {
  final box = Hive.box<BrancheModel>(kBrancheBox);
  if (box.isNotEmpty) {
    return box.getAt(0);
  } else {
    return null;
  }
}

Future saveStore({required StoreModel storeModel}) async {
  final box = Hive.box<StoreModel>(kStoreBox);
  await box.put(0, storeModel);
  print("store id  ${box.getAt(0)?.id}");
}

StoreModel? getStore() {
  final box = Hive.box<StoreModel>(kStoreBox);
  if (box.isNotEmpty) {
    return box.getAt(0);
  } else {
    return null;
  }
}

// USE when change branch
removeStore() {
  final box = Hive.box<StoreModel>(kStoreBox);
  return box.clear();
}

// NOT USE YET
removeBranch() {
  removeStore();
  final box = Hive.box<BrancheModel>(kBrancheBox);
  return box.clear();
}
