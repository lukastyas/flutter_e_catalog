part of 'company_bloc.dart';

@freezed
class CompanyState with _$CompanyState {
  const factory CompanyState.initial() = _Initial;
  const factory CompanyState.loading() = _Loading;
  const factory CompanyState.success(List<Company> companies) = _Success;
  const factory CompanyState.error(String message) = _Error;
  const factory CompanyState.multipleDownloadSuccess() = _MultipleDownloadSuccess;
}
