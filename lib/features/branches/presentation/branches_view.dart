import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gas_station_app/core/theme/app_colors.dart';
import 'package:gas_station_app/features/branches/presentation/manager/cubit/branches_cubit.dart';
import 'package:gas_station_app/features/branches/presentation/widgets/branches_view_body.dart';
import 'package:gas_station_app/shared/widgets/custom_appbar.dart';

class BranchesView extends StatelessWidget {
  const BranchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: BlocProvider(
        create: (context) => BranchesCubit()..getALLBranches(),
        child: const Scaffold(
            appBar: CustomAppbar(
              title: "الفروع",
            ),
            body: Padding(
              padding: EdgeInsets.all(8.0),
              child: BranchesViewBody(),
            ),
          ),
        ),
    
    );
  }
}
