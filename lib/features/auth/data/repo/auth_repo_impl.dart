import 'package:dartz/dartz.dart';
import 'package:hungry/core/api/api_errors.dart';
import 'package:hungry/core/api/dio_services.dart';
import 'package:hungry/features/auth/data/models/user_model.dart';
import 'package:hungry/features/auth/data/repo/auth_repo.dart';
import 'package:hungry/core/api/constatnt.dart';

class AuthRepoImpl implements AuthRepo {
  final DioService dioService;

  AuthRepoImpl({required this.dioService});

  @override
  Future<Either<Failure, UserModel>> login(String email, String password) async {
    try {
      final response = await dioService.post(
        path: EndPoint.login,
        data: {
          'email': email,
          'password': password,
        },
      );
      return right(UserModel.fromJson(response, password: password));
      
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> register(UserModel user) async {
    try {
       await dioService.post(
        path: EndPoint.register,
        data: {
          'name': user.name,
          'email': user.email,
          'image': user.image,
          'password': user.password,
        },
      );
      return right(null);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}