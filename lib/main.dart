import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gas_station_app/core/data_service/local_data/local_data.dart';
import 'package:gas_station_app/core/router/app_router.dart';
import 'package:gas_station_app/core/theme/app_colors.dart';
import 'package:gas_station_app/core/theme/app_theme.dart';
import 'package:gas_station_app/shared/models/branch_model.dart';
import 'package:gas_station_app/shared/models/store_model.dart';
import 'package:gas_station_app/shared/models/user_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/constans/boxs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(BrancheModelAdapter());
  Hive.registerAdapter(StoreModelAdapter());
  await Hive.openBox<UserModel>(kUserBox);
  await Hive.openBox<BrancheModel>(kBrancheBox);
  await Hive.openBox<StoreModel>(kStoreBox);
  await localLogout();
  runApp(const GasStationApp());
}

class GasStationApp extends StatelessWidget {
  const GasStationApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.appTheme(),
    );
  }
}
