import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gas_station_app/core/data_service/local_data/local_data.dart';
import 'package:gas_station_app/features/branches/data/model/branches_model.dart';
import 'package:gas_station_app/features/branches/data/repo/branche_repo_impl.dart';
import 'package:gas_station_app/features/branches/presentation/manager/cubit/branches_state.dart';
import 'package:gas_station_app/shared/models/branch_model.dart';

class BranchesCubit extends Cubit<BranchesState> {
  BranchesCubit() : super(BranchesInitial());

  static BranchesCubit get(context) => BlocProvider.of(context);

  List<BrancheModel> branchesList = <BrancheModel>[];

  Future<void> getALLBranches() async {
    emit(LoadingBranches());
    final result = await BranchesRepoImpl().getAllBranches();
    result.fold((failur) {
      emit(ErrorBranches(msgError: failur.errorMessage));
    }, (branchesmodel) {
      // if search before
      branchesList.clear();
      branchesList = <BrancheModel>[];
      if (branchesmodel.branchesList != []) {
        branchesList = branchesmodel.branchesList ?? <BrancheModel>[];
      }
      emit(SuccessBranches());
    });
  }

  searchOfBranch({required String searchText}) {
    var result =
        branchesList.where((element) => element.name == searchText).toList();
    if (result.isNotEmpty) {
      branchesList.clear();
      branchesList = <BrancheModel>[];
      for (var element in result) {
        branchesList.add(element);
      }
      emit(SuccessBranches());
    } else {
      emit(ErrorSearchBranches());
    }
  }
}
