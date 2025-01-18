import 'package:bloc/bloc.dart';
import 'package:flutter_e_catalog/data/datasource/auth_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDatasource _authRemoteDataSource;
  LogoutBloc(
    this._authRemoteDataSource,
  ) : super(const _Initial()) {
    on<_Logout>((event, emit) async {
      emit(const LogoutState.loading());
      final result = await _authRemoteDataSource.logout();
      result.fold(
        (l) => emit(LogoutState.error(l)),
        (r) => emit(const LogoutState.success()),
      );
      // final response = await AuthRemoteDatasource().logout();
      // response.fold((l) => emit(_Error(l)), (r) => emit(const _Success()));
    });
  }
}
