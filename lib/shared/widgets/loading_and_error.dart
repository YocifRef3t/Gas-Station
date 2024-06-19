import 'package:flutter/material.dart';
import 'package:gas_station_app/core/app_utils/extension.dart';
import 'package:gas_station_app/core/theme/fonts.dart';
import 'package:gas_station_app/shared/widgets/error_widget.dart';

class LoadingAndError extends StatelessWidget {
  const LoadingAndError({
    super.key,
    required this.child,
    required this.isLoading,
    required this.isError,
    required this.loadingWidget 
  });
  final bool isLoading;
  final Widget loadingWidget  ;
  final Widget child;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return loadingWidget ;
    } else if (isError) {
      return  const GetErrorWidget(name: "لا توجد بيانات",);
    } else {
      return child;
    }
  }
}

