
import 'package:flutter/material.dart';
import 'package:gas_station_app/features/pumps/presentation/widgets/pumps_view_body.dart';
import 'package:gas_station_app/shared/widgets/custom_appbar.dart';

class PumpsView extends StatelessWidget {
  const PumpsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        bottom: false,
      child: Scaffold(
        appBar: CustomAppbar(
          title: "المضخات",
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: PumpsViewBody(),
        ),
      ),
    );
  }
}
