import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_e_catalog/data/models/responses/sheet_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/sheet_remote_datasource.dart';

part 'sheet_event.dart';
part 'sheet_state.dart';
part 'sheet_bloc.freezed.dart';

class SheetBloc extends Bloc<SheetEvent, SheetState> {
  final SheetRemoteDatasource _sheetRemoteDatasource;
  List<Sheet> sheets = [];

  SheetBloc(this._sheetRemoteDatasource) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const SheetState.loading());
      final response = await _sheetRemoteDatasource.getSheets();
      response.fold(
        (l) => emit(SheetState.error(l)),
        (r) {
          sheets = r.data;
          emit(_Success(r.data));
        },
      );
    });

    on<_Search>((event, emit) {
      if (event.sheetName.isEmpty) {
        //if search is empty, show all sheets
        emit(SheetState.success(sheets));
      } else {
        //filter sheets base on the search query
        final filteredSheets = sheets.where((sheet) {
          return sheet.nameFile.toLowerCase().contains(event.sheetName.toLowerCase()) || sheet.companyName.toLowerCase().contains(event.sheetName.toLowerCase());
        }).toList();
        emit(SheetState.success(filteredSheets));
      }
    });

    on<_Download>((event, emit) async {
      emit(const SheetState.loading());
      final response = await _sheetRemoteDatasource.downloadFile(event.fileName, event.url);
      response.fold((l) => emit(SheetState.error(l)), (r) {
        emit(SheetState.success(r));
      });
    });
    //Handle downloading multiple files
    on<_DownloadMultiple>((event, emit) async {
      emit(const SheetState.loading());
      for (int i = 0; i < event.fileNames.length; i++) {
        final response = await _sheetRemoteDatasource.downloadFile(event.fileNames[i], event.fileUrls[i]);
        response.fold((l) => emit(SheetState.error(l)), (r) {
          // Optionally handle each successful download
        });
      }
      emit(const SheetState.multipleDownloadSuccess());
    });
  }
}
