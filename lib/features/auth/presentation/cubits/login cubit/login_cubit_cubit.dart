
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hungry/features/auth/data/models/user_model.dart';
import 'package:hungry/features/auth/data/repo/auth_repo.dart';

part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  LoginCubitCubit({required this.authRepoImpl}) : super(LoginCubitInitial());

  final AuthRepo authRepoImpl;

   Future<void> login(String email, String password) async {
    emit(LoginLoading());
    var result = await authRepoImpl.login(email, password);
    result.fold(
      (failure) => emit(LoginFailure(failure.errMessage)),
      (user) => emit(LoginSuccess(user)),
    );
  }
}
