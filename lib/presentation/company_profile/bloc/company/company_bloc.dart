import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/data/models/responses/company_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/company_profile_remote_datasource.dart';

part 'company_event.dart';
part 'company_state.dart';
part 'company_bloc.freezed.dart';

class CompanyBloc extends Bloc<CompanyEvent, CompanyState> {
  final CompanyProfileRemoteDatasource _companyProfileRemoteDatasource;
  List<CompanyResponseModel> allCompanies = []; // Store all companies data

  CompanyBloc(this._companyProfileRemoteDatasource) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const CompanyState.loading());
      final response =
          await _companyProfileRemoteDatasource.getCompanyProfile();
      response.fold(
        (l) => emit(CompanyState.error(l)),
        (r) {
          allCompanies = r; // Store the fetched data
          emit(CompanyState.success(
              allCompanies)); // Emit all companies initially
        },
      );
    });

    on<_Search>((event, emit) {
      if (event.companyName.isEmpty) {
        // If search is empty, show all companies
        emit(CompanyState.success(allCompanies));
      } else {
        // Filter companies based on the search query
        final filteredCompanies = allCompanies.where((company) {
          return company.companyName
              .toLowerCase()
              .contains(event.companyName.toLowerCase());
        }).toList();
        emit(CompanyState.success(filteredCompanies));
      }
    });

    on<_Download>((event, emit) async {
      emit(const CompanyState.loading());
      final response = await _companyProfileRemoteDatasource.downloadFile(
          event.fileName, event.url);
      response.fold((l) => emit(CompanyState.error(l)), (r) {
        emit(CompanyState.success(r));
      });
    });

    //download multiple files
    // Handle downloading multiple files
    on<_DownloadMultiple>((event, emit) async {
      emit(const CompanyState.loading());
      for (int i = 0; i < event.fileNames.length; i++) {
        final response = await _companyProfileRemoteDatasource.downloadFile(
            event.fileNames[i], event.fileUrls[i]);
        response.fold((l) => emit(CompanyState.error(l)), (r) {
          // Optionally handle each successful download
        });
      }
      emit(const CompanyState.multipleDownloadSuccess());
    });
  }
}
