part of 'login_cubit_cubit.dart';

@immutable
sealed class LoginCubitState {}

final class LoginCubitInitial extends LoginCubitState {}

final class LoginLoading extends LoginCubitState {}

final class LoginSuccess extends LoginCubitState {
  final UserModel userModel;

  LoginSuccess(this.userModel);
}

final class LoginFailure extends LoginCubitState {
  final String errMessage;

  LoginFailure(this.errMessage);
}

