import 'package:dartz/dartz.dart';
import 'package:hungry/core/api/api_errors.dart';
import 'package:hungry/features/auth/data/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> login(String email, String password);
  Future<Either<Failure, void>> register(UserModel user);
}