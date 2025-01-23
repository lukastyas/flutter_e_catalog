import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/data/models/responses/catalog_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/catalog_remote_datasource.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';
part 'catalog_bloc.freezed.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CatalogRemoteDatasource _catalogRemoteDatasource;
  List<Catalog> catalogs = [];

  CatalogBloc(this._catalogRemoteDatasource) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const CatalogState.loading());
      final response = await _catalogRemoteDatasource.getCatalogs();
      response.fold(
        (l) => emit(CatalogState.error(l)),
        (r) {
          catalogs = r.data;
          emit(_Success(r.data));
        },
      );
    });

    on<_Search>((event, emit) {
      if (event.catalogName.isEmpty) {
        // If search is empty, show all companies
        emit(_Success(catalogs));
      } else {
        // Filter companies based on the search query
        final filteredCompanies = catalogs.where((catalog) {
          return catalog.nameFile.toLowerCase().contains(event.catalogName.toLowerCase()) || catalog.companyName.toLowerCase().contains(event.catalogName.toLowerCase());
        }).toList();
        emit(CatalogState.success(filteredCompanies));
      }
    });

    on<_Download>((event, emit) async {
      emit(const CatalogState.loading());
      final response = await _catalogRemoteDatasource.downloadFile(event.fileName, event.url);
      response.fold((l) => emit(CatalogState.error(l)), (r) {
        emit(CatalogState.success(r));
      });
    });

    //download multiple files
    // Handle downloading multiple files
    on<_DownloadMultiple>((event, emit) async {
      emit(const CatalogState.loading());
      for (int i = 0; i < event.fileNames.length; i++) {
        final response = await _catalogRemoteDatasource.downloadFile(event.fileNames[i], event.fileUrls[i]);
        response.fold((l) => emit(CatalogState.error(l)), (r) {
          // Optionally handle each successful download
        });
      }
      emit(const CatalogState.multipleDownloadSuccess());
    });
  }
}
