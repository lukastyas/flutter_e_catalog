part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.started() = _Started;
  const factory CatalogEvent.fetch() = _Fetch;
  const factory CatalogEvent.fetchByCompany(String company) = _FetchByCompany;
  //search
  const factory CatalogEvent.search(String catalogName) = _Search;
  const factory CatalogEvent.download(String fileName, String url) = _Download;
  const factory CatalogEvent.downloadMultiple(List<String> fileNames, List<String> fileUrls) = _DownloadMultiple;
}