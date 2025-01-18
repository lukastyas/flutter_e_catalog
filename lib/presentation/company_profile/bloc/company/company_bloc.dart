import 'package:bloc/bloc.dart';
import 'package:flutter_e_catalog/data/models/responses/company_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/company_profile_remote_datasource.dart';

part 'company_event.dart';
part 'company_state.dart';
part 'company_bloc.freezed.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final CompanyProfileRemoteDatasource _companyProfileRemoteDatasource;
  CompanyBloc(
    this._companyProfileRemoteDatasource,
  ) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const CompanyState.loading());
      final response =
          await _companyProfileRemoteDatasource.getCompanyProfile();
      response.fold((l) => emit(CompanyState.error(l)), (r) {
        // print('Company Model : $r');
        emit(CompanyState.success(r));
      });
    });

    on<_Download>((event, emit) async {
      emit(const CompanyState.loading());
      final response = await _companyProfileRemoteDatasource.downloadFile(
          event.fileName, event.url);
      response.fold((l) => emit(CompanyState.error(l)), (r) {
        // print('Company Model : $r');
        emit(CompanyState.success(r));
      });
    });
  }
}
