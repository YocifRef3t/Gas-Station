import 'package:flutter/material.dart';
import 'package:gas_station_app/core/app_utils/extension.dart';
import 'package:gas_station_app/features/pumps/presentation/widgets/pump_item.dart';

class PumpsViewBody extends StatelessWidget {
  const PumpsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) =>  PumpItem(
          img: "gas1".jpg(),
          title: "طلمبة اولي بنزين",
        ),
      
    );
  }
}
