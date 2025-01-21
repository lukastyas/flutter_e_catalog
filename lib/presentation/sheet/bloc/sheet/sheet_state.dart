part of 'sheet_bloc.dart';

@freezed
class SheetState with _$SheetState {
  const factory SheetState.initial() = _Initial;
  const factory SheetState.loading() = _Loading;
  const factory SheetState.success(List<SheetResponseModel> sheets) = _Success;
  const factory SheetState.error(String message) = _Error;
}
