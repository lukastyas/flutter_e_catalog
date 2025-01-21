part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = _Initial;
  const factory CatalogState.loading() = _Loading;
  const factory CatalogState.success(List<CatalogResponseModel> catalogs) = _Success;
  const factory CatalogState.error(String message) = _Error;
  const factory CatalogState.multipleDownloadSuccess() = _MultipleDownloadSuccess;
}
