part of 'sheet_bloc.dart';

@freezed
class SheetEvent with _$SheetEvent {
  const factory SheetEvent.started() = _Started;
  const factory SheetEvent.fetch() = _Fetch;
  const factory SheetEvent.fetchBySheet(String sheet) = _FetchBySheet;
  //search
  const factory SheetEvent.search(String sheetName) = _Search;
  const factory SheetEvent.download(String fileName, String url) = _Download;
  const factory SheetEvent.downloadMultiple(List<String> fileNames, List<String> fileUrls) = _DownloadMultiple;
}