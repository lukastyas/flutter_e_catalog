part of 'company_bloc.dart';

@freezed
class CompanyEvent with _$CompanyEvent {
  const factory CompanyEvent.started() = _Started;
  const factory CompanyEvent.fetch() = _Fetch;
  const factory CompanyEvent.fetchByFileName(String fileName) = _FetchByFileName;
  //search
  const factory CompanyEvent.search(String companyName) = _Search;
  const factory CompanyEvent.download(String fileName, String url) = _Download;
}
